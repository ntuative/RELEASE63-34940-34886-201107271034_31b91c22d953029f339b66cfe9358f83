package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2974:int;
      
      private var var_2970:int;
      
      private var var_853:Boolean;
      
      private var var_2973:int;
      
      private var var_2971:int;
      
      private var var_2972:int;
      
      private var var_2969:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2974 = param1.readInteger();
         this.var_2970 = param1.readInteger();
         this.var_853 = param1.readBoolean();
         this.var_2973 = param1.readInteger();
         this.var_2971 = param1.readInteger();
         this.var_2972 = param1.readInteger();
         this.var_2969 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2974;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2970;
      }
      
      public function get online() : Boolean
      {
         return this.var_853;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2973;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2971;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2972;
      }
      
      public function get banCount() : int
      {
         return this.var_2969;
      }
   }
}
