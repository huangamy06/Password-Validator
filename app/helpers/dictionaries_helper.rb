module DictionariesHelper

	def strength_analysis(dictionary)

		if(dictionary.count("A-Z") > 0)
			upper = true
		end
		if (dictionary.count("a-z") > 0)
			lower = true
		end
		if (dictionary.count("0-9") > 0)
			number = true
		end
		if (dictionary.count("!#$%&()*+,:;<=>?") >0)
			symbol = true
			 
			
		end
		if(upper==true and lower == true && number == true && symbol == true )
			 return " This is a Strong Password"
		else 
			return "This is a weak password"
		end

	end

	def strength_comp(dictionary)
		up=dictionary.count("A-Z") *0.2
		lo=dictionary.count("a-z") * 0.1
		nu=dictionary.count("0-9") *0.3
		sy=dictionary.count("!#$%&()*+,:;<=>?") *0.4
		ttl=up+lo+nu+sy
		return ttl
		if(ttl>3 && dictionary.length>8)
			return" This is a strong password"

		else
			return "this is a weak password"
		end

	end
end
