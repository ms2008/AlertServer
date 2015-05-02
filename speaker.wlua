-- 载入 luacom 对象
--assert (loadlib ("luacom.dll","luaopen_luacom")) ()
require "luacom"

-- 创建一个 SAPI 语音对象的实例
talk = assert (luacom.CreateObject ("SAPI.SpVoice"), "无法创建 SAPI 对象")

-- 调用相应的方法读出一些单词
talk:Speak ("Attention: five level event occurs")
--talk:Speak ("中国")
