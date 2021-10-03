package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_2886:Number = 0;
      
      private var var_2882:Number = 0;
      
      private var var_2883:Number = 0;
      
      private var var_2885:Number = 0;
      
      private var var_499:int = 0;
      
      private var var_2881:int = 0;
      
      private var var_364:Array;
      
      private var var_2884:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_364 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_182 = param3;
         this.var_183 = param4;
         this.var_2886 = param5;
         this.var_499 = param6;
         this.var_2881 = param7;
         this.var_2882 = param8;
         this.var_2883 = param9;
         this.var_2885 = param10;
         this.var_2884 = param11;
         this.var_364 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get localZ() : Number
      {
         return this.var_2886;
      }
      
      public function get targetX() : Number
      {
         return this.var_2882;
      }
      
      public function get targetY() : Number
      {
         return this.var_2883;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2885;
      }
      
      public function get dir() : int
      {
         return this.var_499;
      }
      
      public function get dirHead() : int
      {
         return this.var_2881;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2884;
      }
      
      public function get actions() : Array
      {
         return this.var_364.slice();
      }
   }
}
