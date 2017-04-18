require('rspec')
require('hash')

describe('String#get_scrabble_score') do
  it("returns scrabble score for O ") do
    expect("o".get_scrabble_score()).to eq(1)
  end
  it("returns scrabble score for D ") do
    expect("d".get_scrabble_score()).to eq(2)
  end
  it("returns scrabble score for D ") do
    expect("m".get_scrabble_score()).to eq(3)
  end
  it("returns scrabble score for D ") do
    expect("w".get_scrabble_score()).to eq(4)
  end
  it("returns scrabble score for D ") do
    expect("k".get_scrabble_score()).to eq(5)
  end
  it("returns scrabble score for D ") do
    expect("x".get_scrabble_score()).to eq(8)
  end
  it("returns scrabble score for D ") do
    expect("q".get_scrabble_score()).to eq(10)
  end
  it("returns scrabble score for a short word") do
    expect("ben".get_scrabble_score()).to eq(5)
  end
  it("returns scrabble score for a long word with camelCase") do
    expect("HelloHowAreYou".get_scrabble_score()).to eq(26)
  end
end


describe('Fixnum#numbers_to_words') do
  it("returns word for 1 ") do
    expect(1.numbers_to_words()).to eq("one")
  end
  it("returns word for 10 ") do
    expect(10.numbers_to_words()).to eq("ten")
  end
  it("returns word for 40 ") do
    expect(40.numbers_to_words()).to eq("fourty")
  end
  it("returns word for double digit 88 ") do
    expect(88.numbers_to_words()).to eq("eighty eight")
  end
  it("returns word for hundred") do
    expect(100.numbers_to_words()).to eq("hundred")
  end
  it("returns word for hundreds") do
    expect(500.numbers_to_words()).to eq("five hundred")
  end
  it("returns word for hundreds") do
    expect(745.numbers_to_words()).to eq("seven hundred fourty five")
  end
  it("returns word for thousands") do
    expect(8999.numbers_to_words()).to eq("eight thousand nine hundred ninety nine")
  end
  # it("returns word for two digit thousands") do
  #   expect(98999.numbers_to_words()).to eq("ninety eight thousand nine hundred ninety nine")
  # end
end
