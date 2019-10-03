def recursive_fib(num)
  return num if num < 2
  return recursive_fib(num - 1) + recursive_fib(num - 2)
end

def iterative_fib(num)
  sequence = [0,1]
  if num < 2
    sequence << num
  else
    sequence << sequence[-1] + sequence[-2]
  end
  sequence.last
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end