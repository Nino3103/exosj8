
# ok sauf le test pour s'assurer que c'est un array avec au moins 2 éléments (le test pur integer string etc. ok)

def day_trader(array)

  if array.is_a? Array

    i = 0
    j = i + 1

    #i représente les jours d'Achat
    #j représente les jours de Vente
    # j est donc toujours supérieur à i d'au moins 1 jour
    jourachat = 0
    achat = 0
    jourvente = 0
    vente = 0
    max = 0


    #1ère boucle
    while i < (array.length-1)  do
      # achat le jour i-1 : i=0 premier element array

      #deuxieme boucle dans la boucle
      while j < (array.length-1) do
        transaction = array[j]-array[i]
        puts "transaction#{transaction}"
        if max < transaction then
          max = transaction
          jourachat = i
          achat = array[i]
          jourvente = j
          vente = array[j]
        else
          max = max
        end

        puts "max#{max}"
        puts "j vaut #{j}"
        j = j+1
        puts j
      end

      i = i +1
      j = i + 1

      puts "i vaut #{i}"

    end


    return "Profit maximal : #{max}$ => Achat #{achat}$ le jour #{jourachat+1} / Vente #{vente}$ le jour #{jourvente+1}"

  else

    return "Veuillez entrer un tableau comportant au moins deux jours please"
  end

end

puts day_trader("Hello")



#
#
# longest = %w{ cat sheep bear }.inject do |memo, word|
#    memo.length > word.length ? memo : word
# end
