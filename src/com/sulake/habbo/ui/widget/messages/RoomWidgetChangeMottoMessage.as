package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_948:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1904:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_948);
         this.var_1904 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1904;
      }
   }
}
