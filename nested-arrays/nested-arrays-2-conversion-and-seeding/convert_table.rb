def convert_table(table_data)
  array_of_hashes = []
  i = 1
  
  until i == table_data.length do 
    array_of_hashes << table_data[0].zip(table_data[i]).to_h
    i += 1
  end 
  
  array_of_hashes
end