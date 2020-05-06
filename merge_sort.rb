
def merge_sort(arr)

#One function that takes an array
#divides it into small arrays

  return arr if arr.length <= 1

  half = (arr.length/2).floor
  left_half = merge_sort(arr[0..half-1])
  right_half = merge_sort(arr[half..arr.length])
  mergin(left_half, right_half)

#from half to half until get arrays of one
#compare one array to another and create a new resultant array
#until get a new array as long as the original array

end

def mergin (l,r)
  if l.empty?
    return r
  elsif r.empty?
    return l
  elsif l.first < r.first
    [l.first] + mergin(l[1..l.length], r)
  else 
    [r.first] + mergin(r[1..r.length], l) 
  end

end
a = [3,5,9,4,0,8]
puts merge_sort(a)

