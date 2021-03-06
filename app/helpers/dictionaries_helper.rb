#Emily Robinson worked on this
module DictionariesHelper

	def read_dictionary()
		words = []
		f = File.open(File.join(File.dirname(__FILE__), 'words.txt'), "r")
		f.each_line do |line|
			input = line.chomp
			words << input
		end
		return words
	end

	def checkEnglish(dictionary)
		words = read_dictionary()
		return words.any? {|word| dictionary.include?(word) }
	end

	def strength_analysis(dictionary)
		words = read_dictionary()
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
		if (checkEnglish(dictionary))
			english = true
		end
		if(upper==true and lower == true && number == true && symbol == true && english == true)
			 return "STRONG"
		else 
			return "WEAK"
		end

	end
	def checkMultiples(dictionary)
		count = 0
		i=0
		while i<(dictionary.length-2)
			if(dictionary[i]==dictionary[i+1] and dictionary[i]==dictionary[i+2])
				return false #found three in a row
			end
			i=i+1
		end
		return true

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
		ttl=ttl/10.0
		#return ttl
		if(ttl>=6.9 && dictionary.length>8 &&checkMultiples(dictionary)&& !checkEnglish(dictionary) &&up>=1&&lo>=1&&nu>=1&&sy>=1)
			return "STRONG" 

		elsif (ttl>=4.0 && dictionary.length>8&&checkMultiples(dictionary)&&up>=1&&lo>=1&&nu>=1&&sy>=1)
			
			return "MODERATE"

		else
			return "WEAK"
		end

	end

	def strength_num(dictionary)
		up=dictionary.count("A-Z") * 4
		lo=dictionary.count("a-z") * 3
		nu=dictionary.count("0-9") * 5
		sy=dictionary.count("!#$%&()*+,:;<=>?") * 6
		len = dictionary.length / 2
		ttl=up+lo+nu+sy+len
		#strings for printing out
		strong="STRONG\n"
		leng="The length is good\n"
		ttl=ttl/10.0
		return ttl
		

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
	def updateMult(dictionary)
		
		if(!checkMultiples(dictionary))
			return "You cannot have three of the same character in a row" 
		end
	end
	def updateEnglish(dictionary)
		if(checkEnglish(dictionary))
			return "You can not have any english words"
		end
	end

end
