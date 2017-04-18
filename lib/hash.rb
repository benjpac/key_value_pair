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

# 423
# count digits = 3
# start at first digit
# three
# remove 3
# 12
# twenty
# if > 1
#  get digit = 4 + hundred
# else
#   hundred

class Integer
  def digits
    i.to_s.size
  end
end

class Fixnum
  def hundreds_method(input, number)
    result = []
    tens_complex = input.%(100)
    hundreds = (input.-(tens_complex))/100
    result.push(number.fetch(hundreds) + " " + "hundred" + " ")
    result.push(tens_method(tens_complex,number))
    return result
  end

  def tens_method(input, number)
    result_tens = []
    if (input.>(20)) & (input.%(10) > 0)
      ones = input.%(10)
      tens = input.- (ones)
      result_tens.push(number.fetch(tens) + " ")
      result_tens.push(number.fetch(ones))
    # else
    #   result_tens.push(number.fetch(number))
    end
    result_tens
  end

  def numbers_to_words
    number = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=>"thirty", 40=>"fourty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety", 100=>"hundred", 1000=>"thousand"}

    number_as_word = []
    full_number = ""

    # if self.digits() > 3
    if (self.>1000)
      hundreds_complex = self.%(1000)
      thousands = (self.-(hundreds_complex))/1000
      number_as_word.push(number.fetch(thousands) + " " + "thousand" + " ")
      number_as_word.push(hundreds_method(hundreds_complex, number))
    elsif (self.>100)
      tens_complex = self.%(100)
      hundreds = (self.-(tens_complex))/100
      # ones_in_hundreds = tens_complex.%(10)
      # tens_in_hundreds = tens_complex.- (ones_in_hundreds)
      number_as_word.push(number.fetch(hundreds) + " " + "hundred" + " ")
      number_as_word.push(tens_method(tens_complex, number))
      # number_as_word = hundreds(self)
    elsif (self.>(20)) & (self.%(10) > 0)
      number_as_word = tens_method(self, number)
    else
      number_as_word.push(number.fetch(self))
    end

    # number_as_word.each() do |number|
    #   full_number += number
    # end
    full_number= number_as_word.join("")
    puts(full_number)
    full_number
  end
end
