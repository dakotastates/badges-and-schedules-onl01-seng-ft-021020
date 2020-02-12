def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each {|x| badges << badge_maker(x)}
  badges
end

def assign_rooms(attendees)
  names = []
  attendees.each_with_index {|name,index| names << "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  names
end

def printer(attendees)
  batch_badge_creator(attendees).each{
    |x| puts x
  }
  assign_rooms(attendees).each{
    |x| puts x
  }
end