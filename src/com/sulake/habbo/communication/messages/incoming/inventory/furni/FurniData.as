package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2538:int;
      
      private var var_1628:String;
      
      private var _objId:int;
      
      private var var_2204:int;
      
      private var _category:int;
      
      private var var_2268:String;
      
      private var var_2836:Boolean;
      
      private var var_2838:Boolean;
      
      private var var_2837:Boolean;
      
      private var var_2796:Boolean;
      
      private var var_2701:int;
      
      private var var_1633:int;
      
      private var var_1931:String = "";
      
      private var var_1473:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2538 = param1;
         this.var_1628 = param2;
         this._objId = param3;
         this.var_2204 = param4;
         this._category = param5;
         this.var_2268 = param6;
         this.var_2836 = param7;
         this.var_2838 = param8;
         this.var_2837 = param9;
         this.var_2796 = param10;
         this.var_2701 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1931 = param1;
         this.var_1633 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2538;
      }
      
      public function get itemType() : String
      {
         return this.var_1628;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2204;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2268;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2836;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2838;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2837;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2796;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2701;
      }
      
      public function get slotId() : String
      {
         return this.var_1931;
      }
      
      public function get songId() : int
      {
         return this.var_1473;
      }
      
      public function get extra() : int
      {
         return this.var_1633;
      }
   }
}
