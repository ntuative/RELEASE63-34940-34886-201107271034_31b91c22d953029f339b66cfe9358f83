package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectItemDataUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_2088:String;
      
      public function RoomObjectItemDataUpdateMessage(param1:String)
      {
         super(null,null);
         this.var_2088 = param1;
      }
      
      public function get itemData() : String
      {
         return this.var_2088;
      }
   }
}
