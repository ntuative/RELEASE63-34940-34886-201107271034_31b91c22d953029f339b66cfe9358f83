package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1473:int;
      
      private var var_1808:Number;
      
      private var var_2431:Number;
      
      private var var_2432:int;
      
      private var var_2429:Number;
      
      private var var_2430:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1473 = param1;
         this.var_1808 = param2;
         this.var_2431 = param3;
         this.var_2429 = param4;
         this.var_2430 = param5;
         this.var_2432 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1473;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1808 < 0)
         {
            return 0;
         }
         return this.var_1808 + (getTimer() - this.var_2432) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2431;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2429;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2430;
      }
   }
}
