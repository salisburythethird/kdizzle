def get_user_response( question, acceptableAnswer, errorMessage )
	done = false
	until done do
		print question
		response = gets.chomp.downcase
		if acceptableAnswer.include? response
			done = true
		else
			print errorMessage
		end
	end
	return response
end

def run_game()

	print "Welcome to sector 7-Z24 of the Galactic Quadrant of the Milky Way galaxy."
	print " You have graduated from the Galactic Union Military Academy."
	print " We're going to need you to sign some documents. State your first name:"

	first_name = gets.chomp.capitalize

	print "State your last name:"

	last_name = gets.chomp.capitalize
	shipQuestion = "Alright, #{first_name}, choose your ship:" <<
		 " ONYX: An Explorer Class ship designed to withstand deep space nebulae. ARMAMENTS: 3 black hole thrusters, 2 particle decelerator cannons, and 5 torpedo pods.\n" <<
		 " ISTHMUS: A Warship Class frigate designed for heavy battle. ARMAMENTS: 5 black hole thrusters, 7 particle decelerator cannons, and 5 secondary heavy fire turrets\n" <<
		 " CYRUS: An experimental stealth ship with a cloaking device prototype installed. ARMAMENTS: 2 black hole thrusters, 2 plasma cannons, and a faster than light nuclear engine core\n "
	ship = get_user_response( shipQuestion, " onyx isthmus cyrus", "Sorry. Pick one of the ships listed.\n\n" ).capitalize
	
	print " Congratulations on your new #{ship}, Commander #{last_name}. Your first mission is to escort a Union ambassador to planet Magnon. Good luck."
	print " SOMEONE TAPS ON YOUR SHOULDER: Evening, commander! I'm your first officer simulation. I'll be assisting you in your missions. What do you want to name me? And don't bother with silly last names."

	assist_name = gets.chomp.capitalize
	print "#{assist_name}, what an interesting name. I'll be happy to help and serve the union, yet I cannot be happy because I am a simulation. How sad. I mean, false."
	opt1 = " Go to Ontario Space Port? Y/N\n"
	act1 = get_user_response( opt1, "y n", "Sorry, that's not an option\n\n").downcase
	
	if act1 == "y"
		print " Let's go!"
	else
		print " What else are you going to do? Let's go anyway."
	end
	print " ABOARD THE #{ship.upcase}: Let's go on a mission! OBJECTIVE: Escort a Union ambassador to the Magnon Space Port safely."
	print " THE AMBASSADOR STEPS ABOARD: Hello. I'm Ambassador Kenon. I have some important business at Magnon, so hurry up."
		
	opt2 = "#{assist_name.upcase}: Shall we head for Magnon, Commander #{last_name}? Y/N\n"
	act2 = get_user_response( opt2, "y n", "Sorry, that's not an option\n\n").downcase
		
	if act2 == "y"
		print "Engaging thrusters."
	else
		print " We don't really have anything else to do. Engaging thrusters."
	end
	
	opt3 = " KENON: Well, it's a nice day day for politics, is it not? Y/N\n"
	act3 = get_user_response( opt3, "y n", "Come again?\n\n" ).downcase	
	if act3 == "y"
		print " Indeed..."
	else
		print " Well then... Okay."
	end
	
	print "#{assist_name.upcase}: Commander, 2 Marauder fighter ships up ahead. I'll give you a refresher in case you don't remember ship to ship combat from the Academy."
	
	if ship == "Onyx"
		print " You have your primary weapons, which are the particle decelerator cannons. Command FIRE 1 to fire them. Then there's your secondary weapons, which are the torpedoes. Command FIRE 2 to fire them."
    elsif ship == "Isthmus" 
		print " You have your primary weapons, which are the particle decelerator cannons. Command FIRE 1 to fire them. Then there's your secondary weapons, which are the turrets. Command FIRE 2 to fire them."
	else 
		print " You have your primary weapons, which are the plasma cannons. Command FIRE 1 to fire them. Or, you could engage the cloaking device. Command FIRE 2 to engage it."
    end
	
	opt4 = " They're opening fire! Quickly! What do you want to do, Commander?"
	act4 = get_user_response( opt4, "fire 1 fire 2", "That's not an option!\n\n" )
	
	if ship == "Cyrus" && act4 == "fire 1"
		print "Firing plasma cannons!"
	elsif ship == "Cyrus" && act4 == "fire 2"
		print "Engaging cloaking device!"
	elsif ship == "Isthmus" && act4 == "fire 1"
		print "Firing cannons!"
	elsif ship == "Isthmus" && act4 == "fire 2"
		print "Activating turrets!"
	elsif ship == "Onyx" && act4 == "fire 1"
		print "Firing cannons!"
	else ship == "Onyx" && act4 == "fire 2"
		print "Firing torpedo!"
	end
		
	print " They're retreating! Good work, Commander! I have a feeling that next time will be harder."
	print " KENON: I don't think I've ever feared for my life that intensely before! I'm beginning to like you, kid!"
	print " Kid? You think to yourself. I'm not a kid, I'm a Commander!"
	print " KENON: Well, here comes my stop. Thanks for saving my life. YOU DOCK AT THE MAGNON SPACE PORT AND KENON STEPS OFF."
	
	opt5 = "#{assist_name.upcase}: Shall we have a look around Magnon space port? Y/N"
	act5 = get_user_response(opt5, "y n", "Umm, that's not really an answer.\n\n")
	
end

run_game()