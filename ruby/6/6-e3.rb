uusi = "*****"

sensorf = File.open("6-3a_tiedosto.txt","r")
sensora = Array.new
sensorf.each {|rivis| sensora.push(rivis)}
sensorf.close
 


tekstif = File.open("6-3c_tiedosto.txt","r")
tekstia = Array.new
tekstif.each {|rivia| tekstia.push(rivia)}
tekstif.close



#outfile = File.open("6-3b_tiedosto.txt","w")

#puts tekstia.length
for rivi in tekstia do
    
    for sana in sensora do
        puts sana
        #rivi = rivi.gsub(sana,uusi)
    end
    puts "-"
   #puts rivi
end

#outfile.puts(rivi)

#puts "Tallennetaan siistitty versio..."
#outfile.close
#puts "Valmis! Lopetetaan."
