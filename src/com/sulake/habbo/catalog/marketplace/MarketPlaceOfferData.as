package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_111:int = 1;
      
      public static const const_72:int = 2;
       
      
      private var var_1402:int;
      
      private var _furniId:int;
      
      private var var_2517:int;
      
      private var var_2268:String;
      
      private var var_2035:int;
      
      private var var_2516:int;
      
      private var var_2776:int;
      
      private var var_432:int;
      
      private var var_2515:int = -1;
      
      private var var_2034:int;
      
      private var var_49:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1402 = param1;
         this._furniId = param2;
         this.var_2517 = param3;
         this.var_2268 = param4;
         this.var_2035 = param5;
         this.var_432 = param6;
         this.var_2516 = param7;
         this.var_2034 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_49)
         {
            this.var_49.dispose();
            this.var_49 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1402;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2517;
      }
      
      public function get stuffData() : String
      {
         return this.var_2268;
      }
      
      public function get price() : int
      {
         return this.var_2035;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2516;
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_49 != null)
         {
            this.var_49.dispose();
         }
         this.var_49 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2776 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2776;
      }
      
      public function get status() : int
      {
         return this.var_432;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2515;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2515 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_2035 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1402 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_2034;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2034 = param1;
      }
   }
}
