def reformat_languages(languages)
  # your code here
  new_hash = {}
    languages.each do |style, language|
      # binding.pry
      language.each do |language_name, language_attribute|
        # binding.pry

         if new_hash[language_name] == nil
            new_hash[language_name] = language_attribute
            # binding.pry
        end
        new_hash[language_name][:style] = []
        new_hash[language_name][:style] << style

       end
    end
    new_hash[:javascript][:style] << :oo
    new_hash
  end
