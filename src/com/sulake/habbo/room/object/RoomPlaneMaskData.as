package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2460:Number = 0.0;
      
      private var var_2461:Number = 0.0;
      
      private var var_2459:Number = 0.0;
      
      private var var_2458:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2460 = param1;
         this.var_2461 = param2;
         this.var_2459 = param3;
         this.var_2458 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2460;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2461;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2459;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2458;
      }
   }
}
