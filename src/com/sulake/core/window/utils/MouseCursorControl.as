package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_160:Stage;
      
      private static var var_347:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_865:Boolean = true;
      
      private static var var_136:DisplayObject;
      
      private static var var_1578:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_160 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_136)
            {
               var_160.removeChild(var_136);
               var_160.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_160.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_160.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_160.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_865 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_347;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_347 = param1;
         if(var_347)
         {
            if(var_136)
            {
               var_136.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_136)
         {
            var_136.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_865)
         {
            _loc1_ = var_1578[_type];
            if(_loc1_)
            {
               if(var_136)
               {
                  var_160.removeChild(var_136);
               }
               else
               {
                  var_160.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_160.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_160.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_160.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_136 = _loc1_;
               var_160.addChild(var_136);
            }
            else
            {
               if(var_136)
               {
                  var_160.removeChild(var_136);
                  var_160.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_160.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_160.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_160.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_136 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_328:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_945:
                  case MouseCursorType.const_253:
                  case MouseCursorType.const_1952:
                  case MouseCursorType.const_1782:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_865 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1578[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_136)
         {
            var_136.x = param1.stageX - 2;
            var_136.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_347 = false;
               Mouse.show();
            }
            else
            {
               var_347 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_136 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_347 = false;
         }
      }
   }
}
