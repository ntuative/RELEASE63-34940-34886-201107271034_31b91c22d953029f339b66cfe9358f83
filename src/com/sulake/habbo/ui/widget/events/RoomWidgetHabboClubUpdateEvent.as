package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_287:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2895:int = 0;
      
      private var var_2896:int = 0;
      
      private var var_2897:int = 0;
      
      private var var_2894:Boolean = false;
      
      private var var_1799:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_287,param6,param7);
         this.var_2895 = param1;
         this.var_2896 = param2;
         this.var_2897 = param3;
         this.var_2894 = param4;
         this.var_1799 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2895;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2896;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2897;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2894;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1799;
      }
   }
}
