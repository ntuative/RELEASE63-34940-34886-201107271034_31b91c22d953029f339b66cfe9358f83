package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_855:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_1885:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_855);
         this.var_1885 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_1885;
      }
   }
}
