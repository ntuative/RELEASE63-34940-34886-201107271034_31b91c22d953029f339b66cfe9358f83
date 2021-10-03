package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_404:int;
      
      private var var_923:Boolean;
      
      private var var_1051:String;
      
      private var _ownerName:String;
      
      private var var_2300:int;
      
      private var var_2599:int;
      
      private var var_2916:int;
      
      private var var_1802:String;
      
      private var var_2914:int;
      
      private var var_2441:Boolean;
      
      private var var_849:int;
      
      private var var_1535:int;
      
      private var var_2915:String;
      
      private var var_941:Array;
      
      private var var_2918:RoomThumbnailData;
      
      private var var_2305:Boolean;
      
      private var var_2917:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_941 = new Array();
         super();
         this.var_404 = param1.readInteger();
         this.var_923 = param1.readBoolean();
         this.var_1051 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2300 = param1.readInteger();
         this.var_2599 = param1.readInteger();
         this.var_2916 = param1.readInteger();
         this.var_1802 = param1.readString();
         this.var_2914 = param1.readInteger();
         this.var_2441 = param1.readBoolean();
         this.var_849 = param1.readInteger();
         this.var_1535 = param1.readInteger();
         this.var_2915 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_941.push(_loc4_);
            _loc3_++;
         }
         this.var_2918 = new RoomThumbnailData(param1);
         this.var_2305 = param1.readBoolean();
         this.var_2917 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_941 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_404;
      }
      
      public function get event() : Boolean
      {
         return this.var_923;
      }
      
      public function get roomName() : String
      {
         return this.var_1051;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2300;
      }
      
      public function get userCount() : int
      {
         return this.var_2599;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2916;
      }
      
      public function get description() : String
      {
         return this.var_1802;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2914;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2441;
      }
      
      public function get score() : int
      {
         return this.var_849;
      }
      
      public function get categoryId() : int
      {
         return this.var_1535;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2915;
      }
      
      public function get tags() : Array
      {
         return this.var_941;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2918;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2305;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2917;
      }
   }
}
