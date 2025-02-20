// Given an integer array nums, return true if any value appears at least twice in the array,
// and return false if every element is distinct.
void main() {
  List<int> ages = [10, 15, 20, 21, 25, 20];
  print(containsDuplicate(ages));
}

bool containsDuplicate(List<int> nums) {
  Set<int> uniqueValues = {} ;
  for(int element in nums){
    if(uniqueValues.contains(element))
    return true ;
    uniqueValues.add(element);
  }
  return false ;
}