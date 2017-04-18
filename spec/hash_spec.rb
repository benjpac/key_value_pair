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
