package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2071:int = 0;
      
      private var var_2070:int = 0;
      
      private var var_2409:int = 0;
      
      private var var_2410:Boolean = false;
      
      private var var_2408:Boolean = false;
      
      private var var_2407:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2071 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2070 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2409 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2410 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2408 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2407 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2071;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2070;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2409;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2410;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2408;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2407;
      }
   }
}
