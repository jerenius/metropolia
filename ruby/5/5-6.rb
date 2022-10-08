lista = ["eka","toka"]
#Kirjoitetaan tiedostoon tavaraa:
tiedosto = File.open("tulos.txt","w")
tiedosto.puts("Tämä päätyy tiedostoon.")
tiedosto.puts(31313)
tiedosto.puts(lista)
tiedosto.puts("Viimeinen rivi!")
tiedosto.close