def fib(n, result = [0,1])
  for i in 2..n
    result << result[i-1] + result[i-2]
  end
  result
end

def fib_rec(n)
  return [0,1] if n < 2
  arr = fib_rec(n-1)
  arr << arr[-2] + arr[-1]
end

p fib(5)
p fib_rec(5)