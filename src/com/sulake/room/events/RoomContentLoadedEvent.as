package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomContentLoadedEvent extends Event
   {
      
      public static const const_418:String = "RCLE_SUCCESS";
      
      public static const const_625:String = "RCLE_FAILURE";
      
      public static const const_883:String = "RCLE_CANCEL";
       
      
      private var var_3049:String;
      
      public function RoomContentLoadedEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_3049 = param2;
      }
      
      public function get contentType() : String
      {
         return this.var_3049;
      }
   }
}
