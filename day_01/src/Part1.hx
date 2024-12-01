import Utils.sortList;

/**
 * Sort left and right and calculate the distance between pairs.
 * @param lists 
 * @return The distance.
 */
function getDistance(lists: Array<Array<Int>>): Int {
  lists[0].sort(sortList);
  lists[1].sort(sortList);

  var distance = 0;
  for (i in 0...lists[0].length) {
    distance += Std.int(Math.abs(lists[0][i] - lists[1][i]));
  }

  return distance;
}
