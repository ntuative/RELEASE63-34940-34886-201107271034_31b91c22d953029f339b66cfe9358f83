package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1402:int;
      
      private var var_2151:String;
      
      private var var_2035:int;
      
      private var _upgrade:Boolean;
      
      private var var_2827:Boolean;
      
      private var var_2831:int;
      
      private var var_2832:int;
      
      private var var_2828:int;
      
      private var var_2829:int;
      
      private var var_2830:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1402 = param1.readInteger();
         this.var_2151 = param1.readString();
         this.var_2035 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2827 = param1.readBoolean();
         this.var_2831 = param1.readInteger();
         this.var_2832 = param1.readInteger();
         this.var_2828 = param1.readInteger();
         this.var_2829 = param1.readInteger();
         this.var_2830 = param1.readInteger();
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
   }
}
