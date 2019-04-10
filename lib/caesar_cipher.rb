#### Il manque upcase downcase



def caesar_cipher(word, key)
  if word.is_a? String
    array = word.split(//)
    # si e = 32, alors c'est un espace qu'il ne faut pas toucher dans le code

    new = array.map { |e| (e.ord == 32) ? e.ord : e.ord + key }.map{ |e| e>122||(e>90 && e<97)? (e-26).chr : e.chr}.join
    return new
    puts new

  else
    return "A string please..."
    puts "A string please..."
  end

end



puts caesar_cipher("LA CLEF VERTE",2)
puts caesar_cipher(1,3)


# TRADUIRE UNE LETTRE sans circularité
# def caesar_cipher(word, key)
#   translation = word.ord + key
#   return translation.chr
# end


# TRADUIRE UN MOT sans upcase downcase sans circularité

#transforme le string en array pour mieux travailler dessus
# def caesar_cipher(word, key)
#   array = word.split(//)
#   new = array.map { |e| e.ord + key }.map { |e| e.chr }.join
#   return new
#   puts new
# end



# TRADUIRE UN MOT sans upcase downcase AVEC circularité

# def caesar_cipher(word, key)
#   array = word.split(//)
#   new = array.map { |e| e.ord + key }.map{ |e| e>122||(e>90 && e<97)? (e-26).chr : e.chr}.join
#   return new
#   puts new
# end




# TRADUIRE UNE PHRASE + checker si argument Integer

# def caesar_cipher(word, key)
#   if word.is_a? String
#     array = word.split(//)
#     # si e = 32, alors c'est un espace qu'il ne faut pas toucher dans le code
#
#     new = array.map { |e| (e.ord == 32) ? e.ord : e.ord + key }.map{ |e| e>122||(e>90 && e<97)? (e-26).chr : e.chr}.join
#     return new
#     puts new
#
#   else
#     return "A string please..."
#     puts "A string please..."
#   end
#
# end
#
#
#
# puts caesar_cipher("LA CLEF VERTE",2)
# puts caesar_cipher(1,3)
#
