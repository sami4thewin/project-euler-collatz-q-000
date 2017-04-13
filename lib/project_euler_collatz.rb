def even_next(n)
  n / 2
end

def odd_next(n)
  3 * n + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  array = [n]
  x = n
  until x == 1
    array << next_value(x)
    x = next_value(x)
  end
  array
end

def longest_collatz
  x = 0
  y = 0
  (800000..1000000).to_a.each do |num|
    if collatz(num).length > y
      y = collatz(num).length
      x = num
    end
  end
  x
end
