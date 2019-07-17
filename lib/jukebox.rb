require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each do |song| 
    if song.include?(user_input)
      puts "Playing #{song}"
    end
  end
  if !songs.include?(user_input)
    puts "Invalid input, please try again"
  end 
end

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run_with_commands
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input == "exit"
    exit_jukebox
  end
end






