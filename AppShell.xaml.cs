namespace ConnectFour
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(GameBoardPage), typeof(GameBoardPage));
            Routing.RegisterRoute(nameof(LeaderboardPage), typeof(LeaderboardPage));
        }
    }
}
