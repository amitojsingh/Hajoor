class Jap < ActiveRecord::Base
#where("Translation LIKE?", "%#{$str}%")

def self.query_find(find_word)
	@s=[]
	@i=0
	@j=0
	find_word.each do |word|
		puts "#{word}"
		@s[@i]=word.join("%' OR Translation LIKE '%")
#		puts "#{@s[@i]}"
		@i=@i+1
		puts "#{@i}"
	end
#	@s=find_word.join("%' OR Translation LIKE '%")
#	puts "after join #{@s}"
	if @i==1
		@s=@s.join()	
	
	else 
		puts "aaah chal payi oye"
		@s=@s.join("%' AND Translation LIKE'%")
		puts "#{@s}"
	end
where("Translation LIKE '%" + "#{@s}" + "%'" )
end


end
