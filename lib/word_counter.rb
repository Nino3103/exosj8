def word_counter(sentence, dictionnary)
  array = dictionnary.map{|e| sentence.downcase.scan(e).length}
  h = Hash[dictionnary.zip array]
  return h

end


shakespeare_text = File.read('lib/shakespeare.txt')
google_dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

puts word_counter(shakespeare_text, google_dictionnary)

# longest = %w{ cat sheep bear }.inject do |memo, word|
#    memo.length > word.length ? memo : word






# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
# word_counter("below", dictionary)
# {"below"=>1, "low"=>1}
# > word_counter("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
#
#
