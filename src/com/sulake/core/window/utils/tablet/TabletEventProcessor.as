package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3138:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_96 = param1.desktop;
         var_71 = param1.var_1414 as WindowController;
         var_192 = param1.var_1416 as WindowController;
         var_178 = param1.renderer;
         var_947 = param1.var_1415;
         param2.begin();
         param2.end();
         param1.desktop = var_96;
         param1.var_1414 = var_71;
         param1.var_1416 = var_192;
         param1.renderer = var_178;
         param1.var_1415 = var_947;
      }
   }
}
