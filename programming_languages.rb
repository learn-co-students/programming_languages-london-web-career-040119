require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, languages_data|
    languages_data.each do |language, data|
      new_hash[language] = new_hash[language] || data
      new_hash[language][:style] = new_hash[language][:style] || []
      new_hash[language][:style] << style 
    end
  end
  new_hash
end
