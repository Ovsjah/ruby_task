def finder(target, arr)
  res = []
  arr.each_with_index do |n, i|
    arr[i+1..-1].each_with_index do |nn, ii|
      res << i << ii + 1 if n + nn == target
    end
  end
  res
end

p finder(9, [2, 7, 11, 15])
