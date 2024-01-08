-- инициализация кнопки
obj.setScript("io.input0.value", "btn_sw1.lua", true)
gpio.addInput(33, gpio.INPUT_PULLUP, 2, "input0")
obj.setType("led1y","INT")
obj.setType("led1e","INT")
obj.setType("led1r","INT")
obj.setType("led1g","INT")
obj.setType("led1b","INT")
obj.setType("led1c","INT")
obj.set("led1y", 255)
obj.set("led1e", 0)
obj.set("led1r", 255)
obj.set("led1g", 255)
obj.set("led1b", 255)
obj.set("led1c", 0) -- цвет светодиода
-- статус светодиода автоматически
os.led("AUTO")