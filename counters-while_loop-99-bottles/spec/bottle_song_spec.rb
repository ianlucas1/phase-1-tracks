require_relative '../bottle_song_lyrics'

describe 'bottle_song_lyrics' do

  it "returns the lyrics of the whole song as a string object" do
    expect(bottle_song_lyrics(1)).to eq "1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall!"
  end

  it "return 5 lines counting down when starting with 5 bottles" do
    expect(bottle_song_lyrics(5)).to eq "5 bottle of beer on the wall, 5 bottle of beer. Take one down, pass it around, 4 bottle of beer on the wall! 4 bottle of beer on the wall, 4 bottle of beer. Take one down, pass it around, 3 bottle of beer on the wall! 3 bottle of beer on the wall, 3 bottle of beer. Take one down, pass it around, 2 bottle of beer on the wall! 2 bottle of beer on the wall, 2 bottle of beer. Take one down, pass it around, 1 bottle of beer on the wall! 1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall!"
  end

end
