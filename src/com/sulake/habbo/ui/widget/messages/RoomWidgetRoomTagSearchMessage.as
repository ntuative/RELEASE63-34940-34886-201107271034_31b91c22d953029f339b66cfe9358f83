package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_966:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2445:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_966);
         this.var_2445 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2445;
      }
   }
}
