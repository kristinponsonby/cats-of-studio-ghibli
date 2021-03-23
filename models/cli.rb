class CLI
    attr_accessor :Cat

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
        input = @prompt.enum_select("What would you like to do?", ["See all the cats!", "Exit"])
        case input
        when "See all the cats!"
            show_all_cats(Cat.all)
        when "Exit"
            logout
        end
    end


    def show_all_cats(cats)
        input = @prompt.select("Which cat would you like to view?", cats.map{|cat| cat.name})
        cat = Cat.find_by_name(input)
        cat_menu(cat)
    end

    def cat_menu(cat)
       puts "Here's the info on #{cat.name}."
       cat.print_details
       menu
    end 

       #def pet_cat
      # puts "meeeooooww!"
     # end


    def logout
        puts "Thanks for visiting Cats of Studio Ghibli!" 
    end


end




