package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferExtendData extends ClubOfferData
   {
       
      
      private var var_2072:int;
      
      private var var_2854:int;
      
      public function ClubOfferExtendData(param1:IMessageDataWrapper)
      {
         super(param1);
         this.var_2072 = param1.readInteger();
         this.var_2854 = param1.readInteger();
      }
      
      public function get originalPrice() : int
      {
         return this.var_2072;
      }
      
      public function get method_9() : int
      {
         return this.var_2072 - this.price;
      }
      
      public function get subscriptionDaysLeft() : int
      {
         return this.var_2854;
      }
   }
}
