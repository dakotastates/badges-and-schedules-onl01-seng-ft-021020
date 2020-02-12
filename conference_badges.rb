def batch_badge_creator(attendees)
  badges = []
  attendees.each {|x| badges << "Hello, my name is #{x}."}
  badges
end

def assign_rooms(attendees)
  names = []
  attendees.each_with_index {|name,index| names << "Hello, #{name}! You'll be assigned to room #{index + 1}"}
  names
end

def printer(attendees)
  batch_badge_creator(attendees).zip(assign_rooms(attendees)).each do |attendee, room|
    puts attendee.concat(" ").concat(room)
  end
end