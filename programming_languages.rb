require 'pry'

def languanges_by_style
  {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }
   
    }
  }
end

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
