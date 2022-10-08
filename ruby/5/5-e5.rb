t_adj = File.open("5-5a_tiedosto.txt","r")
adj = Array.new
t_adj.each {|rivi| adj.push(rivi)}
t_adj.close
randadj = adj[rand(adj.length)]
randadj.chomp!

t_subst = File.open("5-5b_tiedosto.txt","r")
subst = Array.new
t_subst.each {|rivi| subst.push(rivi)}
t_subst.close
randsubst = subst[rand(subst.length)]
randsubst.chomp!

t_tyyppi = File.open("5-5c_tiedosto.txt","r")
tyyppi = Array.new
t_tyyppi.each {|rivi| tyyppi.push(rivi)}
t_tyyppi.close
randtyyppi = tyyppi[rand(tyyppi.length)]
randtyyppi.chomp!

puts "Uuden jutun nimi voisi olla vaikkapa seuraava:"
puts randadj + " " + randsubst + " " + randtyyppi

