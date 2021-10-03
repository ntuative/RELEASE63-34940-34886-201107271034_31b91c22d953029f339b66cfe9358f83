package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2636:int;
      
      private var var_2635:int;
      
      private var var_2634:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2636 = param1;
         this.var_2635 = param2;
         this.var_2634 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2636,this.var_2635,this.var_2634];
      }
      
      public function dispose() : void
      {
      }
   }
}
