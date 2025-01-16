using System.Collections.ObjectModel;
using System.Windows.Input;
using Microsoft.Maui.Controls;

namespace ConnectFour.ViewModel
{
    public class MainPageViewModel : BaseViewModel
    {
        public ObservableCollection<ObservableCollection<Cell>> GameBoard { get; set; }
        public ICommand DropTokenCommand { get; }

        public MainPageViewModel()
        {
            GameBoard = new ObservableCollection<ObservableCollection<Cell>>();
            InitializeBoard();

            DropTokenCommand = new Command<int>(DropToken);
        }

        private void InitializeBoard()
        {
            for (int row = 0; row < 6; row++)
            {
                var column = new ObservableCollection<Cell>();
                for (int col = 0; col < 7; col++)
                {
                    column.Add(new Cell { ColumnIndex = col });
                }
                GameBoard.Add(column);
            }
        }

        private void DropToken(int columnIndex)
        {
            // Logic to place token in the correct row
        }
    }

    public class Cell
    {
        public string CellColor { get; set; } = "White"; // Default color
        public int ColumnIndex { get; set; }
    }
}