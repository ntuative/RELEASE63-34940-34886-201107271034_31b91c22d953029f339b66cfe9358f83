package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2336:int;
      
      private var var_2793:int;
      
      private var var_1264:int;
      
      private var var_1265:int;
      
      private var var_1927:int;
      
      private var var_2792:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2336 = param1.readInteger();
         this.var_2793 = param1.readInteger();
         this.var_1264 = param1.readInteger();
         this.var_1265 = param1.readInteger();
         this.var_1927 = param1.readInteger();
         this.var_2792 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2336;
      }
      
      public function get charges() : int
      {
         return this.var_2793;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1265;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2792;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1927;
      }
   }
}
