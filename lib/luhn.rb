module Luhn
  def self.is_valid?(number)
    array = number.to_s.chars.map(&:to_i).reverse    
    i = 1
    b = 0
    array.each do | x |
      c = x
      if i % 2 == 0
        c = x * 2
      end
      if c >= 10
        c = c - 9
      end
      b = b + c
      i = i + 1
      end
      if b % 10 == 0 
        return true
      else 
        return false
      end
      
  end
end