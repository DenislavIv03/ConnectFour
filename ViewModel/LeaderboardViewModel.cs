using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConnectFour.DataAccess;
using ConnectFour.Models;

namespace ConnectFour.ViewModel
{
    public class LeaderboardViewModel : BaseViewModel
    {
        private readonly IUserRepo _userRepo;
        public ObservableCollection<Score> Leaderboard { get; set; }

        public LeaderboardViewModel(IUserRepo userRepo)
        {
            _userRepo = userRepo;
            Leaderboard = new ObservableCollection<Score>();

            LoadLeaderboard();
        }

        private void LoadLeaderboard()
        {
            var scores = _userRepo.GetLeaderboard();
            foreach (var score in scores)
            {
                Leaderboard.Add(score);
            }
        }
    }
}
