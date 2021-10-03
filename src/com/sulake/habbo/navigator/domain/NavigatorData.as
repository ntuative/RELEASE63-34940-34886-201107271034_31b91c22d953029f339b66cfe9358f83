package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2134:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_231:MsgWithRequestId;
      
      private var var_739:RoomEventData;
      
      private var var_2963:Boolean;
      
      private var var_2960:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2315:int;
      
      private var var_306:GuestRoomData;
      
      private var var_1128:PublicRoomShortData;
      
      private var var_2958:int;
      
      private var var_2955:Boolean;
      
      private var var_2957:int;
      
      private var var_2962:Boolean;
      
      private var var_2153:int;
      
      private var var_2961:Boolean;
      
      private var var_1604:Array;
      
      private var var_1679:Array;
      
      private var var_2953:int;
      
      private var var_1678:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1371:Boolean;
      
      private var var_2954:int;
      
      private var var_2956:Boolean;
      
      private var var_2959:int = 0;
      
      private var var_2152:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1604 = new Array();
         this.var_1679 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_306 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_306 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1128 = null;
         this.var_306 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1128 = param1.publicSpace;
            this.var_739 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_739 != null)
         {
            this.var_739.dispose();
            this.var_739 = null;
         }
         if(this.var_1128 != null)
         {
            this.var_1128.dispose();
            this.var_1128 = null;
         }
         if(this.var_306 != null)
         {
            this.var_306.dispose();
            this.var_306 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_306 != null)
         {
            this.var_306.dispose();
         }
         this.var_306 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_739 != null)
         {
            this.var_739.dispose();
         }
         this.var_739 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_231 != null && this.var_231 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_2152 = param1.ad;
         this.var_1371 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_1371 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_231 = param1;
         this.var_1371 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_231 == null)
         {
            return;
         }
         this.var_231.dispose();
         this.var_231 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2152 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2152;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_231 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_231 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_231 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_739;
      }
      
      public function get avatarId() : int
      {
         return this.var_2315;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2963;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2960;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_306;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1128;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2955;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2957;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2153;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2962;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2954;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2958;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2961;
      }
      
      public function get adIndex() : int
      {
         return this.var_2959;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2956;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2315 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2957 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2955 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2963 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2960 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2962 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2153 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2954 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2958 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2961 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2959 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2956 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1604 = param1;
         this.var_1679 = new Array();
         for each(_loc2_ in this.var_1604)
         {
            if(_loc2_.visible)
            {
               this.var_1679.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1604;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1679;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2953 = param1.limit;
         this.var_1678 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1678 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_306.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_306 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_306.flatId;
         return this.var_2153 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1678 >= this.var_2953;
      }
      
      public function startLoading() : void
      {
         this.var_1371 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1371;
      }
   }
}
