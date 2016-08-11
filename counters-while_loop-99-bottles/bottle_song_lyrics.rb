# Takes as its input an integer +n+ representing the starting number of bottles.
# Returns the lyrics to "n Bottles of Beer".

def bottle_song_lyrics(n)
  bottle_counter = n
  bottles_remaining = n-1
  song = ""
  while bottle_counter >= 1
    if bottle_counter > 1
      song << "#{bottle_counter} bottle of beer on the wall, #{bottle_counter} bottle of beer. Take one down, pass it around, #{bottles_remaining} bottle of beer on the wall! "
    else
      song << "1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall!"
    end
      bottle_counter -= 1
      bottles_remaining -=1
  end
  song
end
