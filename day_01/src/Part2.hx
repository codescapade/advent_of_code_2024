/**
 * Get the similarity occurrence in the right list.
 * @param lists 
 * @return The similarity multiplier.
 */
function getSimilarity(lists: Array<Array<Int>>): Int {
  // Make dict that hold the count per number in the right list.
  final countMap = new Map<Int, Int>();
  for (num in lists[1]) {
    if (countMap.exists(num)) {
      countMap[num]++;
    } else {
      countMap[num] = 1;
    }
  }

  var similarity = 0;
  for (num in lists[0]) {
    if (countMap.exists(num)) {
      // Multiply the number from the left list by the count of the number in the right list.
      similarity += num * countMap[num];
    }
  }

  return similarity;
}
