package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import flash.geom.Rectangle;
   
   public interface IScrollableWindow extends IWindow
   {
       
      
      function get scrollH() : Number;
      
      function get scrollV() : Number;
      
      function set scrollH(param1:Number) : void;
      
      function set scrollV(param1:Number) : void;
      
      function get scrollStepH() : Number;
      
      function get method_1() : Number;
      
      function set scrollStepH(param1:Number) : void;
      
      function set method_1(param1:Number) : void;
      
      function get maxScrollH() : int;
      
      function get maxScrollV() : int;
      
      function get visibleRegion() : Rectangle;
      
      function get scrollableRegion() : Rectangle;
   }
}
