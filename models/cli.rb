class CLI
    attr_reader :cat


    def initialize
        @prompt = TTY::Prompt.new
        welcome
        menu
        GhibliAPI.new.response
    end

    def welcome
        puts "Welcome to Cats of Studio Ghibli."
    end

    def menu
        @character = nil
        input = @prompt.enum_select("What would you like to do?", ["Show me the cats!", "Exit"])
        case input
        when "Show me the cats!"
            show_all_cats(Cat.all)
        when "Exit"
            logout
        end
    end


    def show_all_cats(cats)
        input = @prompt.select("Which cat would you like to view?", cats.map{|cat| cat.name})
        @cat = Cat.find_by_name(input)
        cat_menu(cat)
    end

    def cat_menu(cat)
       puts "Here's the info on #{cat.name}." 
       cat.print_details
       input = @prompt.enum_select("Okay, what now?", ["See Favorite Quotes", "Pet #{cat.name}", "See #{cat.name}'s Details", "Exit"])
        case input
        when "See Favorite Quotes"
           cat.print_quotes
            menu
        when "Pet #{cat.name}"
            cat.pet_cat
            menu
        when "See #{cat.name}'s Details"
            cat.print_details
            menu
        when "See all cats"
            show_all_cats(Cat.all)
        when "Exit"
            logout
        end
    
    end 


    def logout
        puts "Thanks for Visiting Cats of Studio Ghibli! =^..^="
    end


end




