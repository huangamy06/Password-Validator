module DictionariesHelper

	def strength_analysis(dictionary)
		if(dictionary.match? /\A[A-Z]*\z/)
			#upper = true
		elsif (dictionary.match? /\A[a-z]*\z/)
			#lower = true
		elsif (dictionary.match? /\A[0-9]*\z/)
			#number = true
		elsif (dictionary.match? /\A[!#$%&()*+,:;<=>?]*\z/)
			#symbol = true
			"True"
		end
	end
end
