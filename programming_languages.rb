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


def reformat_languages(languages)
  new_hash = {}
  #get languages
  k = languages[:oo].keys.concat(languages[:functional].keys)
  t = []
  k1 = languages[:oo].keys
  k2 = languages[:functional].keys

 #populating the hash
 puts k
 for item in k
   new_hash[item] = {}
 end
 #insert type
 for item in k1
     new_hash[item] = {:type => languages[:oo][item][:type], :style => [:oo]}
 end
 for item in k2
     new_hash[item] = {:type => languages[:functional][item][:type], :style => [:functional]}
 end

 new_hash[:javascript][:style].insert(0,:oo)
 return new_hash
end

#reformat_languages(languages)
