package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_50:HabboQuestEngine;
      
      private var var_545:QuestsList;
      
      private var var_462:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_387:QuestTracker;
      
      private var var_662:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_50 = param1;
         this.var_387 = new QuestTracker(this.var_50);
         this.var_545 = new QuestsList(this.var_50);
         this.var_462 = new QuestDetails(this.var_50);
         this._questCompleted = new QuestCompleted(this.var_50);
         this.var_662 = new NextQuestTimer(this.var_50);
      }
      
      public function onToolbarClick() : void
      {
         this.var_545.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_545.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_387.onQuest(param1);
         this.var_462.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_662.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_387.onQuestCompleted(param1);
         this.var_462.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_387.onQuestCancelled();
         this.var_462.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_662.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_387.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_545.onRoomExit();
         this.var_387.onRoomExit();
         this.var_462.onRoomExit();
         this.var_662.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_387.update(param1);
         this.var_662.update(param1);
         this.var_545.update(param1);
         this.var_462.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_50 = null;
         if(this.var_545)
         {
            this.var_545.dispose();
            this.var_545 = null;
         }
         if(this.var_387)
         {
            this.var_387.dispose();
            this.var_387 = null;
         }
         if(this.var_462)
         {
            this.var_462.dispose();
            this.var_462 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_662)
         {
            this.var_662.dispose();
            this.var_662 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_50 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_545;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_462;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_387;
      }
   }
}
