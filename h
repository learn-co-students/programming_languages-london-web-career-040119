
[1mFrom:[0m /home/francisco/programming_languages-london-web-career-040119/programming_languages.rb @ line 25 Object#reformat_languages:

     [1;34m3[0m: [32mdef[0m [1;34mreformat_languages[0m(languages)
     [1;34m4[0m: 
     [1;34m5[0m:   new_hash = {}
     [1;34m6[0m: 
     [1;34m7[0m:   language_names = (languages.collect {|styles, languages| languages.keys}).flatten.uniq
     [1;34m8[0m: 
     [1;34m9[0m:   language_names.each {|language| new_hash[language.to_sym] = {[33m:type[0m => [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m, [33m:style[0m => []}}
    [1;34m10[0m: 
    [1;34m11[0m:   languages.each [32mdo[0m |styles, languages|
    [1;34m12[0m:     languages.each [32mdo[0m |name, types|
    [1;34m13[0m:       language_names.each [32mdo[0m |names|
    [1;34m14[0m:         [32mif[0m names == name
    [1;34m15[0m:           new_hash[name] = types
    [1;34m16[0m:         [32mend[0m
    [1;34m17[0m:       [32mend[0m
    [1;34m18[0m:     [32mend[0m
    [1;34m19[0m:   [32mend[0m
    [1;34m20[0m: 
    [1;34m21[0m:   new_hash.each [32mdo[0m |new_hash_languages, specs|
    [1;34m22[0m:     languages.each [32mdo[0m |styles, language|
    [1;34m23[0m:       [32mif[0m language.keys.include?(new_hash_languages)
    [1;34m24[0m:         new_hash[new_hash_languages][[33m:style[0m] = styles
 => [1;34m25[0m:         binding.pry
    [1;34m26[0m:       [32mend[0m
    [1;34m27[0m:     [32mend[0m
    [1;34m28[0m:   [32mend[0m
    [1;34m29[0m: 
    [1;34m30[0m: [32mend[0m

