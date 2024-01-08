-- нажатие кнопки
if Event.Obj.Value == "single" then
  -- однократное нажатие кнопки
  if obj.get("led1") == "ON" then
  	obj.set("led1", "AUTO")
  	os.led("AUTO")
  else
  	obj.set("led1", "ON")
    effect = obj.get("led1e")
  	os.led("ON",obj.get("led1y"),obj.get("led1r"),obj.get("led1g"),obj.get("led1b"),effect)
  end
elseif Event.Obj.Value == "double" then
  -- двухкратное нажатие кнопки
  if obj.get("led1") == "ON" then
    bri = obj.get("led1y")
    bri = bri + 20
    if bri > 250 then 
      bri = 20 
    end
    obj.set("led1y", bri)
    os.led("ON",obj.get("led1y"),obj.get("led1r"),obj.get("led1g"),obj.get("led1b"),0)
  end
elseif Event.Obj.Value == "triple" then  
  -- трехкратное нажатие кнопки
    os.led("AUTO")
	zigbee.join(250, "0x0000")
elseif Event.Obj.Value == "hold" then  
  -- долгое нажатие кнопки
  	effect = obj.get("led1e") + 1
    if effect == 63 then
      effect = 0
    end
    obj.set("led1e", effect)
  	os.led("ON",obj.get("led1y"),-1,-1,-1,effect)
elseif Event.Obj.Value == "quadruple" then  
  -- 4 нажатие кнопки
    obj.set("led1e", 0)
  	os.led("ON",obj.get("led1y"),-1,-1,-1,0)
elseif Event.Obj.Value == "many_5" then  
  -- 5 нажатий кнопки
    obj.set("led1e", 0)
  	color=obj.get("led1c") + 1
    if color > 10 then 
      color = 0
    end
  	obj.set("led1c", color )

    if color == 0 then       led = { r = 255, g = 255, b = 255}
  	  elseif color == 1 then       led = { r = 255, g = 0, b = 0}
  	  elseif color == 2 then        led = { r = 0, g = 255, b = 0}
  	  elseif color == 3 then        led = { r = 0, g = 0, b = 255}
  	  elseif color == 4 then        led = { r = 255, g = 0, b = 255}
  	  elseif color == 5 then        led = { r = 0, g = 255, b = 255}
  	  elseif color == 6 then        led = { r = 255, g = 255, b = 0}
  	  elseif color == 7 then        led = { r = 128, g = 128, b = 255}
  	  elseif color == 8 then        led = { r = 255, g = 128, b = 128}
      elseif color == 9 then        led = { r = 128, g = 255, b = 128}
  	  else led = { r = 128, g = 0, b = 255}
    end
    obj.set("led1r", led.r)
    obj.set("led1g", led.g) 
    obj.set("led1b", led.b) 
  	os.led("ON",obj.get("led1y"),led.r,led.g,led.b,0)
else
  return
end
