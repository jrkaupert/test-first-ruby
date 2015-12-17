def add(n,m)
  n + m
end

def subtract(n,m)
  n - m
end

def sum(arr)
  sum=0
  arr.each {|x| sum+=x}
  return sum
end

def multiply(n, *others)
  product = n
  if others.length == 1
    product = product * others[0]
  else
    others.each do |x|
      product = product * x
    end
  end
  return product  
end

def power(n, m)
  return n**m
end

def factorial(n)
  product = 1
  if n==0 || n==1
    return 1
  else
    until n==1
      product = product * n
      n -= 1
    end
    return product
  end

end