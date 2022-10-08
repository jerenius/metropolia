
input = File.open("7-2a_tiedosto.txt","r")
sisalto = Array.new
input.each {|rivi| sisalto.push(rivi) }
input.close

sisalto.sort!
sisalto.uniq!

puts sisalto

output = File.open("7-2b_tiedosto.txt","w")
output.puts(sisalto)
output.close

