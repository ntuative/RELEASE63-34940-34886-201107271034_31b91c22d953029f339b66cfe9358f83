package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_757:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_239:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_239 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
   }
}
