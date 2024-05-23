class Main {
	static function main() {
		var map = [
			[1, 2, 3],
			[4, 5, 6],
			[7, 8, 9]
		];

		var width = 3;
		var height = 3;


		///Get All indexes from 2D Array
		for (y in 0...height) { //Row
			for (x in 0...width) { //Column
				var i = getIndexFrom2DArray(y, x, width);

				trace(i); ///1, 2, 3, 4, 5 ....
			}
		}
	}

	/**
		Returns Index number for 1D Array. Converts the `row` and `col` position
		into a single index to get the same position by 1 Number Index!
	**/
	static function getIndexFrom2DArray(row:Int, col:Int, numCols:Int):Int {
        return row * numCols + col;
    }

	/**
		Returns position for 2D Array. Converts the index number into
		a row and columns position to get the same position with 2 attributes
	**/
	static function getPosFrom2DArray(index:Int, numCols:Int):{row:Int, col:Int} {
        var row = Std.int(index / numCols);
        var col = Std.int(index % numCols);

        return { row: row, col: col };
    }
}
