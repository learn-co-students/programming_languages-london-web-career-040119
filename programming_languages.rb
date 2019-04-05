require 'pry'

def reformat_languages(languages)

  # Create new hash.
  new_hash = {}

  # Get all unique languages in original hash.
  language_names = (languages.collect {|styles, languages| languages.keys}).flatten.uniq

  # Populate new_hash with languages in original hash as keys and with hashes as values, with :type and :style as keys.
  language_names.each {|language| new_hash[language.to_sym] = {:type => "", :style => []}}

  # Iterate through the original hash and through the array with existing languages (language_names). For each unique language, populate the new_hash hash with the
  # :type and :style values of the original array.
  languages.each do |styles, languages|
    languages.each do |name, types|
      language_names.each do |names|
        if names == name
          new_hash[name][:type] = languages[name][:type]
          new_hash[name][:style] << styles
        end
      end
    end
  end

  # Call the new_hash hash so that this is the returned value.
  new_hash

end
