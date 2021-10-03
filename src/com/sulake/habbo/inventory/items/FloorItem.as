package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2268:String;
      
      protected var var_1633:Number;
      
      protected var var_3059:Boolean;
      
      protected var var_3057:Boolean;
      
      protected var var_2782:Boolean;
      
      protected var var_2945:Boolean;
      
      protected var var_3058:int;
      
      protected var var_2778:int;
      
      protected var var_2779:int;
      
      protected var var_2783:int;
      
      protected var var_1931:String;
      
      protected var var_1473:int;
      
      protected var var_1089:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2782 = param5;
         this.var_3057 = param6;
         this.var_3059 = param7;
         this.var_2945 = param8;
         this.var_2268 = param9;
         this.var_1633 = param10;
         this.var_3058 = param11;
         this.var_2778 = param12;
         this.var_2779 = param13;
         this.var_2783 = param14;
         this.var_1931 = param15;
         this.var_1473 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2268;
      }
      
      public function get extra() : Number
      {
         return this.var_1633;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3059;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3057;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2782;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2945;
      }
      
      public function get expires() : int
      {
         return this.var_3058;
      }
      
      public function get creationDay() : int
      {
         return this.var_2778;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2779;
      }
      
      public function get creationYear() : int
      {
         return this.var_2783;
      }
      
      public function get slotId() : String
      {
         return this.var_1931;
      }
      
      public function get songId() : int
      {
         return this.var_1473;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1089 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1089;
      }
   }
}
