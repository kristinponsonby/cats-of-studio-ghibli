all_cats = GhibliAPI.new.response.each{|cat_hash| Cat.new(cat_hash)}


jiji = Cat.all.first
jiji.add_quote("You'd think they'd never seen a girl and a cat on a broomstick before.")
jiji.add_quote("I think it's better to leave with decorum and great dignity.")
jiji.add_quote("Alright, first: don't panic! Second: don't panic! And third: did I mention not to panic?")

 