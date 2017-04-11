
names = Array.new ["Ben", "Ryan", "Jason", "Hunter", "KJ", "Devan", "Cody", "Zach", "Stephanie", "Andrew", "Preston", "Ian", "Chase", "Shelbi", "Jerry"]

#randomize a picker based on number of names
 p random = rand(0 ..(names.length-1))


#grab a name from the array and place in a new array
 puts = " #{names[random]}"

 # name_hold << names[p]
 # p name_hold
#once array is empty move new array back to names

#other ways array.shuffle