package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_114:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_154:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_755:int = 2;
      
      public static const const_818:int = 3;
      
      public static const const_1926:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1904:String = "";
      
      private var var_2475:int;
      
      private var var_2474:int = 0;
      
      private var var_2477:int = 0;
      
      private var var_671:String = "";
      
      private var var_49:BitmapData = null;
      
      private var var_250:Array;
      
      private var var_1613:int = 0;
      
      private var var_2311:String = "";
      
      private var var_2310:int = 0;
      
      private var var_2309:int = 0;
      
      private var var_2132:Boolean = false;
      
      private var var_1903:String = "";
      
      private var var_2265:Boolean = false;
      
      private var var_2478:Boolean = false;
      
      private var var_2473:Boolean = true;
      
      private var var_1201:int = 0;
      
      private var var_2476:Boolean = false;
      
      private var var_2472:Boolean = false;
      
      private var var_2471:Boolean = false;
      
      private var var_2479:Boolean = false;
      
      private var var_2468:Boolean = false;
      
      private var var_2469:Boolean = false;
      
      private var var_2470:int = 0;
      
      private var var_2134:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_250 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1904 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1904;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2475 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2475;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2474 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2474;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2477 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2477;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_671 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_49 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_250 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_250;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1613 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1613;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2311 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2311;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2478 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2478;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1201 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1201;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2476 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2476;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2472 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2472;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2471 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2471;
      }
      
      public function set name_3(param1:Boolean) : void
      {
         this.var_2479 = param1;
      }
      
      public function get name_3() : Boolean
      {
         return this.var_2479;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2468 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2468;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2469 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2469;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2470 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2470;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2473 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2473;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2134 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2134;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2310;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2309;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2132 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2132;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1903 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1903;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2265;
      }
   }
}
