package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_621:String = "RWTDUE_TEASER_DATA";
      
      public static const const_917:String = "RWTDUE_GIFT_DATA";
      
      public static const const_940:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_239:int;
      
      private var _data:String;
      
      private var var_432:int;
      
      private var var_207:String;
      
      private var var_2620:String;
      
      private var var_2621:Boolean;
      
      private var var_1600:int = 0;
      
      private var var_2619:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_432;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2620;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2621;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2619;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1600;
      }
      
      public function set status(param1:int) : void
      {
         this.var_432 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2620 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2621 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2619 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_239 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_207;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_207 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1600 = param1;
      }
   }
}
