package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2516:int;
      
      private var var_2690:int;
      
      private var var_2688:int;
      
      private var _dayOffsets:Array;
      
      private var var_1993:Array;
      
      private var var_1992:Array;
      
      private var var_2687:int;
      
      private var var_2689:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2516 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2690 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2688 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1993 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1992 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2687 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2689 = param1;
      }
   }
}
