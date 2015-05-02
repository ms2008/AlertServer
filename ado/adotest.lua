-- adotest.lua
-- Testing ADOLua

dofile("adolua.lua")

DBOpen("Provider=Sybase ASE OLE DB Provider;Data Source=test;User ID=root;Password=;Server Name=10.1.5.15,4100;")

--[[
DBExec("create table test (name char(30), phone char(20))")

DBExec("insert into test values ('Bill Gates', '666-6666')")
DBExec("insert into test values ('Paul Allen', '606-0606')")
DBExec("insert into test values ('George Bush', '123-4567')")
]]

DBExec("select * from alerts.status")


t = DBRow()

while t ~= nil do
  print(tostring(t.name).."\t"..tostring(t.phone))
  t = DBRow()
end

--DBExec("drop table test")
DBClose()

collectgarbage()

