package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1749:int;
      
      private var var_2341:int;
      
      private var var_904:int;
      
      private var var_534:Number;
      
      private var var_2339:Boolean;
      
      private var var_2340:int;
      
      private var var_1750:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_534);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2341 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2340 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2339 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_904;
         if(this.var_904 == 1)
         {
            this.var_534 = param1;
            this.var_1749 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_904);
            this.var_534 = this.var_534 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2339 && param3 - this.var_1749 >= this.var_2341)
         {
            this.var_904 = 0;
            if(this.var_1750 < this.var_2340)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1750;
               this.var_1749 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
