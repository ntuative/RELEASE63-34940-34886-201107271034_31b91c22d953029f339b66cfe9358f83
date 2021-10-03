package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2315:int;
      
      private var var_1956:String;
      
      private var var_2317:String;
      
      private var var_2318:Boolean;
      
      private var var_2319:Boolean;
      
      private var var_2316:int;
      
      private var var_2314:String;
      
      private var var_2320:String;
      
      private var var_1903:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2315 = param1.readInteger();
         this.var_1956 = param1.readString();
         this.var_2317 = param1.readString();
         this.var_2318 = param1.readBoolean();
         this.var_2319 = param1.readBoolean();
         param1.readString();
         this.var_2316 = param1.readInteger();
         this.var_2314 = param1.readString();
         this.var_2320 = param1.readString();
         this.var_1903 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2315;
      }
      
      public function get avatarName() : String
      {
         return this.var_1956;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2317;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2318;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2319;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2316;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2314;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2320;
      }
      
      public function get realName() : String
      {
         return this.var_1903;
      }
   }
}
