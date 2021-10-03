package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1259:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1034:int;
      
      private var var_853:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var var_671:String;
      
      private var var_1535:int;
      
      private var var_1904:String;
      
      private var var_1905:String;
      
      private var var_1903:String;
      
      private var var_1011:Vector.<FriendNotification>;
      
      private var var_2570:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1903 = param3;
         this.var_1904 = param4;
         this.var_1034 = param5;
         this.var_853 = param6;
         this._allowFollow = param7;
         this.var_671 = param8;
         this.var_1535 = param9;
         this.var_1905 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1034;
      }
      
      public function get online() : Boolean
      {
         return this.var_853;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get categoryId() : int
      {
         return this.var_1535;
      }
      
      public function get motto() : String
      {
         return this.var_1904;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1905;
      }
      
      public function get realName() : String
      {
         return this.var_1903;
      }
      
      public function get logEventId() : int
      {
         return this.var_2570;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1011)
         {
            this.var_1011 = new Vector.<FriendNotification>();
         }
         return this.var_1011;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1034 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_853 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_671 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1535 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1904 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1905 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1903 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2570 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1259;
      }
   }
}
