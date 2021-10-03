package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1467:Boolean;
      
      private var var_1924:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1467;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1924;
      }
      
      public function flush() : Boolean
      {
         this.var_1467 = false;
         this.var_1924 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1467 = param1.readInteger() > 0;
         this.var_1924 = param1.readInteger();
         return true;
      }
   }
}
