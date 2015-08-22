class RegWord < ActiveRecord::Base
public
$arr=Array.new
def search(query)
#where("Translation LIKE?", "%#{query}%")

@reg=RegWord.all
@que=query.split(" ")
        @que.each do |q|
        RegWord.word_search(q)
end
end
#puts "#{@query}"

def self.word_search(word)
if RegWord.exists?(['words Like ?', "%#{word}%"])
puts "its working"
else
puts "its not"
$arr.push(word)
puts "#{$arr}"
end

end
end
