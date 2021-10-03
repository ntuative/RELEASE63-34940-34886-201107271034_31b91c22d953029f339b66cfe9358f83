package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_536:int = 0;
      
      public static const const_210:int = 1;
      
      public static const const_124:int = 2;
      
      public static const const_996:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1802:String;
      
      private var var_2300:int;
      
      private var var_1535:int;
      
      private var var_2304:int;
      
      private var var_2303:int;
      
      private var var_941:Array;
      
      private var var_2306:Array;
      
      private var var_2297:int;
      
      private var var_2305:Boolean;
      
      private var var_2307:Boolean;
      
      private var var_2298:Boolean;
      
      private var var_2301:Boolean;
      
      private var var_2299:int;
      
      private var var_2302:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2305;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2305 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2307;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2307 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2298;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2298 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2301;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2299;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2302;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2302 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1802;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1802 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2300;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1535;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1535 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2304;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2304 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2303;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_941 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2306;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2306 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2297;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2297 = param1;
      }
   }
}
