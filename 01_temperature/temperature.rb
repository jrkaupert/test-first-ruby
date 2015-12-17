
def ftoc(temp)
  temp.to_f
  5.0/9.0 * (temp -32)
end

def ctof(temp)
  temp.to_f
  9.0/5.0 *temp + 32
end