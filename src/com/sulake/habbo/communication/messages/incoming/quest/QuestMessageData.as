package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2161:String;
      
      private var var_2158:int;
      
      private var var_2160:int;
      
      private var var_1927:int;
      
      private var _id:int;
      
      private var var_2157:Boolean;
      
      private var _type:String;
      
      private var var_2967:String;
      
      private var var_2968:int;
      
      private var var_2156:String;
      
      private var var_2965:int;
      
      private var var_2966:int;
      
      private var var_1684:int;
      
      private var var_2159:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2159 = new Date();
         super();
         this.var_2161 = param1.readString();
         this.var_2158 = param1.readInteger();
         this.var_2160 = param1.readInteger();
         this.var_1927 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2157 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2967 = param1.readString();
         this.var_2968 = param1.readInteger();
         this.var_2156 = param1.readString();
         this.var_2965 = param1.readInteger();
         this.var_2966 = param1.readInteger();
         this.var_1684 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2161;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2156;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2158;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2160;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1927;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2157;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2967;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2968;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2965;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2966;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1684 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2159.getTime();
         return int(Math.max(0,this.var_1684 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2161;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2156;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2157 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2158 >= this.var_2160;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2159;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1684 = param1;
      }
   }
}
