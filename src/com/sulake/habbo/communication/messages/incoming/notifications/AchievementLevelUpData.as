package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1409:int;
      
      private var var_1938:int;
      
      private var var_2457:int;
      
      private var var_2456:int;
      
      private var var_2747:int;
      
      private var var_1885:int;
      
      private var var_2746:String = "";
      
      private var var_2748:String = "";
      
      private var var_2749:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1409 = param1.readInteger();
         this.var_1885 = param1.readInteger();
         this.var_2746 = param1.readString();
         this.var_1938 = param1.readInteger();
         this.var_2457 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this.var_2747 = param1.readInteger();
         this.var_2749 = param1.readInteger();
         this.var_2748 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1409;
      }
      
      public function get points() : int
      {
         return this.var_1938;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2457;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2456;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2747;
      }
      
      public function get badgeId() : int
      {
         return this.var_1885;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2746;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2748;
      }
      
      public function get achievementID() : int
      {
         return this.var_2749;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
