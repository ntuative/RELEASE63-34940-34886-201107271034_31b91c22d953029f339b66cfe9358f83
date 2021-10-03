package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2976:int;
      
      private var var_2164:Boolean;
      
      private var var_2165:Boolean;
      
      private var var_48:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_48 = param4;
         this.var_2976 = param1;
         this.var_2164 = param2;
         this.var_2165 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2976;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_2164;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_2165;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_2164 || this.var_2165;
      }
      
      public function get border() : Boolean
      {
         return this.var_48;
      }
   }
}
