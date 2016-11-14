class Book

	attr_accessor :title

	def title
		phraseArr = @title.split(' ')
		phraseArr[0].capitalize!
		littleWords = ['the', 'or', 'and', 'over', 'of', 'in', 'a', 'an']
		phraseArr.each do |word| 
			if littleWords.include?(word) == false
				word.capitalize!
			end
		end
		@title = phraseArr.join(' ')
	end

end
