def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, type_value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << category
        if new_hash[language][attribute].nil?
          new_hash[language][attribute] = type_value
        end
      end
    end
  end
  new_hash
end
