// Given an array of integers nums and an integer target,
// return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution,
// and you may not use the same element twice.
void main() {
  List<int> nums = [1, 2, 5, 7, 10, 12, 15];
  int target = 9;
  twoSum(nums, target);
}

void twoSum (List<int> nums, int target) {
  nums.sort();
  for (int i = 0; nums[i] < target; i++) {
    int firstNumber = nums[i];
    int secondNumber = nums[i+1];
    bool equalTarget = ((firstNumber + secondNumber) == target);
    print(equalTarget);
    // if (equalTarget) {
    //   print(firstNumber);
    //   print(secondNumber);
    // }
  }
}

// Step 1: ignore all numbers equal or greater than target.
// Step 2: add the first number to the next,
// and if it equal to target return these two numbers.