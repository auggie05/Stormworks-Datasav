--Savant Systems Datasav DISY/CL-2 Clock
--Starter
i,o=input,output
m=math
--I/Os
ign=i.getNumber
igb=i.getBool
osn=o.setNumber
osb=o.setBool

--clock * 24 hour.decimal minute
--floor clock * 24 hour
--floor(((clock24)-floor (clock24)) * 60) minute
function hour(clock)
    return m.floor(clock*24)
end

function hour12(clock)
    return m.abs(m.floor(clock*24)-12)
end

function minute(clock)
    return m.floor(((clock*24)-(m.floor(clock*24)))*60)
end

function time(clock)
    return hour(clock)+(minute(clock)/100)
end 

function sevendd(number, place)
    return m.fmod(m.floor(number/place),10)
end

function onTick()
    c=ign(1)
    osn(32,time(c))
    osn(1,sevendd(minute(c),1))
    osn(2,sevendd(minute(c),10))
    osn(3,sevendd(hour(c),1))
    osn(4,sevendd(hour(c),10))
end
