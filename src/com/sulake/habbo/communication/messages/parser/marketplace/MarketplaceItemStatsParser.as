package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2516:int;
      
      private var var_2690:int;
      
      private var var_2688:int;
      
      private var _dayOffsets:Array;
      
      private var var_1993:Array;
      
      private var var_1992:Array;
      
      private var var_2687:int;
      
      private var var_2689:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2516;
      }
      
      public function get offerCount() : int
      {
         return this.var_2690;
      }
      
      public function get historyLength() : int
      {
         return this.var_2688;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1993;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1992;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2687;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2689;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2516 = param1.readInteger();
         this.var_2690 = param1.readInteger();
         this.var_2688 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1993 = [];
         this.var_1992 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1993.push(param1.readInteger());
            this.var_1992.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2689 = param1.readInteger();
         this.var_2687 = param1.readInteger();
         return true;
      }
   }
}
