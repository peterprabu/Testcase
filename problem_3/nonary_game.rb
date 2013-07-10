class NonaryGame

  def initialize
    # {PeterPrabu} {2 years 5 months}
     @arr = [1,2,3,4,5,6,7,8]
  end
  
  def valid_groups
    # {PeterPrabu} {2 years 5 months}
     elements_btw = 3.upto(5).flat_map { |n| @arr.combination(n).to_a } # Contain between 3 and 5 elements
     result = []
     elements_btw.each do |e|
     root_value = e.inject(:+)
       if ((1+((root_value-1)%9)) == 9) # Have a digital root of 9
     	 result << e if e.include?(5) # Contain the number 5
       end
     end
     return result
  end

end
