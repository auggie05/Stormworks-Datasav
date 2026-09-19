--Savant Systems Datasav DASY/KF-1 
--Frequency Modulator

ign = input.getNumber
osn = output.setNumber

function onTick()
    f = ign(1)
	c = ign(2)
    R = 5
    x = math.floor(ign(3)*10^R+.5)
    if c == 0
        then 
            osn(1, f)
        else 
            math.randomseed(c*x)
            osn(1, math.random(f, (f+10000)))
    end
end