class CLI

    def start
        puts "Welcome to my TV Show app!"
        puts "Please select a tv show from the list below"
        input = gets.chomp
        API.get_Tv_Shows(input)
    end
end