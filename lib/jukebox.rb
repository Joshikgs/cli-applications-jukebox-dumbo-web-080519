require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

# def play
  
# end

def list(song_list)
  index = 0
  number = 1
  until index == song_list.length
    puts "#{number}. #{song_list[index]}"
    index += 1
    number += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end