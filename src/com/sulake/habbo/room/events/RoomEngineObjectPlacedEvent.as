package com.sulake.habbo.room.events
{
   public class RoomEngineObjectPlacedEvent extends RoomEngineObjectEvent
   {
       
      
      private var var_2174:String = "";
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_183:Number = 0;
      
      private var _direction:int = 0;
      
      private var var_2451:Boolean = false;
      
      private var var_2452:Boolean = false;
      
      private var var_2450:Boolean = false;
      
      private var var_2449:String = null;
      
      public function RoomEngineObjectPlacedEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:int, param11:Boolean, param12:Boolean, param13:Boolean, param14:String, param15:Boolean = false, param16:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param15,param16);
         this.var_2174 = param6;
         this._x = param7;
         this.var_182 = param8;
         this.var_183 = param9;
         this._direction = param10;
         this.var_2451 = param11;
         this.var_2452 = param12;
         this.var_2450 = param13;
         this.var_2449 = param14;
      }
      
      public function get wallLocation() : String
      {
         return this.var_2174;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_182;
      }
      
      public function get z() : Number
      {
         return this.var_183;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get placedInRoom() : Boolean
      {
         return this.var_2451;
      }
      
      public function get placedOnFloor() : Boolean
      {
         return this.var_2452;
      }
      
      public function get placedOnWall() : Boolean
      {
         return this.var_2450;
      }
      
      public function get instanceData() : String
      {
         return this.var_2449;
      }
   }
}
