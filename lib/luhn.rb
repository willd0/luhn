module Luhn
  def self.is_valid?(number)
    array = number.to_s.chars.map(&:to_i).reverse    
    i = 1
    value_sum = 0
    array.each do | value |
      new_number = value
      if i % 2 == 0
        new_number = value * 2
      end
      if new_number >= 10
        new_number = new_number - 9
      end
      value_sum = value_sum + new_number
      i = i + 1
      end
      if value_sum % 10 == 0 
        return true
      else 
        return false
      end 
  end
end