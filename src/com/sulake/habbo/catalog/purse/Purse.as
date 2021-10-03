package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_2196:int = 0;
      
      private var var_1638:Dictionary;
      
      private var var_2071:int = 0;
      
      private var var_2070:int = 0;
      
      private var var_2408:Boolean = false;
      
      private var var_2623:int = 0;
      
      private var var_2626:int = 0;
      
      private var var_2407:Boolean = false;
      
      public function Purse()
      {
         this.var_1638 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2196;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2071;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2071 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2070;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2070 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2071 > 0 || this.var_2070 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2408;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2407;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2407 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2408 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2623;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2623 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2626;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2626 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1638;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1638 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1638[param1];
      }
   }
}
