class Dictionary
  def dic
    @dictionary=Hash.new
    @dictionary={
      "Software" => "is collection of instructions that tell a computer how to work..",
      "Ruby on Rails" => "Ruby on Rails is one of the most popular web development frameworks in any programming language. ",
      "Articulate" => "Having or showing the ability to speak fluently and coherently.",
      "Success" => "The achievement of something desired, planned, or attempted.",
      "Dedication" => "The quality of being dedicated or committed to a task or purpose.",
    }
    puts "\n\n"
    puts @dictionary.sort
    def search(word)
      if @dictionary.key?(word)==true
        k=@dictionary.fetch(word)
        puts "#{word} meaning is #{k}..."
        puts"\n\n"
      else
        puts "Sorry,The Word is not found in the Dictionary list....!\n\n"
      end
    end
    def add(word,meaning)
      @dictionary[word]=meaning
      puts "\n"
      puts @dictionary.sort
      puts "\n\n"
    end
    def remove(word)
      if @dictionary.key?(word)==true
        @dictionary.delete(word)
        puts "Word is deleted from the dictionary list...!"
        puts @dictionary.sort
      else
        puts "Sorry,The Word is not found in the Dictionary list....!\n\n"
      end
    end
    def update(word,meaning)
      if @dictionary.key?(word)==true
        @dictionary[word]=meaning
        puts "Word is updated in the dictionary list...!"
        puts @dictionary.sort
        puts "\n\n"
      else
        puts "Sorry,The Word is not found in the Dictionary list....!\n\n"
      end
    end
    n=0
    while n!=6
      puts "Enter a word from the dictionary..."
      puts "1.View the words that are in the Dictionary... "
      puts "2.Search a word"
      puts "3.Add a word "
      puts "4.Update a word"
      puts "5. Delete a word"
      puts "6.Exit"
      n=gets.to_i
      case n
      when 1
        puts @dictionary.sort
      when 2
        puts"Search a word"
        word=gets.strip
        search(word)
      when 3
        puts "Ente the word to be added...?"
        word=gets.strip
        puts "Enter the meaning of the word#{word}"
        meaning=gets.strip
        add(word,meaning)
      when 4
        puts "Enter the word that to be update...?"
        word=gets.strip
        puts "Enter the meaning of a word #{word}"
        updated_meaning=gets.strip
        update(word,meaning)
      when 5
        puts "Enter the word that to be delete from the dictionary..?"
        word = gets.strip
        remove(word)
      when 6
        puts "Thanks for using my dictionary..!"
      else
        puts "Enter a valid number from the above list.."
      end
    end
    puts n
  end
end
s=Dictionary.new
s.dic
