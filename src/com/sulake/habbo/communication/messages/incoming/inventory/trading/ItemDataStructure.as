package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2508:int;
      
      private var var_1628:String;
      
      private var var_2781:int;
      
      private var var_2780:int;
      
      private var _category:int;
      
      private var var_2268:String;
      
      private var var_1633:int;
      
      private var var_2777:int;
      
      private var var_2778:int;
      
      private var var_2779:int;
      
      private var var_2783:int;
      
      private var var_2782:Boolean;
      
      private var var_3132:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2508 = param1;
         this.var_1628 = param2;
         this.var_2781 = param3;
         this.var_2780 = param4;
         this._category = param5;
         this.var_2268 = param6;
         this.var_1633 = param7;
         this.var_2777 = param8;
         this.var_2778 = param9;
         this.var_2779 = param10;
         this.var_2783 = param11;
         this.var_2782 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2508;
      }
      
      public function get itemType() : String
      {
         return this.var_1628;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2781;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2780;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2268;
      }
      
      public function get extra() : int
      {
         return this.var_1633;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2777;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2782;
      }
      
      public function get songID() : int
      {
         return this.var_1633;
      }
   }
}
