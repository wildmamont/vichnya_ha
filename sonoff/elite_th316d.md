устанавливаем согласно инструкции на сайте https://templates.blakadder.com/sonoff_THR316D.html

ќбраз берем с сайта http://ota.tasmota.com/tasmota32/ - tasmota32.bin

Configuration:
GPIO #	Component
GPIO00 	Button 1
GPIO01 	None
GPIO02 	None
GPIO03 	None
GPIO04 	Relay 2
GPIO05 	TM1621 DAT
GPIO09 	None
GPIO10 	None
GPIO12 	None
GPIO13 	Led_i 2
GPIO14 	None
GPIO15 	LedLinki
GPIO16 	Led_i 1
GPIO17 	TM1621 CS
GPIO18 	TM1621 WR
GPIO19 	None
GPIO20 	None
GPIO21 	Relay 1
GPIO22 	None
GPIO23 	TM1621 RD
GPIO24 	None
GPIO25 	User
GPIO26 	None
GPIO27 	Output Hi

template32: '{"NAME":"Sonoff THR316D","GPIO":[32,0,0,0,225,9280,0,0,0,321,0,576,320,9184,9216,0,0,224,0,9248,0,1,0,3840,0,0,0,0,0,0,0,0,0,0,0,0],"FLAG":0,"BASE":1}' 



If using the THS01 results in random УNULLФ values. Try chaning the DhtDelay value to СDhtDelay 500,40Т. If successfull create a rule so that it stays persistent. 
'Rule1 on system#init do DhtDelay 500,40 endon'
'Rule1 1'
