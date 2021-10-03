package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_876:String = "rwcem_change_email";
       
      
      private var var_2655:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_876);
         this.var_2655 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2655;
      }
   }
}
