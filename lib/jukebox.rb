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
  user_input = gets.chomp()
  
  if (1..9).to_a.index(user_input.to_i) != nil
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.index(user_input) != nil
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end



def run(my_songs)
  help()
  input = prompt()
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt()
    elsif input == "play"
      play(my_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end
  
  exit_jukebox()
end






