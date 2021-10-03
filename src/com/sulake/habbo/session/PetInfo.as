package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1752:int;
      
      private var var_1409:int;
      
      private var var_2526:int;
      
      private var var_2358:int;
      
      private var var_2527:int;
      
      private var _energy:int;
      
      private var var_2529:int;
      
      private var _nutrition:int;
      
      private var var_2528:int;
      
      private var var_2359:int;
      
      private var _ownerName:String;
      
      private var var_2357:int;
      
      private var var_533:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1752;
      }
      
      public function get level() : int
      {
         return this.var_1409;
      }
      
      public function get levelMax() : int
      {
         return this.var_2526;
      }
      
      public function get experience() : int
      {
         return this.var_2358;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2527;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2529;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2528;
      }
      
      public function get ownerId() : int
      {
         return this.var_2359;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2357;
      }
      
      public function get age() : int
      {
         return this.var_533;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1752 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1409 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2526 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2527 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2529 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2528 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2357 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_533 = param1;
      }
   }
}
