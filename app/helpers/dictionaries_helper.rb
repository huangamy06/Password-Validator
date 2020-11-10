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
			 return "STRONG"
		else 
			return "WEAK"
		end

	end

	def strength_comp(dictionary)
		up=dictionary.count("A-Z") * 4
		lo=dictionary.count("a-z") * 3
		nu=dictionary.count("0-9") * 5
		sy=dictionary.count("!#$%&()*+,:;<=>?") * 6
		len = dictionary.length / 2
		ttl=up+lo+nu+sy+len
		#strings for printing out
		strong="STRONG\n"
		leng="The length is good\n"
		ttl=ttl/10
		if(ttl>=6.9 && dictionary.length>8)
			return "STRONG" 

		else
			return "WEAK"
		end

	end
	def updatelen(dictionary)
		
		if(dictionary.length<8)
			return "You need to make your password longer" 
		end
	end
	def updateU(dictionary)
		up=dictionary.count("A-Z")
		if(up<1)
			return "You need to have an uppercase letter" 
		end
	end
	def updateL(dictionary)
		lo=dictionary.count("a-z")
		if(lo<1)
			return "You need to have an lowercase letter" 
		end
	end

	def updateN(dictionary)
		nu=dictionary.count("0-9")
		if(nu<1)
			return "You need to have a number" 
		end
	end

	def updateS(dictionary)
		sy=dictionary.count("!#$%&()*+,:;<=>?")
		if(sy<1)
			return "You need to have a symbol" 
		end
	end

end
