package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowLinkEvent extends WindowEvent
   {
      
      public static const const_1764:String = "WE_LINK";
      
      private static const POOL:Array = [];
       
      
      private var var_2023:String;
      
      public function WindowLinkEvent()
      {
         super();
         _type = const_1764;
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow) : WindowEvent
      {
         var _loc4_:WindowLinkEvent = POOL.length > 0 ? POOL.pop() : new WindowLinkEvent();
         _loc4_.var_2023 = param1;
         _loc4_._window = param2;
         _loc4_.var_754 = param3;
         _loc4_.var_170 = false;
         _loc4_.var_755 = POOL;
         return _loc4_;
      }
      
      public function get link() : String
      {
         return this.var_2023;
      }
      
      override public function clone() : WindowEvent
      {
         return allocate(this.var_2023,window,related);
      }
      
      override public function toString() : String
      {
         return "WindowLinkEvent { type: " + _type + " link: " + this.link + " cancelable: " + var_513 + " window: " + _window + " }";
      }
   }
}
