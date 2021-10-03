package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceBuyOfferResultParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_3023:int = -1;
      
      private var var_3021:int = -1;
      
      private var var_3022:int = -1;
      
      public function MarketplaceBuyOfferResultParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get offerId() : int
      {
         return this.var_3023;
      }
      
      public function get newPrice() : int
      {
         return this.var_3021;
      }
      
      public function get requestedOfferId() : int
      {
         return this.var_3022;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_3023 = param1.readInteger();
         this.var_3021 = param1.readInteger();
         this.var_3022 = param1.readInteger();
         return true;
      }
   }
}
