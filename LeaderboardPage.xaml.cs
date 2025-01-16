using System.Collections.ObjectModel;
using ConnectFour.DataAccess;
using ConnectFour.ViewModel;

namespace ConnectFour;

public partial class LeaderboardPage : ContentPage
{
	public ObservableCollection<LeaderboardDbContext.Player> Players { get; set; }
	public LeaderboardPage()
	{
		InitializeComponent();
        LoadLeaderboard();
        BindingContext = new LeaderboardViewModel(new UserRepo(new AppDbContext()));
    }

    private void LoadLeaderboard()
    {
        using (var dbContext = new LeaderboardDbContext())
        {
            var leaderboard = dbContext.Leaderboard.OrderByDescending(p => p.Wins).ThenBy(p => p.Losses).ToList();
            Players = new ObservableCollection<LeaderboardDbContext.Player>(leaderboard);
        }
    }
}