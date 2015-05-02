require( "iuplua" )
require( "iupluacontrols" )

matup = iup.matrix 
{
   numcol=4,
   numlin=1,
   numcol_visible=4,
   numlin_visible=1,
   height0=10,
   widthdef=85,
   readonly="YES",
   resizematrix="YES",
   markmode="LIN",
   border="NO",
   scrollbar="YES"
}

matup:setcell(0,1,"�¼�˳���")
matup:setcell(0,2,"IP��ַ")
matup:setcell(0,3,"�������")
matup:setcell(0,4,"�¼�����")
matup:setcell(1,1,"1136726")
matup:setcell(1,2,"192.168.1.10")
matup:setcell(1,3,"SYSLOG@NWM_OL_PB")
matup:setcell(1,4,"6")

dlg = iup.dialog
{
  iup.hbox
  {  
    iup.vbox
    {
      iup.frame
      {
        iup.vbox
        {
          matup,
          margin="5x50",
        }
        ;title="AlarmInfo"
        },
      },
      margin="5x5",
      gap="5"
  }
  ;title="���¼�����",
  size="400x180",
  icon=0
}  
dlg:showxy(iup.CENTER, iup.CENTER)

if (iup.MainLoopLevel()==0) then
  iup.MainLoop()
end
