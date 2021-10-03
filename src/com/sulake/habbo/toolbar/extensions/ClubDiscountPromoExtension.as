package com.sulake.habbo.toolbar.extensions
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetHabboClubExtendOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryHabboClubEvent;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import com.sulake.habbo.toolbar.ExtensionFixedSlotsEnum;
   import com.sulake.habbo.toolbar.HabboToolbar;
   import com.sulake.habbo.toolbar.IExtensionView;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ClubDiscountPromoExtension
   {
      
      private static const const_695:String = "club_promo";
      
      private static const const_1548:int = 13;
      
      private static const const_1083:int = 14;
      
      private static const const_1547:uint = 16777215;
      
      private static const const_1549:uint = 12247545;
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var _events:IEventDispatcher;
      
      private var _config:IHabboConfigurationManager;
      
      private var _localization:ICoreLocalizationManager;
      
      private var var_12:IHabboInventory;
      
      private var _catalog:IHabboCatalog;
      
      private var _connection:IConnection;
      
      private var var_728:IExtensionView;
      
      private var _view:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_84:IBitmapWrapperWindow;
      
      private var var_702:Timer;
      
      private var var_1524:int = 0;
      
      private var var_1891:int;
      
      private var var_659:Timer;
      
      private var var_830:BitmapData;
      
      private var var_1251:IRegionWindow;
      
      public function ClubDiscountPromoExtension(param1:HabboToolbar, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IEventDispatcher, param5:IHabboConfigurationManager, param6:ICoreLocalizationManager, param7:IHabboInventory, param8:IHabboCatalog, param9:IConnection)
      {
         super();
         this._windowManager = param2;
         this._assets = param3;
         this._events = param4;
         this._config = param5;
         this._localization = param6;
         this.var_12 = param7;
         this._catalog = param8;
         this._connection = param9;
         this.var_728 = param1.extensionView;
         if(this.var_12)
         {
            this.var_12.events.addEventListener(HabboInventoryHabboClubEvent.const_351,this.onClubChanged);
         }
      }
      
      private function createWindow(param1:IAssetLibrary, param2:IHabboWindowManager) : IWindowContainer
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc4_:XmlAsset = param1.getAssetByName("club_discount_promotion_xml") as XmlAsset;
         if(_loc4_)
         {
            _loc3_ = param2.buildFromXML(_loc4_.content as XML,1) as IWindowContainer;
            if(_loc3_)
            {
               this.var_84 = _loc3_.findChildByName("flashing_animation") as IBitmapWrapperWindow;
               if(this.var_84)
               {
                  _loc5_ = this._assets.getAssetByName("extend_hilite_png") as IAsset;
                  if(_loc5_)
                  {
                     this.var_830 = _loc5_.content as BitmapData;
                     if(this.var_830)
                     {
                        this.var_84.bitmap = this.var_830.clone();
                     }
                  }
                  this.var_84.visible = false;
               }
               this.var_1251 = _loc3_.findChildByName("text_region") as IRegionWindow;
               if(this.var_1251)
               {
                  this.var_1251.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTextRegionClicked);
                  this.var_1251.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onTextRegionMouseOver);
                  this.var_1251.addEventListener(WindowMouseEvent.const_25,this.onTextRegionMouseOut);
               }
               this.assignState();
            }
         }
         return _loc3_;
      }
      
      private function destroyWindow() : void
      {
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
            this.var_84 = null;
         }
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_728)
            {
               this.var_728.detachExtension(const_695);
               this.var_728 = null;
            }
            this.animate(false);
            this.clearAnimation();
            this.destroyWindow();
            if(this.var_12)
            {
               this.var_12.events.removeEventListener(HabboInventoryHabboClubEvent.const_351,this.onClubChanged);
               this.var_12 = null;
            }
            this._catalog = null;
            this._localization = null;
            this._config = null;
            this._assets = null;
            this._events = null;
            this._disposed = true;
         }
      }
      
      private function onTextRegionClicked(param1:WindowMouseEvent) : void
      {
         if(this._connection)
         {
            this._connection.send(new EventLogMessageComposer("DiscountPromo","discount","client.club.extend.discount.clicked"));
            this._connection.send(new GetHabboClubExtendOfferMessageComposer());
         }
      }
      
      private function assignState() : void
      {
         switch(this.var_12.clubLevel)
         {
            case HabboClubLevelEnum.const_54:
               this.setText(this._localization.getKey("discount.bar.no.club.promo"));
               this.setClubIcon(const_1083);
               break;
            case HabboClubLevelEnum.const_35:
               this.setText(this._localization.getKey("discount.bar.hc.expiring"));
               this.setClubIcon(const_1548);
               break;
            case HabboClubLevelEnum.const_43:
               this.setText(this._localization.getKey("discount.bar.vip.expiring","Save 5 cr by extending your VIP subscription now!"));
               this.setClubIcon(const_1083);
         }
         this.animate(true);
      }
      
      private function onClubChanged(param1:HabboInventoryHabboClubEvent) : void
      {
         if(this.var_12.clubIsExpiring)
         {
            if(!this._view)
            {
               this._view = this.createWindow(this._assets,this._windowManager);
               this.assignState();
               this.var_728.attachExtension(const_695,this._view,ExtensionFixedSlotsEnum.const_1785);
            }
         }
         else
         {
            this.var_728.detachExtension(const_695);
            this.destroyWindow();
         }
      }
      
      private function setText(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc3_ = this._view.findChildByName("promo_text_shadow") as ITextWindow;
            if(_loc2_)
            {
               _loc2_.text = param1;
            }
            if(_loc3_)
            {
               _loc3_.text = param1;
            }
         }
      }
      
      private function animate(param1:Boolean) : void
      {
         if(param1)
         {
            Logger.log("Animate window");
            if(this.var_659)
            {
               this.var_659.stop();
            }
            this.var_659 = new Timer(15000);
            this.var_659.addEventListener(TimerEvent.TIMER,this.onTriggerTimer);
            this.var_659.start();
         }
         else
         {
            if(this.var_659)
            {
               this.var_659.stop();
               this.var_659 = null;
            }
            this.clearAnimation();
         }
      }
      
      private function clearAnimation() : void
      {
         if(this.var_84)
         {
            this.var_84.visible = false;
            this.var_84.bitmap = null;
            this._view.invalidate();
            if(this.var_702)
            {
               this.var_702.stop();
               this.var_702 = null;
            }
         }
      }
      
      private function onTriggerTimer(param1:TimerEvent) : void
      {
         if(this.var_84)
         {
            if(this.var_84.context)
            {
               this.var_84.visible = true;
               this.resetAnimationVariables();
               this.startAnimationTimer();
            }
         }
      }
      
      private function resetAnimationVariables() : void
      {
         this.var_84.x = 3;
         this.var_84.y = 3;
         this.var_84.bitmap = this.var_830.clone();
         this.var_84.height = this._view.height - 6;
         this.var_84.width = this.var_84.bitmap.width;
         this.var_84.invalidate();
         this.var_1891 = this._view.width - 7 - this.var_84.bitmap.width;
         this.var_1524 = 0;
      }
      
      private function startAnimationTimer() : void
      {
         this.var_702 = new Timer(25,26);
         this.var_702.addEventListener(TimerEvent.TIMER,this.onAnimationTimer);
         this.var_702.addEventListener(TimerEvent.TIMER_COMPLETE,this.onAnimationTimerComplete);
         this.var_702.start();
      }
      
      private function onAnimationTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         this.var_84.x = 3 + this.var_1524 / 20 * this.var_1891;
         if(this.var_84.x > this.var_1891)
         {
            _loc2_ = this._view.width - 4 - this.var_84.x;
            _loc3_ = new BitmapData(_loc2_,this.var_830.height);
            _loc3_.copyPixels(this.var_830,new Rectangle(0,0,_loc2_,this.var_830.height),new Point(0,0));
            this.var_84.bitmap = _loc3_;
            this.var_84.width = _loc2_;
         }
         this.var_84.invalidate();
         ++this.var_1524;
      }
      
      private function onAnimationTimerComplete(param1:TimerEvent) : void
      {
         this.clearAnimation();
      }
      
      private function setClubIcon(param1:int) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("club_icon") as IIconWindow;
            if(_loc2_)
            {
               _loc2_.style = param1;
               _loc2_.invalidate();
            }
         }
      }
      
      private function onTextRegionMouseOver(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc2_.textColor = const_1549;
         }
      }
      
      private function onTextRegionMouseOut(param1:WindowMouseEvent) : void
      {
         var _loc2_:* = null;
         if(this._view)
         {
            _loc2_ = this._view.findChildByName("promo_text") as ITextWindow;
            _loc2_.textColor = const_1547;
         }
      }
   }
}