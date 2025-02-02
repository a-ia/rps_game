#include "game.hpp"
#include <iostream>
#include <filesystem>
#include <iomanip>

bool RPSGame::isValidUsername(const std::string& username) {
    return username.length() >= 8;
}

RPSGame::Choice RPSGame::getComputerChoice() {
    std::uniform_int_distribution<> dis(0, 2);
    return static_cast<Choice>(dis(gen));
}

RPSGame::Choice RPSGame::getUserChoice() {
    while (true) {
        std::cout << "\nEnter your choice (R)ock, (P)aper, or (S)cissors: ";
        char choice;
        std::cin >> choice;
        choice = std::toupper(choice);

        switch (choice) {
            case 'R': return Choice::ROCK;
            case 'P': return Choice::PAPER;
            case 'S': return Choice::SCISSORS;
            default:
                std::cout << "Invalid choice. Please try again.\n";
        }
    }
}

void RPSGame::leaderboardDirectory() {
    if (!std::filesystem::exists(leaderboardPath)) {
        std::filesystem::create_directory(leaderboardPath);
    }
}

void RPSGame::saveGameData() {
    auto filepath = leaderboardPath / (currentPlayer.username + ".txt");
    std::ofstream file(filepath);

    if (file.is_open()) {
        currentPlayer.calculateScore();
        file << currentPlayer.username << "\n"
             << currentPlayer.wins << "\n"
             << currentPlayer.losses << "\n"
             << currentPlayer.ties << "\n"
             << currentPlayer.score;
        file.close();
    }
}

void RPSGame::loadGameData() {
    auto filepath = leaderboardPath / (currentPlayer.username + ".txt");
    std::ifstream file(filepath);

    if (file.is_open()) {
        std::string username;
        std::getline(file, username);
        file >> currentPlayer.wins
             >> currentPlayer.losses
             >> currentPlayer.ties
             >> currentPlayer.score;
        file.close();

        std::cout << "\nWelcome back, " << currentPlayer.username << "!\n";
        std::cout << "Previous stats: Wins: " << currentPlayer.wins
                  << ", Losses: " << currentPlayer.losses
                  << ", Ties: " << currentPlayer.ties
                  << ", Score: " << currentPlayer.score << "\n";
    }
}

std::vector<PlayerStats> RPSGame::loadAllPlayerStats() {
    std::vector<PlayerStats> allStats;

    if (!std::filesystem::exists(leaderboardPath)) {
        return allStats;
    }

    for (const auto& entry : std::filesystem::directory_iterator(leaderboardPath)) {
        if (entry.path().extension() == ".txt") {
            std::ifstream file(entry.path());
            if (file.is_open()) {
                PlayerStats stats;
                std::getline(file, stats.username);
                file >> stats.wins >> stats.losses >> stats.ties >> stats.score;
                allStats.push_back(stats);
                file.close();
            }
        }
    }

    return allStats;
}

void RPSGame::showRankings() {
    auto allStats = loadAllPlayerStats();

    std::sort(allStats.begin(), allStats.end(),
              [](const PlayerStats& a, const PlayerStats& b) {
                  return a.score > b.score;
              });

    std::cout << "\n=== RANKINGS ===\n";
    std::cout << std::setw(20) << "Username" << std::setw(10) << "Score"
              << std::setw(10) << "Wins" << std::setw(10) << "Ties" << "\n";
    std::cout << std::string(50, '-') << "\n";

    for (const auto& stats : allStats) {
        std::cout << std::setw(20) << stats.username
                  << std::setw(10) << stats.score
                  << std::setw(10) << stats.wins
                  << std::setw(10) << stats.ties << "\n";
    }
}

void RPSGame::start() {
    std::cout << "Welcome to Rock Paper Scissors!\n\n";

    do {
        std::cout << "Enter your username (minimum 8 characters): ";
        std::cin >> currentPlayer.username;
    } while (!isValidUsername(currentPlayer.username));

    loadGameData();

    bool quit = false;
    while (!quit) {
        std::cout << "\n1. Play game\n2. Show rankings\n3. Quit\nChoice: ";
        char menuChoice;
        std::cin >> menuChoice;

        switch (menuChoice) {
            case '1': {
                // Game loop
                char playAgain;
                do {
                    Choice computerChoice = getComputerChoice();
                    Choice userChoice = getUserChoice();

                    // Convert choices to strings for display
                    const std::string choices[] = {"Rock", "Paper", "Scissors"};
                    std::cout << "\nYour choice: " << choices[static_cast<int>(userChoice)]
                             << "\nComputer's choice: " << choices[static_cast<int>(computerChoice)] << "\n";

                    // Determine winner
                    if (userChoice == computerChoice) {
                        std::cout << "It's a tie!\n";
                        currentPlayer.ties++;
                    } else if ((userChoice == Choice::ROCK && computerChoice == Choice::SCISSORS) ||
                              (userChoice == Choice::PAPER && computerChoice == Choice::ROCK) ||
                              (userChoice == Choice::SCISSORS && computerChoice == Choice::PAPER)) {
                        std::cout << "You win!\n";
                        currentPlayer.wins++;
                    } else {
                        std::cout << "Computer wins!\n";
                        currentPlayer.losses++;
                    }

                    currentPlayer.calculateScore();
                    std::cout << "\nCurrent Score - Wins: " << currentPlayer.wins
                             << ", Losses: " << currentPlayer.losses
                             << ", Ties: " << currentPlayer.ties
                             << ", Total Score: " << currentPlayer.score << "\n";

                    std::cout << "\nPlay again? (Y/N): ";
                    std::cin >> playAgain;
                    playAgain = std::toupper(playAgain);

                } while (playAgain == 'Y');
                break;
            }
            case '2':
                showRankings();
                break;
            case '3':
                quit = true;
                break;
            default:
                std::cout << "Invalid choice. Please try again.\n";
        }
    }

    saveGameData();
    std::cout << "\nThanks for playing! Final score saved.\n";
}
