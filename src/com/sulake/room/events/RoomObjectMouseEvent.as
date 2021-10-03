package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_159:String = "ROE_MOUSE_CLICK";
      
      public static const const_181:String = "ROE_MOUSE_ENTER";
      
      public static const const_548:String = "ROE_MOUSE_MOVE";
      
      public static const const_191:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2215:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_665:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2143:String = "";
      
      private var var_2725:Boolean;
      
      private var var_2723:Boolean;
      
      private var var_2726:Boolean;
      
      private var var_2720:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2143 = param2;
         this.var_2725 = param5;
         this.var_2723 = param6;
         this.var_2726 = param7;
         this.var_2720 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2143;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2725;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2723;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2726;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2720;
      }
   }
}
