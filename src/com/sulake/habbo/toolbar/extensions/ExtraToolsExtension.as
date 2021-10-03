package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.toolbar.HabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   
   public class ExtraToolsExtension
   {
      
      private static const const_1485:uint = 16777215;
      
      private static const const_1484:uint = 12247545;
      
      private static const const_1486:String = "HELP";
      
      private static const MENU_ROOMINFO:String = "ROOMINFO";
       
      
      private var _toolbar:HabboToolbar;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _window:IWindowContainer;
      
      private var var_63:IItemListWindow;
      
      private var var_395:IWindow;
      
      private var var_334:IWindowContainer;
      
      public function ExtraToolsExtension(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         var _loc8_:* = null;
         super();
         this._toolbar = param1;
         this._windowManager = param2;
         this._assets = param3;
         this._events = param4;
         this._config = param5;
         this._window = this.createWindow("logout_xml") as IWindowContainer;
         var _loc6_:IBitmapWrapperWindow = this._window.findChildByName("roominfo_icon") as IBitmapWrapperWindow;
         _loc6_.bitmap = BitmapDataAsset(param3.getAssetByName("roominfo_icon")).content as BitmapData;
         _loc6_.disposesBitmap = false;
         this.insertLocalizations();
         this.var_395 = this._window.findChildByName("roominfo_region");
         this.var_63 = this._window.findChildByName("list") as IItemListWindow;
         var _loc7_:* = [];
         this.var_63.groupListItemsWithTag("REGION",_loc7_);
         for each(_loc8_ in _loc7_)
         {
            _loc8_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onMouseOver);
            _loc8_.addEventListener(WindowMouseEvent.const_25,this.onMouseOut);
         }
         this.hideRoomInfo();
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      private function insertLocalizations() : void
      {
         var _loc1_:* = null;
         _loc1_ = this._window.findChildByName("roominfo_text");
         _loc1_.caption = "${" + _loc1_.caption + "}";
         _loc1_ = this._window.findChildByName("help_text");
         _loc1_.caption = "${" + _loc1_.caption + "}";
         _loc1_ = this._window.findChildByName("logout_text");
         _loc1_.caption = "${" + _loc1_.caption + "}";
      }
      
      public function dispose() : void
      {
         this._toolbar = null;
         this._windowManager = null;
         this._assets = null;
         this._events = null;
         this._config = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_334)
         {
            this.var_334.dispose();
            this.var_334 = null;
         }
      }
      
      public function hideRoomInfo() : void
      {
         this.var_63.removeListItem(this.var_395);
      }
      
      public function showRoomInfo() : void
      {
         this.var_63.addListItemAt(this.var_395,0);
      }
      
      private function onMouseOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = IWindowContainer(param1.window).findChildByTag("TEXT") as ITextWindow;
         _loc2_.textColor = const_1484;
      }
      
      private function onMouseOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:ITextWindow = IWindowContainer(param1.window).findChildByTag("TEXT") as ITextWindow;
         _loc2_.textColor = const_1485;
      }
      
      private function createWindow(param1:String) : IWindow
      {
         var _loc2_:XmlAsset = this._assets.getAssetByName(param1) as XmlAsset;
         var _loc3_:IWindow = this._windowManager.buildFromXML(_loc2_.content as XML);
         _loc3_.procedure = this.onClick;
         return _loc3_;
      }
      
      private function showConfirmation() : void
      {
         var _loc1_:* = null;
         if(!this.var_334)
         {
            this.var_334 = this.createWindow("logout_confirmation_xml") as IWindowContainer;
            _loc1_ = new Point();
            this._window.getGlobalPosition(_loc1_);
            this.var_334.x = _loc1_.x + this._window.width - this.var_334.width;
            this.var_334.y = _loc1_.y + this._window.height - this.var_334.height;
         }
      }
      
      private function closeConfirmation() : void
      {
         if(this.var_334)
         {
            this.var_334.dispose();
            this.var_334 = null;
         }
      }
      
      private function onClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "logout_region":
               this.showConfirmation();
               break;
            case "help_region":
               this._toolbar.toggleWindowVisibility(const_1486);
               break;
            case "roominfo_region":
               this._toolbar.toggleWindowVisibility(MENU_ROOMINFO);
               break;
            case "confirm":
               if(false)
               {
                  ExternalInterface.call("FlashExternalInterface.logout");
               }
               this.closeConfirmation();
               break;
            case "cancel":
               this.closeConfirmation();
         }
      }
   }
}
