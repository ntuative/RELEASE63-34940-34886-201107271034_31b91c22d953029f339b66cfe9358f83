package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3101:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_696:IWindowContext;
      
      private var var_1297:IMouseDraggingService;
      
      private var var_1296:IMouseScalingService;
      
      private var var_1295:IMouseListenerService;
      
      private var var_1300:IFocusManagerService;
      
      private var var_1299:IToolTipAgentService;
      
      private var var_1298:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3101 = 0;
         this._root = param2;
         this.var_696 = param1;
         this.var_1297 = new WindowMouseDragger(param2);
         this.var_1296 = new WindowMouseScaler(param2);
         this.var_1295 = new WindowMouseListener(param2);
         this.var_1300 = new FocusManager(param2);
         this.var_1299 = new WindowToolTipAgent(param2);
         this.var_1298 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1297 != null)
         {
            this.var_1297.dispose();
            this.var_1297 = null;
         }
         if(this.var_1296 != null)
         {
            this.var_1296.dispose();
            this.var_1296 = null;
         }
         if(this.var_1295 != null)
         {
            this.var_1295.dispose();
            this.var_1295 = null;
         }
         if(this.var_1300 != null)
         {
            this.var_1300.dispose();
            this.var_1300 = null;
         }
         if(this.var_1299 != null)
         {
            this.var_1299.dispose();
            this.var_1299 = null;
         }
         if(this.var_1298 != null)
         {
            this.var_1298.dispose();
            this.var_1298 = null;
         }
         this._root = null;
         this.var_696 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1297;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1296;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1295;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1300;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1299;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1298;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
