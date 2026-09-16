--Savant Systems Datasav ANSY/GP-3b General Purpose Radio
--Mode Indicator

--Basic Inputs and Outputs--
ign=input.getNumber
igb=input.getBool
osn=output.setNumber
osb=output.setBool

function onTick()
    --isOn
    if igb(1) == true
    then 
        osb(4,true) 
        osb(8,true)
        osb(6,false)
        osb(10,false)
        
    else 
        osb(6,true)
        osb(10,true)
        osb(4,false) 
        osb(8,false)
    end
    --isCrypto
    if igb(2) == true and igb(1) == true
    then
        osb(7,true)
        osb(11,true)
    else
        osb(7,false)
        osb(11,false)
    end
    --isMute, noFrequency, noClock
    if igb(3) == true or ign(1) == 0 or ign(3) == 0
    then
        osb(5,true)
        osb(9,true)
    else
        osb(5,false)
        osb(9,false)
    end
end
