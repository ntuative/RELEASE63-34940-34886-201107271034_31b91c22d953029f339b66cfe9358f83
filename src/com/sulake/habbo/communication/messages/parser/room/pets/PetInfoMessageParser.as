package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1752:int;
      
      private var _name:String;
      
      private var var_1409:int;
      
      private var var_2353:int;
      
      private var var_2358:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_671:String;
      
      private var var_2355:int;
      
      private var var_2354:int;
      
      private var var_2356:int;
      
      private var var_2357:int;
      
      private var var_2359:int;
      
      private var _ownerName:String;
      
      private var var_533:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1752;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1409;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2353;
      }
      
      public function get experience() : int
      {
         return this.var_2358;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2355;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2354;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2356;
      }
      
      public function get respect() : int
      {
         return this.var_2357;
      }
      
      public function get ownerId() : int
      {
         return this.var_2359;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_533;
      }
      
      public function flush() : Boolean
      {
         this.var_1752 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1752 = param1.readInteger();
         this._name = param1.readString();
         this.var_1409 = param1.readInteger();
         this.var_2353 = param1.readInteger();
         this.var_2358 = param1.readInteger();
         this.var_2355 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2354 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2356 = param1.readInteger();
         this.var_671 = param1.readString();
         this.var_2357 = param1.readInteger();
         this.var_2359 = param1.readInteger();
         this.var_533 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
