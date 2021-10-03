package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1551:Boolean;
      
      private var var_2978:int;
      
      private var var_2167:int;
      
      private var var_2166:int;
      
      private var var_2980:int;
      
      private var var_2979:int;
      
      private var var_2977:int;
      
      private var var_2547:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1551;
      }
      
      public function get commission() : int
      {
         return this.var_2978;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2167;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2166;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2979;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2980;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2977;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2547;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1551 = param1.readBoolean();
         this.var_2978 = param1.readInteger();
         this.var_2167 = param1.readInteger();
         this.var_2166 = param1.readInteger();
         this.var_2979 = param1.readInteger();
         this.var_2980 = param1.readInteger();
         this.var_2977 = param1.readInteger();
         this.var_2547 = param1.readInteger();
         return true;
      }
   }
}
