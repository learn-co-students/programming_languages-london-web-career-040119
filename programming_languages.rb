require "pry"



def reformat_languages(languages)
  new_hash = {}
  
  languages.each {|lang_style, diff_langs_info|
    diff_langs_info.each {|lang_types, lang_info|
      lang_info.each {|info_titles, data|
        if new_hash[lang_types].nil?
          new_hash[lang_types] = {}
        end
          new_hash[lang_types][info_titles] = data
        new_hash[lang_types][:style] ||= []
        new_hash[lang_types][:style].push(lang_style)
      }
      #new_hash[lang_types] = lang_info

        #lang_info.each {|info_titles, data|
         # new_hash[lang_types][:style] ||= []
      #}
    }
  }



  # new_hash.each {|lang_types, lang_info|
  #   lang_info.each {|info_titles, data|
  #     new_hash[:style] = 
  #   } 
  # }
  
  
  new_hash
end
