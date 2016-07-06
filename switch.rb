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

(1..8).to_a.each{ |number| show_day(number) }

