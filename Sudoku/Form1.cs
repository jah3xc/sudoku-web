using System;
using System.Diagnostics;

namespace CS4750HW6
{
    public partial class Form1
    {
        /***************ATTRIBUTES***************/
        //Fields
        
        public int[,] puzzle1 = {
            { 0, 0, 4, 0, 6, 0, 8, 1, 0 },
            { 0, 0, 6, 0, 0, 0, 0, 0, 0 },
            { 1, 5, 0, 0, 0, 0, 0, 0, 9 },
            { 0, 0, 0, 1, 8, 0, 0, 3, 0 },
            { 0, 0, 0, 0, 0, 9, 4, 2, 0 },
            { 2, 6, 5, 4, 0, 0, 9, 0, 0 },
            { 0, 0, 0, 0, 1, 5, 0, 0, 3 },
            { 0, 3, 0, 0, 4, 0, 5, 0, 0 },
            { 0, 0, 0, 0, 3, 8, 0, 0, 0 } };
        public int[,] puzzle = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 } };
        public int[,] puzzle2 = {
            { 0, 0, 1, 2, 0, 5, 0, 0, 0 },
            { 0, 0, 0, 0, 4, 0, 0, 6, 0 },
            { 5, 2, 9, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 6, 1, 0 },
            { 1, 0, 0, 3, 0, 0, 0, 0, 7 },
            { 0, 4, 0, 0, 0, 7, 3, 0, 0 },
            { 0, 0, 2, 0, 7, 0, 0, 0, 0 },
            { 0, 3, 0, 0, 0, 0, 0, 0, 5 },
            { 0, 0, 6, 0, 0, 1, 0, 0, 0 } };
        public int[,] puzzle3 = {
            { 6, 0, 0, 3, 0, 0, 0, 0, 1 },
            { 7, 2, 9, 0, 0, 0, 0, 0, 0 },
            { 0, 5, 0, 0, 0, 0, 8, 0, 6 },
            { 0, 0, 5, 0, 0, 4, 6, 0, 0 },
            { 0, 0, 6, 8, 0, 7, 0, 0, 5 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 2, 9, 8, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 9, 1, 7 },
            { 0, 0, 0, 0, 1, 0, 0, 0, 0 } };

        //Properties
        int[,] Puzzle1
        {
            get
            {
                return puzzle1;
            } //End get
        } //End int[,] Puzzle1
        int[,] Puzzle2
        {
            get
            {
                return puzzle2;
            } //End get
        } //End int[,] Puzzle2
        int[,] Puzzle3
        {
            get
            {
                return puzzle3;
            } //End get
        } //End int[,] Puzzle3
        private bool Puzzle1Started { get; set; }
        private bool Puzzle2Started { get; set; }
        private bool Puzzle3Started { get; set; }
        private GameBoard Board1 { get; set; }
        private GameBoard Board2 { get; set; }
        private GameBoard Board3 { get; set; }

       
    } //End public partial class Form1 : Form
} //End namespace CS4750HW6
