class CLI

    def initialize
        @prompt = TTY::Prompt.new
        welcome
       # GhibliAPI.new
    end

    def welcome
        puts "Welcome to Cats of Studio Ghibli."
    end

    def menu
        input = @prompt.enum_select("What would you like to do?", ["See all the cats!", "Exit"])
        case input
        when 1 
            show_all_cats
        when 2
            exit
        end
    end


    #def show_all_cats(cats)
     #   input = @prompt.select("Which cat would you like to view?", cats.map{|cat| cat.name}
      #  Cats.find_by_name(input)
   # end

    #def cat_menu(cat)

     #   cat.print_details
    #end


    #def exit
        #puts "Thanks for visting!" 
    #end

    #def pet_cat
      #  puts "meeeooooww!"
  #  end


end




