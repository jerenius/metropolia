luettu = ""
tiedosto = File.open("tiedosto.txt","r")
tiedosto.each {|data| luettu << data }
tiedosto.close