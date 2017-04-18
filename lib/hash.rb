class String
  define_method(:get_scrabble_score) do
    all_values = [["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"], ["D", "G"], ["B", "C", "M", "P"], ["F", "H", "V", "W", "Y"], ["K"], ["J", "X"], ["Q", "Z"]]
    scores = Hash.new()
    all_values.length().times() do |time|
      current = all_values[time]
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
