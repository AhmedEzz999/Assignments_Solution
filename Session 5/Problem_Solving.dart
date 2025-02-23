// Given an array of integers nums and an integer target,
// return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution,
// and you may not use the same element twice.
void main() {
  List<int> nums = [1, 2, 5, 7, 10, 12, 15];
  int target = 9;
  print(twoSum(nums, target));
}

List<int> twoSum(List<int> nums, int target) {
  List<int> result = [];

  for(int i = 0; i < nums.length; i++){
    for(int j = 0; j < nums.length; j++){
      if(i != j){
        if(nums[i] + nums[j] == target){
          result.addAll([i, j]);
          break;
        }
      }
    }
    if(result.isNotEmpty){
      break;
    }
  }
  return result;
}