class Consecutive
  
  def initialize(string)
    # {PeterPrabu} {2 years 5 months}
     @string = string
  end
  
  def max_consecutive_characters
    # {PeterPrabu} {2 years 5 months}
     @string.scan(/((.)\2*)/).group_by{|s, c| s.length}.max.last.map(&:last).uniq.sort{|a,b| a <=> b}
  end
  
end
