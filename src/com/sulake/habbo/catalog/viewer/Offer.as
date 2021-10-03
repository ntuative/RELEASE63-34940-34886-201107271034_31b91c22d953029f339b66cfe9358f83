package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1762:String = "pricing_model_unknown";
      
      public static const const_441:String = "pricing_model_single";
      
      public static const const_442:String = "pricing_model_multi";
      
      public static const const_493:String = "pricing_model_bundle";
      
      public static const const_1786:String = "price_type_none";
      
      public static const const_877:String = "price_type_credits";
      
      public static const const_1219:String = "price_type_activitypoints";
      
      public static const const_1308:String = "price_type_credits_and_activitypoints";
       
      
      private var var_842:String;
      
      private var var_1263:String;
      
      private var var_1402:int;
      
      private var var_1928:String;
      
      private var var_1264:int;
      
      private var var_1265:int;
      
      private var var_1927:int;
      
      private var var_254:ICatalogPage;
      
      private var var_669:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1799:int = 0;
      
      private var var_2595:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1402 = param1;
         this.var_1928 = param2;
         this.var_1264 = param3;
         this.var_1265 = param4;
         this.var_1927 = param5;
         this.var_254 = param8;
         this.var_1799 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1799;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_254;
      }
      
      public function get offerId() : int
      {
         return this.var_1402;
      }
      
      public function get localizationId() : String
      {
         return this.var_1928;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1265;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1927;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_669;
      }
      
      public function get pricingModel() : String
      {
         return this.var_842;
      }
      
      public function get priceType() : String
      {
         return this.var_1263;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2595;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2595 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1402 = 0;
         this.var_1928 = "";
         this.var_1264 = 0;
         this.var_1265 = 0;
         this.var_1927 = 0;
         this.var_254 = null;
         if(this.var_669 != null)
         {
            this.var_669.dispose();
            this.var_669 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_842)
         {
            case const_441:
               this.var_669 = new SingleProductContainer(this,param1);
               break;
            case const_442:
               this.var_669 = new MultiProductContainer(this,param1);
               break;
            case const_493:
               this.var_669 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_842);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_842 = const_441;
            }
            else
            {
               this.var_842 = const_442;
            }
         }
         else if(param1.length > 1)
         {
            this.var_842 = const_493;
         }
         else
         {
            this.var_842 = const_1762;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1264 > 0 && this.var_1265 > 0)
         {
            this.var_1263 = const_1308;
         }
         else if(this.var_1264 > 0)
         {
            this.var_1263 = const_877;
         }
         else if(this.var_1265 > 0)
         {
            this.var_1263 = const_1219;
         }
         else
         {
            this.var_1263 = const_1786;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_254.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_669.products)
         {
            _loc4_ = this.var_254.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
