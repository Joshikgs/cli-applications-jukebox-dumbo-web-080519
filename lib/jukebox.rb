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
  count = 0
  song_list.each do |song|
    puts "#{song_list[count]}"
    count += 1
  end
  
end

def exit_jukebox
  puts "Goodbye"
end