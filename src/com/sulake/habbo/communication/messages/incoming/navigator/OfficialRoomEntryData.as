package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1292:int = 1;
      
      public static const const_1020:int = 2;
      
      public static const const_761:int = 3;
      
      public static const const_1935:int = 4;
       
      
      private var _index:int;
      
      private var var_2597:String;
      
      private var var_2601:String;
      
      private var var_2598:Boolean;
      
      private var var_2596:String;
      
      private var var_974:String;
      
      private var var_2600:int;
      
      private var var_2599:int;
      
      private var _type:int;
      
      private var var_2445:String;
      
      private var var_1033:GuestRoomData;
      
      private var var_1032:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2597 = param1.readString();
         this.var_2601 = param1.readString();
         this.var_2598 = param1.readInteger() == 1;
         this.var_2596 = param1.readString();
         this.var_974 = param1.readString();
         this.var_2600 = param1.readInteger();
         this.var_2599 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1292)
         {
            this.var_2445 = param1.readString();
         }
         else if(this._type == const_761)
         {
            this.var_1032 = new PublicRoomData(param1);
         }
         else if(this._type == const_1020)
         {
            this.var_1033 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1033 != null)
         {
            this.var_1033.dispose();
            this.var_1033 = null;
         }
         if(this.var_1032 != null)
         {
            this.var_1032.dispose();
            this.var_1032 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2597;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2601;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2598;
      }
      
      public function get picText() : String
      {
         return this.var_2596;
      }
      
      public function get picRef() : String
      {
         return this.var_974;
      }
      
      public function get folderId() : int
      {
         return this.var_2600;
      }
      
      public function get tag() : String
      {
         return this.var_2445;
      }
      
      public function get userCount() : int
      {
         return this.var_2599;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1033;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1032;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1292)
         {
            return 0;
         }
         if(this.type == const_1020)
         {
            return this.var_1033.maxUserCount;
         }
         if(this.type == const_761)
         {
            return this.var_1032.maxUsers;
         }
         return 0;
      }
   }
}
