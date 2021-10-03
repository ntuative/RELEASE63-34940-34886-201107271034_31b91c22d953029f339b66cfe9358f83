package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_510:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_239:int;
      
      private var var_501:String;
      
      private var var_1432:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_239 = param2;
         this.var_501 = param3;
         this.var_1432 = param4;
      }
      
      public function get location() : String
      {
         return this.var_501;
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get objectType() : String
      {
         return this.var_1432;
      }
   }
}
