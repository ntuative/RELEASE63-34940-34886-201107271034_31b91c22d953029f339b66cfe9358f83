package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_816:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_687:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_816);
         this.var_687 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_687;
      }
   }
}
