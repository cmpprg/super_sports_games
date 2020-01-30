ages = [24, 30, 18, 20, 41]

def standard_deviation(set)
  mean = set.sum / set.length.to_f
  new_set = []
  set.each do |num|
    new_set << (num - mean)**2
  end
  new_mean = new_set.sum / set.length
  Math.sqrt(new_mean).round(2)
end

puts standard_deviation(ages)
