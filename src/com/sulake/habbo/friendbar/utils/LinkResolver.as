package com.sulake.habbo.friendbar.utils
{
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarData;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarView;
   import com.sulake.habbo.friendbar.view.IHabboFriendBarView;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.enum.InventoryCategory;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.IUserData;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDRoomEngine;
   
   public class LinkResolver
   {
      
      private static var _UNKNOWN:IUnknown;
       
      
      public function LinkResolver()
      {
         super();
      }
      
      public static function set unknown(param1:IUnknown) : void
      {
         _UNKNOWN = param1;
      }
      
      public static function open(param1:LinkTarget) : void
      {
         var ownAvatarId:int = 0;
         var userData:IUserData = null;
         var roomId:int = 0;
         var roomCategory:int = 0;
         var linkTarget:LinkTarget = param1;
         if(!_UNKNOWN || false)
         {
            return;
         }
         if(!linkTarget)
         {
            return;
         }
         switch(linkTarget.type)
         {
            case LinkTarget.NONE:
               break;
            case LinkTarget.const_1230:
               _UNKNOWN.queueInterface(new IIDHabboFriendList(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboFriendList(param2).openFriendList();
                  param2.release(param1);
               });
               break;
            case LinkTarget.ROOM:
               _UNKNOWN.queueInterface(new IIDHabboNavigator(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboNavigator(param2).goToRoom(linkTarget.identifier,false);
                  param2.release(param1);
               });
               break;
            case LinkTarget.ACHIEVEMENTS:
               _UNKNOWN.queueInterface(new IIDHabboInventory(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboInventory(param2).toggleInventoryPage(InventoryCategory.const_228);
                  param2.release(param1);
               });
               break;
            case LinkTarget.const_1377:
               ownAvatarId = linkTarget.identifier;
               roomId = 0;
               roomCategory = 0;
               _UNKNOWN.queueInterface(new IIDRoomEngine(),function(param1:IID, param2:IUnknown):void
               {
                  roomId = IRoomEngine(param2).activeRoomId;
                  roomCategory = IRoomEngine(param2).activeRoomCategory;
                  param2.release(param1);
               });
               _UNKNOWN.queueInterface(new IIDHabboRoomSessionManager(),function(param1:IID, param2:IUnknown):void
               {
                  userData = IRoomSessionManager(param2).getSession(roomId,roomCategory).userDataManager.getUserData(ownAvatarId);
                  param2.release(param1);
               });
               _UNKNOWN.queueInterface(new IIDRoomEngine(),function(param1:IID, param2:IUnknown):void
               {
                  IRoomEngine(param2).selectAvatar(roomId,roomCategory,userData.id,true);
                  param2.release(param1);
               });
               _UNKNOWN.queueInterface(new IIDHabboFriendBarData(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboFriendBarData(param2).toggleOfflineStream();
                  param2.release(param1);
               });
               break;
            case LinkTarget.const_95:
               _UNKNOWN.queueInterface(new IIDHabboFriendList(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboFriendList(param2).askForAFriend(linkTarget.identifier,linkTarget.extraData);
                  IHabboFriendList(param2).openFriendList();
                  param2.release(param1);
               });
               _UNKNOWN.queueInterface(new IIDHabboFriendBarView(),function(param1:IID, param2:IUnknown):void
               {
                  IHabboFriendBarView(param2).refreshEventStream();
                  param2.release(param1);
               });
               break;
            default:
               throw new Error("Don\'t forget to implement new link target types!");
         }
      }
   }
}
