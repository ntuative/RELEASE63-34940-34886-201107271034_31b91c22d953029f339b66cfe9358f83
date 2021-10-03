package com.sulake.core.runtime.events
{
   import flash.utils.Dictionary;
   
   public class EventListenerStruct
   {
       
      
      private var var_153:Dictionary;
      
      public var var_2258:Boolean;
      
      public var priority:int;
      
      public var var_3114:Boolean;
      
      public function EventListenerStruct(param1:Function, param2:Boolean = false, param3:int = 0, param4:Boolean = false)
      {
         super();
         this.var_153 = new Dictionary(param4);
         this.callback = param1;
         this.var_2258 = param2;
         this.priority = param3;
         this.var_3114 = param4;
      }
      
      public function set callback(param1:Function) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.var_153)
         {
            delete this.var_153[_loc2_];
         }
         this.var_153[param1] = null;
      }
      
      public function get callback() : Function
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.var_153;
         for(_loc1_ in _loc3_)
         {
            return _loc1_ as Function;
         }
         return null;
      }
   }
}
