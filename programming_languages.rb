def lang_hash(languages)
  languages.each do |key, value|
      

      new_hash = {}
      new_hash[:my_key] = value
      puts new_hash
  end 
end 

lang_hash(languages)