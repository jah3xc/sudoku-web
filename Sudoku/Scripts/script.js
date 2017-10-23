app = angular.module("Sudoku", []);

app.controller("CustomPuzzle", function () {
    this.SIZE = 9;
    this.puzzle = []

    for (var i = 0; i < this.SIZE; i++) {
        var arr = [];
        for (var j = 0; j < this.SIZE; j++) {
            arr.push(-1)
        }
        this.puzzle.push(arr)
    }
})