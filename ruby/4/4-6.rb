for i in 0..10
    if i == 5
      puts "5!"
      redo
    end
    puts "#{i}!"
  end