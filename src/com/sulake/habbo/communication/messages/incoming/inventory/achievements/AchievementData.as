package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1409:int;
      
      private var var_1885:String;
      
      private var var_1818:int;
      
      private var var_2457:int;
      
      private var var_2456:int;
      
      private var var_1819:int;
      
      private var var_1820:Boolean;
      
      private var _category:String;
      
      private var var_2455:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1409 = param1.readInteger();
         this.var_1885 = param1.readString();
         this.var_1818 = Math.max(1,param1.readInteger());
         this.var_2457 = param1.readInteger();
         this.var_2456 = param1.readInteger();
         this.var_1819 = param1.readInteger();
         this.var_1820 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2455 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1885;
      }
      
      public function get level() : int
      {
         return this.var_1409;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1818;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2457;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2456;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1819;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1820;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2455;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1409 > 1 || this.var_1820;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1819 = this.var_1818;
      }
   }
}
