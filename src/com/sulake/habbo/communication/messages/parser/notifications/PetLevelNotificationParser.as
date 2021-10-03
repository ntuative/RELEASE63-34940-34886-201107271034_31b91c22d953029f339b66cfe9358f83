package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1752:int;
      
      private var var_2398:String;
      
      private var var_1409:int;
      
      private var var_1166:int;
      
      private var var_1733:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1752 = param1.readInteger();
         this.var_2398 = param1.readString();
         this.var_1409 = param1.readInteger();
         this.var_1166 = param1.readInteger();
         this.var_1733 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1752;
      }
      
      public function get petName() : String
      {
         return this.var_2398;
      }
      
      public function get level() : int
      {
         return this.var_1409;
      }
      
      public function get petType() : int
      {
         return this.var_1166;
      }
      
      public function get breed() : int
      {
         return this.var_1733;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
