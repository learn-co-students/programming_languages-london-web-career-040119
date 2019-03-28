require 'pry'

def reformat_languages(languages)
  new_hash = {}
  language_names = (languages.collect {|styles, langs| langs.keys}).flatten.uniq
  language_names.each {|language| new_hash[language.to_sym] = {:type => "", :style => []}}
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
  new_hash
end