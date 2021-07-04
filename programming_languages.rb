def languages
  languages = {
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
  new_languages = {}
  languages.each do |style, language|
    language.each do |name, attributes|
    new_languages[name] ||= attributes
    new_languages[name][:style]=[]
    new_languages[name][:style]<<style
    end
  end
  new_languages[:javascript][:style] << :oo
  new_languages
end
