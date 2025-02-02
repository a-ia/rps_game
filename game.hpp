#include <string>
#include <random>
#include <fstream>
#include <vector>
#include <algorithm>
#include <filesystem>
 
struct PlayerStats {
    std::string username;
    int wins = 0;
    int losses = 0;
    int ties = 0;
    int score = 0;  // 3 points per win, 1 point per tie

    void calculateScore() {
        score = (wins * 3) + ties;
    }
};

class RPSGame {
private:
    PlayerStats currentPlayer;
    std::random_device rd;
    std::mt19937 gen;
    const std::filesystem::path leaderboardPath{"../leaderboard"};

    const std::string TITLE_ASCII = R"(
 _______    _______    _______        ______           
(  ____ )  (  ____ )  (  ____ \      (  ___ \ |\     /|
| (    )|  | (    )|  | (    \/      | (   ) )( \   / )
| (____)|  | (____)|  | (_____       | (__/ /  \ (_) / 
|     __)  |  _____)  (_____  )      |  __ (    \   /  
| (\ (     | (              ) |      | (  \ \    ) (   
| ) \ \__  | )        /\____) |      | )___) )   | |   
|/   \__/  |/         \_______)      |/ \___/    \_/   
                                                       
 _______           _______  _______  _______  _        
(  ____ \|\     /|(  ___  )(  ____ )(  ___  )( (    /| 
| (    \/| )   ( || (   ) || (    )|| (   ) ||  \  ( | 
| (_____ | (___) || (___) || (____)|| |   | ||   \ | | 
(_____  )|  ___  ||  ___  ||     __)| |   | || (\ \) | 
      ) || (   ) || (   ) || (\ (   | |   | || | \   | 
/\____) || )   ( || )   ( || ) \ \__| (___) || )  \  | 
\_______)|/     \||/     \||/   \__/(_______)|/    )_)
  )";

    enum class Choice {
        ROCK,
        PAPER,
        SCISSORS
    };

    void displayTitle();
    Choice getComputerChoice();
    Choice getUserChoice();
    void saveGameData();
    void loadGameData();
    bool isValidUsername(const std::string& username);
    void updateRankings();
    std::vector<PlayerStats> loadAllPlayerStats();
    void leaderboardDirectory();

public:
    RPSGame() : gen(rd()) {
        leaderboardDirectory();
    }
    void start();
    void showRankings();
};
