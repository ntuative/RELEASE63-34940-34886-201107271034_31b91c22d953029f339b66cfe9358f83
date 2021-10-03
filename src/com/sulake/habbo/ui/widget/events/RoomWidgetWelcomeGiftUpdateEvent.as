package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_597:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1441:String;
      
      private var var_1163:Boolean;
      
      private var var_949:Boolean;
      
      private var _furniId:int;
      
      private var var_2788:Boolean;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_597,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1441;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1163;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_949;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2788;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1441 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1163 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_949 = param1;
      }
      
      public function set furniId(param1:int) : void
      {
         this._furniId = param1;
      }
      
      public function set requestedByUser(param1:Boolean) : void
      {
         this.var_2788 = param1;
      }
   }
}
