--Starter
i,o,p=input,output,property
m=math
s=screen
--I/Os
ign=i.getNumber
igb=i.getBool
osn=o.setNumber
osb=o.setBool
pgn=p.getNumber
pgb=p.getBool
pgt=p.getText

--Returns true if there is a touch input within set paramaters.
function touchWithin (x,y,rectX,rectY,rectW,rectH)
    return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end

--Rounds a number to the number of decimal places.
function round (num, places)
    mult = (10 ^ (places or 0))
    return math.floor(num * mult + 0.5)/mult
end
