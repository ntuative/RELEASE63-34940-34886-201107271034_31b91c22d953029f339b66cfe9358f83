package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_1011:int = 1;
      
      public static const const_771:int = 2;
      
      public static const const_785:int = 3;
      
      public static const const_1259:int = 4;
      
      public static const const_943:int = 5;
      
      public static const const_1284:int = 6;
       
      
      private var _type:int;
      
      private var var_1389:int;
      
      private var var_2764:String;
      
      private var var_2765:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1389 = param2;
         this.var_2764 = param3;
         this.var_2765 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2764;
      }
      
      public function get time() : String
      {
         return this.var_2765;
      }
      
      public function get senderId() : int
      {
         return this.var_1389;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
