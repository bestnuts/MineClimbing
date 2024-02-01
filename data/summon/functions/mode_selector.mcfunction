kill @e[tag=mode]
execute positioned -67.01 42.5 349.5 run summon text_display ~ ~ ~ {teleport_duration:1,Tags:["mode","object","text"],text:'{"text":"[임무]","color":"gold"}',Rotation:[90F,0F],background:0,brightness:{block:10,sky:15}}
execute positioned -67.01 42.5 348.5 run summon interaction ~ ~ ~ {Tags:["mode","object","click","1"],height:.3f,width:.8f}
execute positioned -67.01 42.5 348.5 run summon text_display ~ ~ ~ {teleport_duration:1,Tags:["mode","object","text"],text:'{"text":"[기네스]","color":"gold"}',Rotation:[90F,0F],background:0,brightness:{block:10,sky:15}}
execute positioned -67.01 42.5 349.5 run summon interaction ~ ~ ~ {Tags:["mode","object","click","2"],height:.3f,width:.8f}
execute positioned -67.01 42.5 350.5 run summon text_display ~ ~ ~ {teleport_duration:1,Tags:["mode","object","text"],text:'{"text":"[셰르파]","color":"gold"}',Rotation:[90F,0F],background:0,brightness:{block:10,sky:15}}
execute positioned -67.01 42.5 350.5 run summon interaction ~ ~ ~ {Tags:["mode","object","click","3"],height:.3f,width:.8f}