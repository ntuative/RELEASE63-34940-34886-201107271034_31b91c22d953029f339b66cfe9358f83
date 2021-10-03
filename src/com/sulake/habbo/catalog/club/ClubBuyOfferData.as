package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1402:int;
      
      private var var_2151:String;
      
      private var var_2035:int;
      
      private var _upgrade:Boolean;
      
      private var var_2827:Boolean;
      
      private var var_2831:int;
      
      private var var_2832:int;
      
      private var var_254:ICatalogPage;
      
      private var var_2828:int;
      
      private var var_2829:int;
      
      private var var_2830:int;
      
      private var var_1702:String;
      
      private var var_2951:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1402 = param1;
         this.var_2151 = param2;
         this.var_2035 = param3;
         this._upgrade = param4;
         this.var_2827 = param5;
         this.var_2831 = param6;
         this.var_2832 = param7;
         this.var_2828 = param8;
         this.var_2829 = param9;
         this.var_2830 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_254 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1702;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1702 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1402;
      }
      
      public function get productCode() : String
      {
         return this.var_2151;
      }
      
      public function get price() : int
      {
         return this.var_2035;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2827;
      }
      
      public function get periods() : int
      {
         return this.var_2831;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2832;
      }
      
      public function get year() : int
      {
         return this.var_2828;
      }
      
      public function get month() : int
      {
         return this.var_2829;
      }
      
      public function get day() : int
      {
         return this.var_2830;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_2035;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_254;
      }
      
      public function get priceType() : String
      {
         return Offer.const_877;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_2151;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_254 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2951;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2951 = param1;
      }
   }
}
