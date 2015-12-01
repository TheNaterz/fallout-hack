=begin

This is for Fallout 4 hacking. Should also work for all previous versions of Fallout.

=end

def likeness(word, num, all_words)
  all_words.delete(word)
  all_words.each do |w|
    i = 0
    count = 0
    word.each_char do |c|
      if c == w[i]
        count += 1
      end
      i += 1
    end
    if count != num
      all_words.delete(w)
    end
  end
end

all_words = []

puts "FALLOUT HACKING TOOL"
puts "Type all the words on the console. 'q' to quit."
while true
  word = gets.chomp.upcase
  if word == "Q"
    break
  end
  all_words << word
end

while true
  cur_word = all_words.first
  puts "Try #{cur_word}"
  print "What number did you get?(9 to quit): "
  num = gets.chomp.to_i
  if num == 9
    break
  else
    likeness(cur_word, num, all_words)
  end
end
    