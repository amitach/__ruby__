def show_day(number)
  case number
  when 1 then puts 'Monday'
  when 2 then puts 'Tuesday'
  when 3 then puts 'Wednesday'
  when 4 then puts 'Thursday'
  when 5 then puts 'Friday'
  when 6 then puts 'Satruday'
  when 7 then puts 'Sunday'
  else puts 'Thats not a day!'
  end
end


def show_day_another_way(number)
  case number
  when 1 then puts 'Monday'
  when 2 then puts 'Tuesday'
  when 3 then puts 'Wednesday'
  when 4 then puts 'Thursday'
  when 5 then puts 'Friday'
  when 6,7 then puts 'Hurray! Weekend'
#  when 7 then puts 'Sunday'
  else puts 'Thats not a day!'
  end
end

def show_day_yet_another_way(number)
  case number
  when 1 then puts 'Monday'
  when 2 then puts 'Tuesday'
  when 3 then puts 'Wednesday'
  when 4 then puts 'Thursday'
  when 5 then puts 'Friday'
  when (6..7) then puts 'Hurray! Weekend'
#  when 7 then puts 'Sunday'
  else puts 'Thats not a day!'
  end
end

(1..8).to_a.each{ |number| show_day(number) }
puts '*' * 100
(1..8).to_a.each{ |number| show_day_another_way(number) }
puts '*' * 100
(1..8).to_a.each{ |number| show_day_yet_another_way(number) }
puts '*' * 100

