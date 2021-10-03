package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosingMessageParser implements IMessageParser
   {
       
      
      private var var_1766:int;
      
      public function InfoHotelClosingMessageParser()
      {
         super();
      }
      
      public function get minutesUntilClosing() : int
      {
         return this.var_1766;
      }
      
      public function flush() : Boolean
      {
         this.var_1766 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1766 = param1.readInteger();
         return true;
      }
   }
}
