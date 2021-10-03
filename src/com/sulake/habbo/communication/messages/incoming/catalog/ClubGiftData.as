package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1402:int;
      
      private var var_2326:Boolean;
      
      private var var_2327:Boolean;
      
      private var var_2325:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1402 = param1.readInteger();
         this.var_2326 = param1.readBoolean();
         this.var_2325 = param1.readInteger();
         this.var_2327 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1402;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2326;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2327;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2325;
      }
   }
}
