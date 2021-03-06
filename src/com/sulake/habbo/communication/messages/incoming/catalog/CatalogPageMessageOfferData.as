package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1402:int;
      
      private var var_1928:String;
      
      private var var_1264:int;
      
      private var var_1265:int;
      
      private var var_1927:int;
      
      private var var_1799:int;
      
      private var var_1207:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1402 = param1.readInteger();
         this.var_1928 = param1.readString();
         this.var_1264 = param1.readInteger();
         this.var_1265 = param1.readInteger();
         this.var_1927 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1207 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1207.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1799 = param1.readInteger();
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
      
      public function get products() : Array
      {
         return this.var_1207;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1927;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1799;
      }
   }
}
