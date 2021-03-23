all_cats = GhibliAPI.new.response.each{|cat_hash| Cat.new(cat_hash)}


jiji = Cat.all.first
jiji.add_quote("--> You'd think they'd never seen a girl and a cat on a broomstick before.")
jiji.add_quote("--> I think it's better to leave with decorum and great dignity.")
jiji.add_quote("--> Alright, first: don't panic! Second: don't panic! And third: did I mention not to panic?")

renaldo = Cat.all[3]
renaldo.add_quote("--> What? Moo?!? Are you saying that I'm a fat cow?")
renaldo.add_quote("--> I respect a woman who stands up herself.")
renaldo.add_quote("--> No match for my stomach!")

cat_king = Cat.all[4]
cat_king.add_quote("--> That's me, babe.")
cat_king.add_quote("--> Hahahahahaha")

yuki = Cat.all[5]
yuki.add_quote("--> Please, you have no time to lose!")

haru = Cat.all[6]
haru.add_quote("--> Never mind, I'm a meowsy dancer anyway.")
haru.add_quote("--> Mom...do you think cats can talk? ")
haru.add_quote("--> I'll miss you!!!!! Toto! Baron! And FATSO!!!!!!!!!!!!!!!!!!")

baron = Cat.all[7]
baron.add_quote("--> Whenever someone creates something with all of their heart, then that creation is given a soul.")
baron.add_quote("--> If you find yourself troubled by something mysterious or a problem that's hard to solve, there's a place you can go where you always find help. You just need to look for it.
")
baron.add_quote("--> I am Baron Humbert von Gikkingen, and I have come for Haru.")

natori = Cat.all[8]
natori.add_quote("--> Your Majesty! You hit one of our own men, how could you!")
natori.add_quote("--> How can you not remember it your majesty? Even our legends tell of a large white cat devouring all of the fish in our lake.")
