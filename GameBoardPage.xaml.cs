using ConnectFour.DataAccess;

namespace ConnectFour;

public partial class GameBoardPage : ContentPage
{
    private readonly Button[,] _cells = new Button[6, 7];
    private bool _isPlayerOneTurn = true;
    private const int Rows = 6;
    private const int Columns = 7;

    public GameBoardPage()
    {
        InitializeComponent();
        CreateGameboard();
        BindingContext = this;
    }

    private void CreateGameboard()
    {
        GameGrid.Children.Clear();

        for (int row = 0; row < Rows; row++)
        {
            for (int col = 0; col < Columns; col++)
            {
                var button = new Button
                {
                    BackgroundColor = Colors.LightGray,
                    CornerRadius = 50,
                    HeightRequest = 50,
                    WidthRequest = 50,
                    BorderWidth = 1,
                    CommandParameter = col
                };

                button.Clicked += Button_Clicked;

                _cells[row, col] = button;

                GameGrid.SetRow((IView)button, row);
                GameGrid.SetColumn((IView)button, col);
                GameGrid.Children.Add(button);
            }
        }
    }

    private void Button_Clicked(object sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is int col)
        {
            OnCellClicked(col);
        }
    }

    private void OnCellClicked(int col)
    {
        bool piecePlaced = false;

        for (int r = Rows - 1; r >= 0; r--)
        {
            if (_cells[r, col].BackgroundColor == Colors.LightGray)
            {
                _cells[r, col].BackgroundColor = _isPlayerOneTurn ? Colors.Red : Colors.Yellow;
                piecePlaced = true;

                if (CheckWin(r, col))
                {
                    DisplayWinner(_isPlayerOneTurn ? "Player 1" : "Player 2");
                    return;
                }

                _isPlayerOneTurn = !_isPlayerOneTurn;
                break;
            }
        }

        if (!piecePlaced)
        {
            DisplayAlert("Column Full!", "This column is already full. Please choose another column.", "OK");
        }
    }

    private bool CheckWin(int row, int col)
    {
        var currentColor = _cells[row, col].BackgroundColor;

        return CheckDirection(row, col, 1, 0, currentColor) || 
               CheckDirection(row, col, 0, 1, currentColor) || 
               CheckDirection(row, col, 1, 1, currentColor) || 
               CheckDirection(row, col, 1, -1, currentColor);  
    }

    private bool CheckDirection(int row, int col, int rowDir, int colDir, Color color)
    {
        int count = 1;

        count += CountInDirection(row, col, rowDir, colDir, color);
        count += CountInDirection(row, col, -rowDir, -colDir, color);

        return count >= 4;
    }

    private int CountInDirection(int row, int col, int rowDir, int colDir, Color color)
    {
        int count = 0;

        int r = row + rowDir;
        int c = col + colDir;

        while (r >= 0 && r < Rows && c >= 0 && c < Columns && _cells[r, c].BackgroundColor == color)
        {
            count++;
            r += rowDir;
            c += colDir;
        }
        return count;
    }

    private async void DisplayWinner(string winner)
    {
        await DisplayAlert("Game Over", $"{winner} wins!", "OK");
        UpdateScores(winner);
        ResetGame();
    }

    private void UpdateScores(string winner)
    {
        using (var dbContext = new LeaderboardDbContext())
        {
            var player = dbContext.Leaderboard.FirstOrDefault(p => p.PlayerName == winner);
            if (player != null)
            {
                player = new LeaderboardDbContext.Player
                {
                    PlayerName = winner,
                    Wins = 1,
                    Losses = 0,
                    Rank = "Unranked"
                };
                dbContext.Leaderboard.Add(player);
            }
            else
            {
                player.Wins++;
            }

            player.Rank = CalculateRank(player.Wins);
            dbContext.SaveChanges();
        }
    }

    private string CalculateRank(int wins)
    {
        if (wins < 5) return "Bronze";
        if (wins < 10) return "Silver";
        if (wins < 20) return "Gold";
        if (wins < 50) return "Platinum";
        if (wins < 100) return "Master";
        return "Grandmaster";
    }

    private void ResetGame()
    {
        for (int row = 0; row < Rows; row++)
        {
            for (int col = 0; col < Columns; col++)
            {
                _cells[row, col].BackgroundColor = Colors.LightGray;
            }
        }

        _isPlayerOneTurn = true;
    }
}