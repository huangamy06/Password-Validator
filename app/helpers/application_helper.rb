module ApplicationHelper
	def strength_analysis(dictionary)
		if(dictionary.words.include? "a")
			print ("TRUE")
		end
	end
end
