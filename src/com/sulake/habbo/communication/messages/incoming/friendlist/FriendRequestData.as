package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1301:int;
      
      private var var_2392:String;
      
      private var var_2393:int;
      
      private var var_2901:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1301 = param1.readInteger();
         this.var_2392 = param1.readString();
         this.var_2901 = param1.readString();
         this.var_2393 = this.var_1301;
      }
      
      public function get requestId() : int
      {
         return this.var_1301;
      }
      
      public function get requesterName() : String
      {
         return this.var_2392;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2393;
      }
      
      public function get figureString() : String
      {
         return this.var_2901;
      }
   }
}
