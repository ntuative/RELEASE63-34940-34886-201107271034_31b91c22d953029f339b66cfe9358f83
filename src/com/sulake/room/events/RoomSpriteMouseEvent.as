package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2143:String = "";
      
      private var var_2125:String = "";
      
      private var var_2608:String = "";
      
      private var var_2722:Number = 0;
      
      private var var_2721:Number = 0;
      
      private var var_2724:Number = 0;
      
      private var var_2719:Number = 0;
      
      private var var_2723:Boolean = false;
      
      private var var_2725:Boolean = false;
      
      private var var_2726:Boolean = false;
      
      private var var_2720:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2143 = param2;
         this.var_2125 = param3;
         this.var_2608 = param4;
         this.var_2722 = param5;
         this.var_2721 = param6;
         this.var_2724 = param7;
         this.var_2719 = param8;
         this.var_2723 = param9;
         this.var_2725 = param10;
         this.var_2726 = param11;
         this.var_2720 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2143;
      }
      
      public function get canvasId() : String
      {
         return this.var_2125;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2608;
      }
      
      public function get screenX() : Number
      {
         return this.var_2722;
      }
      
      public function get screenY() : Number
      {
         return this.var_2721;
      }
      
      public function get localX() : Number
      {
         return this.var_2724;
      }
      
      public function get localY() : Number
      {
         return this.var_2719;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2723;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2725;
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
