#write your code here
def echo(phrase)
	phrase
end
def shout(phrase)
	phrase.upcase
end
def repeat(phrase, times = 2)
	((phrase + " ") * times).rstrip
end
def start_of_word(phrase, letter)
	phrase[0, letter]
end
def first_word(phrase)
	phraseArr = phrase.split(' ')
	phraseArr[0]
end

def titleize(phrase)
	phraseArr = phrase.split(' ')
	phraseArr[0].capitalize!
	littleWords = ['the', 'or', 'and', 'over']
	phraseArr.each do |word| 
		if littleWords.include?(word) == false
			word.capitalize!
		end
	end
	phraseArr.join(' ')
end