def merge(b,c,a)
  a_index = 0
  b_index = 0
  c_index = 0
  while b_index < b.length && c_index < c.length
    if b[b_index] <= c[c_index]
      a[a_index] = b[b_index]
      b_index += 1
    else
      a[a_index] = c[c_index]
      c_index += 1
    end
    a_index += 1
  end
  if b_index == b.length
      a[-c.length+c_index..a.length] = (c[c_index..c.length])
      a
  else
      a[-b.length+b_index..a.length] = (b[b_index..b.length])
      a
  end

end

def merge_sort(arr)
  if arr.length > 1
    b = arr[0...arr.length/2] 
    c = arr[arr.length/2..arr.length]
    merge_sort(b)
    merge_sort(c)
    merge(b,c,arr)
  end
end

random_array = []

for i in 0..100
  random_array[i] = rand 1000
end

p merge_sort(random_array)