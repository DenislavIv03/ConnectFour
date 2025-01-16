using ConnectFour.ViewModel;

namespace ConnectFour
{
    public partial class MainPage : ContentPage
    {

        public MainPage()
        {
            InitializeComponent();
            BindingContext = new MainPageViewModel();
        }

        private async void OnPlayButtonClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync(nameof(GameBoardPage));
        }

        private async void OnLeaderboardClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync(nameof(LeaderboardPage));
        }
    }

}
