require 'pry'
class PigLatinizer

	def piglatinize(word)
		vowels = ["a", "e", "i", "o", "u"]

		if vowels.include? word[0].downcase
			word += "way"
		elsif vowels.include? word[1].downcase
			last_letters = word.slice!(0...1)
			word += last_letters + "ay"
		elsif vowels.include? word[2].downcase
			last_letters = word.slice!(0...2)
			word += last_letters + "ay"
		elsif vowels.include? word[3].downcase
			last_letters = word.slice!(0...3)
			word += last_letters + "ay"			
		end
		word
	end

	def to_pig_latin(sentence)
		sentence = sentence.split.map{|w| piglatinize(w)}
		sentence.join(" ")
	end

end