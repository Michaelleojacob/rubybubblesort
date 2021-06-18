#not mine, I can read it.
#I don't feel comfortable doing for in yet
#this solution is amazing though.

def bubble_sort(arr)
    for i in 0...arr.length
    sorted = true

#right here we are establishing that we will loop
#remove 1 from length
#also remove however many iterations we are on from length
#ex i = 0, length - 0 - 1, || i = 2, length - 2 - 1
#genius solution.
    for k in 0...(arr.length - i - 1)
#this is the logic that is similar to my code,
#if conditional runs, then sorted = false. // else sorted = true,
#sorted = true #=> app processed successfully.
        if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        sorted = false
        end
    end
    break if sorted
    end
    arr
end

data = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]

p bubble_sort(data)
# => [0, 1, 2, 2, 2, 5, 6, 6, 8, 8, 9, 10]