package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_114:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_114 = new RoomSettingsData();
         this.var_114.roomId = param1.readInteger();
         this.var_114.name = param1.readString();
         this.var_114.description = param1.readString();
         this.var_114.doorMode = param1.readInteger();
         this.var_114.categoryId = param1.readInteger();
         this.var_114.maximumVisitors = param1.readInteger();
         this.var_114.maximumVisitorsLimit = param1.readInteger();
         this.var_114.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_114.tags.push(param1.readString());
            _loc3_++;
         }
         this.var_114.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.var_114.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         this.var_114.controllerCount = param1.readInteger();
         this.var_114.allowPets = param1.readInteger() == 1;
         this.var_114.allowFoodConsume = param1.readInteger() == 1;
         this.var_114.allowWalkThrough = param1.readInteger() == 1;
         this.var_114.hideWalls = param1.readInteger() == 1;
         this.var_114.wallThickness = param1.readInteger();
         this.var_114.floorThickness = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_114 = null;
         return true;
      }
      
      public function get data() : RoomSettingsData
      {
         return this.var_114;
      }
   }
}
