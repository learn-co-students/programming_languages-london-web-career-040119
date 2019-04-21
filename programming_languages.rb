def reformat_languages(languages)

  new_hash = {}

  languages.each do |style, programming_language|
    programming_language.each do |language_name, type|
      type.each do |key, value|
        new_hash[language_name] = {:type => nil , :style => []}
      end
    end
  end
  languages.each do |style, programming_language|
    programming_language.each do |language_name, type|
      type.each do |key, value|
        new_hash[language_name][:type] = value
        new_hash[language_name][:style] << style
      end
    end
  end

new_hash
end
