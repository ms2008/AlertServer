-- ���� luacom ����
--assert (loadlib ("luacom.dll","luaopen_luacom")) ()
require "luacom"

-- ����һ�� SAPI ���������ʵ��
talk = assert (luacom.CreateObject ("SAPI.SpVoice"), "�޷����� SAPI ����")

-- ������Ӧ�ķ�������һЩ����
talk:Speak ("Attention: five level event occurs")
--talk:Speak ("�й�")
