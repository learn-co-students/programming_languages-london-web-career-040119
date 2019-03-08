ddef lang_hash(languages)
  languages.each do |key, value|
      puts value
  end 
end 

values = lang_hash(languages)

new_hash = {}

new_hash[:my_key] = values
puts new_hash