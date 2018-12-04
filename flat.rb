def flat(arr, res=[])
  return arr unless arr.is_a?(Array) 
  until arr.empty?
    num = flat(arr.shift, res)
    res << num unless num.is_a?(Array)
  end
  res
end

p flat([[1, 2, [3], [4, 5]], 6, [7, 8, [9, 10]]])
