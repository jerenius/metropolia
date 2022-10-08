#Määrätään että toistoa jatketaan toistaiseksi
toista = true

while toista
    puts "Kirjoita jotain: "
    luettu = gets
    
  #jos käyttäjä kirjoittaa lopeta... 
  if luettu.chop! == "lopeta"
  #...niin ilmoitetaan toiston katkeavan tähän kierrokseen    
    toista = false
  else
   puts "Kirjoitit #{luettu}"
   
  end
end