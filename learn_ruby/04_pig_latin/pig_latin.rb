#write your code here
def translate(phrase)
	vowels = ['a', 'e', 'i', 'o', 'u']
	transPhrase = ''
	if phrase.match(' ')
		seperatedPhrase = phrase.split(' ')
		seperatedPhrase.each do |word|
			addText = translate(word)
			transPhrase = transPhrase + ' ' + addText
		end
		return transPhrase.strip
	else
		phraseSplit = phrase.split(//)
	end

	if phraseSplit.include?('q')
		qPoint = phraseSplit.index('q')
		if phraseSplit[qPoint + 1] == 'u'
			phraseSplit[qPoint] = 'qu'
			phraseSplit.delete_at(qPoint+1)
		end
	end

	if vowels.include?(phraseSplit[0])
		transPhrase = transPhrase + phraseSplit.push('ay').join
	elsif vowels.include?(phraseSplit[1])
		transPhrase = transPhrase + phraseSplit.rotate.push('ay').join
	elsif vowels.include?(phraseSplit[2])
		transPhrase = transPhrase + phraseSplit.rotate(2).push('ay').join
	elsif vowels.include?(phraseSplit[3])
		transPhrase = transPhrase + phraseSplit.rotate(3).push('ay').join
	end
end
translate('quiet')
