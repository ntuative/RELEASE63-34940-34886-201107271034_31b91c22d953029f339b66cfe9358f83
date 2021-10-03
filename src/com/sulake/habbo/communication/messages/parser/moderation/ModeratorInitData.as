package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1698:Array;
      
      private var var_1697:Array;
      
      private var _issues:Array;
      
      private var var_1397:Array;
      
      private var var_3013:Boolean;
      
      private var var_3016:Boolean;
      
      private var var_3019:Boolean;
      
      private var var_3018:Boolean;
      
      private var var_3017:Boolean;
      
      private var var_3015:Boolean;
      
      private var var_3014:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1698 = [];
         this.var_1697 = [];
         this.var_1397 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1698.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1397.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_3013 = param1.readBoolean();
         this.var_3016 = param1.readBoolean();
         this.var_3019 = param1.readBoolean();
         this.var_3018 = param1.readBoolean();
         this.var_3017 = param1.readBoolean();
         this.var_3015 = param1.readBoolean();
         this.var_3014 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1697.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1698 = null;
         this.var_1697 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1397)
         {
            _loc1_.dispose();
         }
         this.var_1397 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1698;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1697;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1397;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_3013;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_3016;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_3019;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_3018;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_3017;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_3015;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_3014;
      }
   }
}
