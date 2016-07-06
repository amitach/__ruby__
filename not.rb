aday = 'Sunday'
bday = 'Monday'
working_overtime = false

if aday == 'Sunday' and bday == 'Monday' and not working_overtime then puts 'Thats right' else puts 'Thats not right' end
#=> Thats right
if aday == 'Sunday' || bday == 'Monday' && !working_overtime then puts 'Thats right' else puts 'Thats not right' end
#=> Thats right
if aday == 'Sunday' and bday == 'Monday' && working_overtime then puts 'Thats right' else puts 'Thats not right' end
#=> Thats not right
