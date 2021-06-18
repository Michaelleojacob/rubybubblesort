#! this is actually not a fail. it successfully put 78 at the end.
def bubble_sort (*nums)
    nums = nums[0]
    nums.each_with_index.map do |i, index|
        unless nums[index + 1] == nil
            nums[index] > nums[index + 1] ? (nums[index], nums[index+1] = nums[index+1], nums[index]) : nums
        end
    end
    nums.compact
    nums
end

# bubble_sort([4,3])
# p bubble_sort([4,3])
p bubble_sort([4,3,78,2,0,2])

# 3 4
# 3 78
# 78 2
# 3 4 2 78 0 2
# 78 0
# 3 4 2 0 78 2
# 78 2
# 3 4 2 0 2 78