class CLI

    def start
        puts ""
        puts "Welcome to my TV Show app!"
        puts ""
        puts "Please select a number that is associated with a tv show from the list below"
        new_response = API.get_Tv_Shows
        Tv_Shows.new_tvshows(new_response)
       # binding.pry
        display_Tv_info
        user_selection 
        loop_or_exit
    end
    
    def display_Tv_info
        Tv_Shows.all.each.with_index(1) do |tv_show, index|
            puts "#{index}. #{tv_show.name}"
        end
    end
    def user_selection
        puts ""
        puts "choose a number!"
        input = gets.chomp.to_i
        if input.between?(1,77)
            index = input - 1
            user_choice = Tv_Shows.all[index]
            puts "#{index}: #{user_choice.name}
            Genre: #{user_choice.genres}
            Language: #{user_choice.language}
           Summary: #{user_choice.summary}
           Season: #{user_choice.season}
           Episode Number: #{user_choice.episode_number}
           Airdate: #{user_choice.airdate}
           Airtime: #{user_choice.airtime}
           Schedule: #{user_choice.schedule}"
        else
            invalid_choice
        end
    end

    def invalid_choice
        puts "Sorry but thats number doesn't exist"
    end
    def loop_or_exit
        puts "Would you like to see another show? (y/n)"
        imput = gets.chomp.downcase
        if imput == "y"
            start
        else
            puts ""
            puts "Enjoy your show"
            exit
        end
    end
  end
 
