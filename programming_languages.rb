def reformat_languages(languages)
    new_hash = {}
    languages.each do |a, b|
      if a == :oo
        new_hash[:ruby] = {type: "interpreted", style: [:oo]}
        new_hash[:javascript] = {type: "interpreted", style: [:oo, :functional]}
        new_hash[:python] = {type: "interpreted", style: [:oo]}
        new_hash[:java] = {type: "compiled", style: [:oo]}
        new_hash[:clojure] = {type: "compiled", style: [:functional]}
        new_hash[:erlang] = {type: "compiled", style: [:functional]}
        new_hash[:scala] = {type: "compiled", style: [:functional]}
      end
    end
    new_hash
end