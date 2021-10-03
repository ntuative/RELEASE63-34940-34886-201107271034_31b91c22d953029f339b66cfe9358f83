package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_196:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_671:String = "";
      
      private var var_1034:String = "";
      
      private var var_2102:String = "";
      
      private var var_2475:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_196,param1,param7,param8);
         this._userId = param2;
         this.var_671 = param3;
         this.var_1034 = param4;
         this.var_2102 = param5;
         this.var_2475 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get gender() : String
      {
         return this.var_1034;
      }
      
      public function get customInfo() : String
      {
         return this.var_2102;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2475;
      }
   }
}
