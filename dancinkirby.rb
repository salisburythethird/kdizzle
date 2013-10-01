#!/usr/bin/ruby

class DancinKirby
    def initialize()
    end

    def danceFatKirby()
        puts( "<('.' <)" )

        sleep( 0.25 )
        system("cls")

        puts( "<( '.' )>" )

        sleep (0.25)
        system("cls")

        puts( "(> '.')>" )

        sleep(0.25)
        system("cls")
    end

    def doTheDance()
        system( "cls" )
        for i in 1..8 do
            danceFatKirby()
        end
    end

    def showMeTheBunny()
        puts( "(\\___\/)" )
        puts( "(='.'=)" )
        puts( "(\")_(\")" )
    end
end


kirby = DancinKirby.new()
finished = 0
until ( finished == 1 ) do
    puts( "Do you want to see Fat Kirby dance? (Y/n)" )
    response = gets.chomp
    if ( response == "Y" )
        kirby.doTheDance()
    else
        puts( "Someone's grumpy! How bout a bunny?" )
        kirby.showMeTheBunny()
        finished = 1
    end
end
