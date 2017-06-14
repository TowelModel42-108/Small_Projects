
#Methods
def intro
  puts "Welcome to The Game"
  puts "Your Goal is not to think about The Game."
  puts "The Game only accepts \"Yes\" and \"No\" as responses."
  puts "Ready?"
end

def unprepared
  puts "Seeing as you are not ready, got outside and stretch your arms out to praise the sun. Come back when you are ready."
  exit
end

def thought
  puts "Focus on your goal. Don't think about The Game."
  puts "Lay back and think of the blues in the sky."
  puts "Are you thinking about The Game?"
end

def void
  puts "I see that your mind is blue."
  puts "Tell me of a song that made you forget about the blisters under the soles of your tired feet."
song = gets.chomp
  puts "Remember the sound of #{song} and how its boon heals those old wounds. Live and let live."
end

def okay
  puts "You seem to be doing fine. Do you think you're okay?"
  mood = gets.chomp.downcase
    if mood == "yes"
      puts "Leave, and don't come back."
      exit
    elsif mood == "no"
      void
  end
end

#Game Sequence
intro

case gets.chomp.downcase
when "yes"
    thought
    losing = gets.chomp.downcase
  when "no"
    unprepared
end

if losing == "yes"
  void
thinking = gets.chomp.downcase
elsif losing == "no"
  okay
end

if thinking == "yes" && losing == "yes"
  puts "You may never be ready for what will come to you, but you must move forward. For now, let the sound of #{song} propel you to new heights."
elsif thinking == "no"
  okay
end
