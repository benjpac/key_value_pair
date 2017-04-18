class String
  define_method(:get_scrabble_score) do
    all_letters = [["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"], ["D", "G"], ["B", "C", "M", "P"], ["F", "H", "V", "W", "Y"], ["K"], ["J", "X"], ["Q", "Z"]]
    scores = Hash.new()
    all_letters.length().times() do |time|
      current = all_letters[time]
      count = time.+(1)
      current.each() do |letter|
        if count.==(6)
          count = 8
        end
        if count.==(7)
          count = 10
        end
        scores.store(letter, count)
      end
    end

    total = 0
    word_array = self.split("")
    word_array.each() do |letter|
      total += scores.fetch(letter.upcase())
    end
    total
  end
end



class Fixnum
  define_method(:numbers_to_words) do
    number = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=>"thirty", 40=>"fourty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety", 100=>"hundred"}

    if (self>20) do
      second_digit = self.%(10)
      first_digit = self.-(second_digit)
      number.fetch(first_digit)
      number.fetch(second_digit)

    else number.fetch(self)
    end
  end  
end
