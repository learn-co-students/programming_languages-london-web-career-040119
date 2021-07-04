# Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type and style.

def reformat_languages(languages)
  # your code here
  hash = {}
  languages.each do |style, description|
    description.each do |l, t|
      if hash.has_key?(l)
        hash[l][:style] << style
        
      else 
        hash[l] = t 
        hash[l][:style] = [style]
      end
    end
  end
  hash
end
