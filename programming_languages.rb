require 'pry'

def reformat_languages(languages)

  new_hash = {}

  language_names = (languages.collect {|styles, languages| languages.keys}).flatten.uniq

  language_names.each {|language| new_hash[language.to_sym] = {:type => "", :style => []}}

  languages.each do |styles, languages|
    languages.each do |name, types|
      language_names.each do |names|
        if names == name
          new_hash[name] = types
        end
      end
    end
  end

  

end
