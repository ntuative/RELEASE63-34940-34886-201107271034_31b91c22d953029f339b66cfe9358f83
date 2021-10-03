package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1034:int;
      
      private var var_853:Boolean;
      
      private var var_1922:Boolean;
      
      private var var_671:String;
      
      private var var_1535:int;
      
      private var var_1904:String;
      
      private var var_1905:String;
      
      private var var_1903:String;
      
      private var var_3012:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1034 = param1.readInteger();
         this.var_853 = param1.readBoolean();
         this.var_1922 = param1.readBoolean();
         this.var_671 = param1.readString();
         this.var_1535 = param1.readInteger();
         this.var_1904 = param1.readString();
         this.var_1905 = param1.readString();
         this.var_1903 = param1.readString();
         this.var_3012 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1922;
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
      
      public function get facebookId() : String
      {
         return this.var_3012;
      }
   }
}
