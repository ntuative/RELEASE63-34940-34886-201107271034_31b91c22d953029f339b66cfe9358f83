package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2082:int;
      
      private var var_2872:int;
      
      private var var_1685:int;
      
      private var var_2811:int;
      
      private var var_142:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2082 = param1.readInteger();
         this.var_2872 = param1.readInteger();
         this.var_1685 = param1.readInteger();
         this.var_2811 = param1.readInteger();
         this.var_142 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2082);
      }
      
      public function get callId() : int
      {
         return this.var_2082;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2872;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1685;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2811;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_142;
      }
   }
}
