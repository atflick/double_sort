require "pry"

test1 = ["sugar", "butter", "egg"]
# ["butter", "egg", "sugar]

test2 = ["12", "10", "3", "4", "1"]
# ["1", "3", "4", "10", "12"]

test3 = ["16", "8", "4", "salt", "baking", "soda"]
# ["4", "8", "16", "baking", "salt", "soda"]

test4 = ["2", "4", "banana", "1", "vanilla", "flour"]
# ["1", "2", "banana", "4", "flour", "vanilla"]

test5 = [ 'toblerone', '8', '1', '18', 'chocobo', 'zelda', '9000', 'florida', 'stark', 'apple', 'bart', '7', '16', '100' ]

$sortedNums = []
$sortedStrs = []
$finalArr = []

def sortArr(arr)
  arr.each do |i|
    if !!(i =~ /\A[-+]?[0-9]+\z/)
      $sortedNums.push(i.to_i)
    else
      $sortedStrs.push(i)
    end
  end
  $sortedNums.sort!
  $sortedStrs.sort!
  buildNewArr(arr,$sortedNums,$sortedStrs)
end

def buildNewArr(arr,nums,strs)
  for i in 0..arr.length
    if !!(arr[i] =~ /\A[-+]?[0-9]+\z/)
      $finalArr.push(nums.shift.to_s)
    else
      $finalArr.push(strs.shift)
    end
  end
  puts $finalArr
end

puts sortArr(test5)


binding.pry
