package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1628:int;
      
      private var var_2058:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         this.var_1628 = param1;
         this.var_2058 = param2;
      }
      
      public function get itemType() : int
      {
         return this.var_1628;
      }
      
      public function get itemName() : String
      {
         return this.var_2058;
      }
   }
}
