package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_153:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_172:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1323:String;
      
      private var var_1486:Array;
      
      private var var_1218:Array;
      
      private var var_1811:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1323 = param2;
         this.var_1486 = param3;
         this.var_1218 = param4;
         if(this.var_1218 == null)
         {
            this.var_1218 = [];
         }
         this.var_1811 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1323;
      }
      
      public function get choices() : Array
      {
         return this.var_1486.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1218.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1811;
      }
   }
}
