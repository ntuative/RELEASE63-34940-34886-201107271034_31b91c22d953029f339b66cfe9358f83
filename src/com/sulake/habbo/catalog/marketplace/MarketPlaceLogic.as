package com.sulake.habbo.catalog.marketplace
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOffer;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOwnOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceBuyOfferResultEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceCancelOfferResultEvent;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketPlaceOffersParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketPlaceOwnOffersParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceBuyOfferResultParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceCancelOfferResultParser;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class MarketPlaceLogic implements IMarketPlace
   {
      
      private static const const_1530:String = "poster";
       
      
      public const const_2290:int = 1;
      
      public const const_2204:int = 2;
      
      public const const_2408:int = 3;
      
      private var _catalog:IHabboCatalog;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var _visualization:IMarketPlaceVisualization;
      
      private var _confirmationDialog:MarketplaceConfirmationDialog;
      
      private var var_289:Map;
      
      private var var_340:Map;
      
      private var var_2544:int;
      
      private var var_2547:int = -1;
      
      private var var_2545:MarketplaceItemStats;
      
      private var var_2549:int;
      
      private var var_2551:int;
      
      private var var_2546:int;
      
      private var var_2548:int = 0;
      
      private var var_2552:int = 0;
      
      private var var_2312:String = "";
      
      private var var_2550:int = -1;
      
      private var _disposed:Boolean = false;
      
      public function MarketPlaceLogic(param1:IHabboCatalog, param2:IHabboWindowManager, param3:IRoomEngine)
      {
         super();
         this._catalog = param1;
         this._windowManager = param2;
         this._roomEngine = param3;
         this.getConfiguration();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._catalog = null;
         this._windowManager = null;
         if(this.var_289 != null)
         {
            this.disposeOffers(this.var_289);
            this.var_289 = null;
         }
         if(this.var_340 != null)
         {
            this.disposeOffers(this.var_340);
            this.var_340 = null;
         }
         this._disposed = true;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         return this._catalog.localization;
      }
      
      public function registerVisualization(param1:IMarketPlaceVisualization = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._visualization = param1;
      }
      
      private function getConfiguration() : void
      {
         if(!this._catalog || !this._catalog.connection)
         {
            return;
         }
         this._catalog.connection.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      private function showConfirmation(param1:int, param2:MarketPlaceOfferData) : void
      {
         if(!this._confirmationDialog)
         {
            this._confirmationDialog = new MarketplaceConfirmationDialog(this,this._catalog,this._roomEngine);
         }
         this._confirmationDialog.showConfirmation(param1,param2);
      }
      
      public function requestOffersByName(param1:String) : void
      {
         if(this._catalog)
         {
            this._catalog.getPublicMarketPlaceOffers(-1,-1,param1,-1);
         }
      }
      
      public function requestOffersByPrice(param1:int) : void
      {
         if(this._catalog)
         {
            this._catalog.getPublicMarketPlaceOffers(param1,-1,"",-1);
         }
      }
      
      public function requestOffers(param1:int, param2:int, param3:String, param4:int) : void
      {
         this.var_2548 = param1;
         this.var_2552 = param2;
         this.var_2312 = param3;
         this.var_2550 = param4;
         if(this._catalog)
         {
            this._catalog.getPublicMarketPlaceOffers(param1,param2,param3,param4);
         }
      }
      
      public function refreshOffers() : void
      {
         this.requestOffers(this.var_2548,this.var_2552,this.var_2312,this.var_2550);
      }
      
      public function requestOwnItems() : void
      {
         if(this._catalog)
         {
            this._catalog.getOwnMarketPlaceOffers();
         }
      }
      
      public function requestItemStats(param1:int, param2:int) : void
      {
         if(this._catalog)
         {
            this.var_2551 = param2;
            this.var_2549 = param1;
            this._catalog.getMarketplaceItemStats(param1,param2);
         }
      }
      
      public function buyOffer(param1:int) : void
      {
         if(!this.var_289 || !this._catalog || !this._catalog.getPurse())
         {
            return;
         }
         var _loc2_:MarketPlaceOfferData = this.var_289.getValue(param1) as MarketPlaceOfferData;
         if(!_loc2_)
         {
            return;
         }
         if(this._catalog.getPurse().credits < _loc2_.price)
         {
            this._catalog.showNotEnoughCreditsAlert();
            return;
         }
         this.showConfirmation(this.const_2290,_loc2_);
      }
      
      public function redeemExpiredOffer(param1:int) : void
      {
         if(this._catalog)
         {
            this._catalog.redeemExpiredMarketPlaceOffer(param1);
         }
      }
      
      public function redeemSoldOffers() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(this.disposed)
         {
            return;
         }
         if(this.var_340 == null)
         {
            return;
         }
         var _loc1_:Array = this.var_340.getKeys();
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = this.var_340.getValue(_loc2_);
            if(_loc3_.status == MarketPlaceOfferState.const_522)
            {
               this.var_340.remove(_loc2_);
               _loc3_.dispose();
            }
         }
         if(this._catalog)
         {
            this._catalog.redeemSoldMarketPlaceOffers();
         }
         if(this._visualization != null)
         {
            this._visualization.listUpdatedNotify();
         }
      }
      
      private function disposeOffers(param1:Map) : void
      {
         var _loc2_:* = null;
         if(param1 != null)
         {
            for each(_loc2_ in param1)
            {
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
            }
            param1.dispose();
         }
      }
      
      public function onOffers(param1:IMessageEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:MarketPlaceOffersEvent = param1 as MarketPlaceOffersEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:MarketPlaceOffersParser = _loc2_.getParser() as MarketPlaceOffersParser;
         if(_loc3_ == null)
         {
            return;
         }
         this.disposeOffers(this.var_289);
         this.var_289 = new Map();
         for each(_loc4_ in _loc3_.offers)
         {
            _loc5_ = new MarketPlaceOfferData(_loc4_.offerId,_loc4_.furniId,_loc4_.furniType,_loc4_.stuffData,_loc4_.price,_loc4_.status,_loc4_.averagePrice,_loc4_.offerCount);
            _loc5_.timeLeftMinutes = _loc4_.timeLeftMinutes;
            this.var_289.add(_loc4_.offerId,_loc5_);
         }
         this.var_2546 = _loc3_.totalItemsFound;
         if(this._visualization != null)
         {
            this._visualization.listUpdatedNotify();
         }
      }
      
      public function onOwnOffers(param1:IMessageEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:MarketPlaceOwnOffersEvent = param1 as MarketPlaceOwnOffersEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:MarketPlaceOwnOffersParser = _loc2_.getParser() as MarketPlaceOwnOffersParser;
         if(_loc3_ == null)
         {
            return;
         }
         this.disposeOffers(this.var_340);
         this.var_340 = new Map();
         this.var_2544 = _loc3_.creditsWaiting;
         for each(_loc4_ in _loc3_.offers)
         {
            _loc5_ = new MarketPlaceOfferData(_loc4_.offerId,_loc4_.furniId,_loc4_.furniType,_loc4_.stuffData,_loc4_.price,_loc4_.status,_loc4_.averagePrice);
            _loc5_.timeLeftMinutes = _loc4_.timeLeftMinutes;
            this.var_340.add(_loc4_.offerId,_loc5_);
         }
         if(this._visualization != null)
         {
            this._visualization.listUpdatedNotify();
         }
      }
      
      public function onBuyResult(param1:IMessageEvent) : void
      {
         var item:MarketPlaceOfferData = null;
         var updateItem:MarketPlaceOfferData = null;
         var event:IMessageEvent = param1;
         var buyEvent:MarketplaceBuyOfferResultEvent = event as MarketplaceBuyOfferResultEvent;
         if(event == null)
         {
            return;
         }
         var parser:MarketplaceBuyOfferResultParser = buyEvent.getParser() as MarketplaceBuyOfferResultParser;
         if(parser == null)
         {
            return;
         }
         if(parser.result == 1)
         {
            this.refreshOffers();
         }
         else if(parser.result == 2)
         {
            item = this.var_289.remove(parser.requestedOfferId);
            if(item != null)
            {
               item.dispose();
            }
            if(this._visualization != null)
            {
               this._visualization.listUpdatedNotify();
            }
            if(this._windowManager != null)
            {
               this._windowManager.alert("${catalog.marketplace.not_available_title}","${catalog.marketplace.not_available_header}",0,function(param1:IAlertDialog, param2:WindowEvent):void
               {
                  param1.dispose();
               });
            }
         }
         else if(parser.result == 3)
         {
            updateItem = this.var_289.getValue(parser.requestedOfferId) as MarketPlaceOfferData;
            if(updateItem)
            {
               updateItem.offerId = parser.offerId;
               updateItem.price = parser.newPrice;
               --updateItem.offerCount;
               this.var_289.add(parser.offerId,updateItem);
            }
            this.var_289.remove(parser.requestedOfferId);
            this.showConfirmation(this.const_2204,updateItem);
            if(this._visualization != null)
            {
               this._visualization.listUpdatedNotify();
            }
         }
         else if(parser.result == 4)
         {
            if(this._windowManager != null)
            {
               this._windowManager.alert("${catalog.alert.notenough.title}","${catalog.alert.notenough.credits.description}",0,function(param1:IAlertDialog, param2:WindowEvent):void
               {
                  param1.dispose();
               });
            }
         }
      }
      
      public function onCancelResult(param1:IMessageEvent) : void
      {
         var item:MarketPlaceOfferData = null;
         var event:IMessageEvent = param1;
         var cancelEvent:MarketplaceCancelOfferResultEvent = event as MarketplaceCancelOfferResultEvent;
         if(event == null)
         {
            return;
         }
         var parser:MarketplaceCancelOfferResultParser = cancelEvent.getParser() as MarketplaceCancelOfferResultParser;
         if(parser == null)
         {
            return;
         }
         if(parser.result == 1)
         {
            item = this.var_340.remove(parser.offerId);
            if(item != null)
            {
               item.dispose();
            }
            if(this._visualization != null)
            {
               this._visualization.listUpdatedNotify();
            }
         }
         else if(parser.result == 0)
         {
            if(this._windowManager != null)
            {
               this._windowManager.alert("${catalog.marketplace.operation_failed.topic}","{{catalog.marketplace.cancel_failed}",0,function(param1:IAlertDialog, param2:WindowEvent):void
               {
                  param1.dispose();
               });
            }
         }
      }
      
      public function latestOffers() : Map
      {
         return this.var_289;
      }
      
      public function latestOwnOffers() : Map
      {
         return this.var_340;
      }
      
      public function totalItemsFound() : int
      {
         return this.var_2546;
      }
      
      public function set itemStats(param1:MarketplaceItemStats) : void
      {
         if(param1.furniCategoryId != this.var_2549 || param1.furniTypeId != this.var_2551)
         {
            return;
         }
         this.var_2545 = param1;
         if(this._visualization != null)
         {
            this._visualization.updateStats();
         }
      }
      
      public function get itemStats() : MarketplaceItemStats
      {
         return this.var_2545;
      }
      
      public function get creditsWaiting() : int
      {
         return this.var_2544;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2547;
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         this.var_2547 = param1;
      }
      
      private function isPosterItem(param1:IMarketPlaceOfferData) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:Boolean = false;
         if(param1.furniType == 2 && param1.stuffData != null)
         {
            _loc3_ = this._catalog.getFurnitureData(param1.furniId,ProductTypeEnum.const_63);
            if(_loc3_)
            {
               _loc4_ = _loc3_.name;
               if(_loc4_ != null && _loc4_ == const_1530)
               {
                  _loc2_ = true;
               }
            }
         }
         return _loc2_;
      }
      
      public function getNameLocalizationKey(param1:IMarketPlaceOfferData) : String
      {
         var _loc2_:* = "";
         if(param1 != null)
         {
            if(this.isPosterItem(param1))
            {
               _loc2_ = "poster_" + param1.stuffData + "_name";
            }
            else if(param1.furniType == MarketPlaceOfferData.const_111)
            {
               _loc2_ = "roomItem.name." + param1.furniId;
            }
            else if(param1.furniType == MarketPlaceOfferData.const_72)
            {
               _loc2_ = "wallItem.name." + param1.furniId;
            }
         }
         return _loc2_;
      }
      
      public function getDescriptionLocalizationKey(param1:IMarketPlaceOfferData) : String
      {
         var _loc2_:* = "";
         if(param1 != null)
         {
            if(this.isPosterItem(param1))
            {
               _loc2_ = "poster_" + param1.stuffData + "_desc";
            }
            else if(param1.furniType == MarketPlaceOfferData.const_111)
            {
               _loc2_ = "roomItem.desc." + param1.furniId;
            }
            else if(param1.furniType == MarketPlaceOfferData.const_72)
            {
               _loc2_ = "wallItem.desc." + param1.furniId;
            }
         }
         return _loc2_;
      }
   }
}
