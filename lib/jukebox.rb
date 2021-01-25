# Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end 

def list(songs)
    songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    if songs.include?(input)
        puts "Playing #{songs.find{|song| song == input}}"
    elsif input.to_i > 0 && input.to_i <= songs.length
        puts "Playing #{songs[input.to_i - 1]}"
    else 
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    input = gets.strip
    while input != "exit" do 
        if input == "help"
            help
            puts "Please enter a command"
            input = gets.strip
        elsif input == "list"
            list(songs)
            puts "Please enter a command"
            input = gets.strip
        elsif input == "play"
            play(songs)
            puts "Please enter a command"
            input = gets.strip
        else
            puts "Invalid command"
            puts "Please enter a command"
            input = gets.strip
        end   
    end
    exit_jukebox
end 


        





    
    