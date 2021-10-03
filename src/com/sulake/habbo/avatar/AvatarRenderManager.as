package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.IAnimationManager;
   import com.sulake.habbo.avatar.enum.AvatarRenderEvent;
   import com.sulake.habbo.avatar.enum.AvatarRendererUpdateEvent;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.enum.RenderMode;
   import com.sulake.habbo.avatar.palette.PaletteManager;
   import com.sulake.habbo.avatar.pets.IPetDataManager;
   import com.sulake.habbo.avatar.pets.PetDataManager;
   import com.sulake.habbo.avatar.structure.AvatarStructureDownload;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.IStructureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import com.sulake.habbo.avatar.structure.parts.PartOffsetData;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   
   public class AvatarRenderManager extends Component implements IAvatarRenderManager
   {
       
      
      private const const_2375:String = "hd-99999-99999";
      
      private var _aliasCollection:AssetAliasCollection;
      
      private var var_121:Map;
      
      private var var_144:IHabboConfigurationManager;
      
      private var var_337:PetDataManager;
      
      private var var_808:PaletteManager;
      
      private var var_713:String;
      
      private var var_336:Map;
      
      private var var_243:AvatarAssetDownloadManager;
      
      private var var_1826:AvatarFigureContainer;
      
      private var var_2464:Boolean = false;
      
      private var var_2465:Boolean = false;
      
      private var var_2466:Boolean = false;
      
      private var var_1046:Boolean = false;
      
      public function AvatarRenderManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var _loc4_:* = null;
         param2 |= const_1279;
         super(param1,param2,param3);
         this.var_713 = RenderMode.const_1938;
         this.var_336 = new Map();
         this.var_121 = new Map();
         _loc4_ = new AvatarStructure(this,AvatarType.const_125,PartOffsetData.getInstance(param1.assets));
         _loc4_.initGeometry(param3.getAssetByName("HabboAvatarGeometry").content as XML);
         _loc4_.initActions(param3,param3.getAssetByName("HabboAvatarActions").content as XML);
         _loc4_.initPartSets(param3.getAssetByName("HabboAvatarPartSets").content as XML);
         _loc4_.initAnimation(param3.getAssetByName("HabboAvatarAnimation").content as XML);
         _loc4_.initFigureData(param3.getAssetByName("HabboAvatarFigure").content as XML);
         this.var_121.add(AvatarType.const_125,_loc4_);
         _loc4_ = new AvatarStructure(this,AvatarType.const_56,PartOffsetData.getInstance(param1.assets));
         _loc4_.initGeometry(param3.getAssetByName("HabboAvatarPetGeometry").content as XML);
         _loc4_.initActions(param3,param3.getAssetByName("HabboAvatarPetActions").content as XML);
         _loc4_.initPartSets(param3.getAssetByName("HabboAvatarPetPartSets").content as XML);
         _loc4_.initAnimation(param3.getAssetByName("HabboAvatarPetAnimation").content as XML);
         _loc4_.initFigureData(param3.getAssetByName("HabboAvatarPetFigure").content as XML);
         this.var_121.add(AvatarType.const_56,_loc4_);
         this._aliasCollection = new AssetAliasCollection(this,param1.assets as AssetLibraryCollection);
         this.var_337 = new PetDataManager(this,param1.assets as AssetLibraryCollection);
         this.var_808 = new PaletteManager(param1.assets as AssetLibraryCollection);
         var _loc5_:XML = param3.getAssetByName("HabboAvatarPetFigure").content as XML;
         this.var_337.populateFigureData(_loc5_);
         param1.events.addEventListener(Component.COMPONENT_EVENT_RUNNING,this.onAllModulesReadyAndRunning);
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationReady);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this.var_144)
         {
            this.var_144.release(new IIDHabboConfigurationManager());
            this.var_144 = null;
         }
         super.dispose();
         if(this.var_121 != null)
         {
            for each(_loc1_ in this.var_121.getValues())
            {
               _loc1_.dispose();
            }
            this.var_121.dispose();
            this.var_121 = null;
         }
         if(this.var_337 != null)
         {
            this.var_337.dispose();
            this.var_337 = null;
         }
         if(this.var_808 != null)
         {
            this.var_808.dispose();
            this.var_808 = null;
         }
         if(this._aliasCollection != null)
         {
            this._aliasCollection.dispose();
            this._aliasCollection = null;
         }
         if(this.var_336)
         {
            this.var_336.dispose();
            this.var_336 = null;
         }
         if(this.var_243)
         {
            this.var_243.removeEventListener(Event.COMPLETE,this.onAvatarAssetsDownloadManagerReady);
            this.var_243.dispose();
            this.var_243 = null;
         }
         PartOffsetData.dispose();
      }
      
      private function onAllModulesReadyAndRunning(param1:Event) : void
      {
         var _loc2_:* = null;
         this._aliasCollection.init();
         this.var_337.init();
         this.var_808.init();
         _loc2_ = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
         if(_loc2_)
         {
            _loc2_.resetPartOffsets(context.assets);
            _loc2_.registerAnimations(context.assets as AssetLibraryCollection,"fx",200);
            _loc2_.registerAnimations(context.assets as AssetLibraryCollection,"dance",200);
         }
         _loc2_ = this.var_121.getValue(AvatarType.const_56) as AvatarStructure;
         if(_loc2_)
         {
            _loc2_.resetPartOffsets(context.assets);
         }
         this.var_2464 = true;
         this.events.dispatchEvent(new Event(AvatarRendererUpdateEvent.AVATAR_RENDERER_ANIMATIONS_INITIALIZED_EVENT));
         this.checkIfReady();
      }
      
      private function onHabboConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param2 != null)
         {
            this.var_144 = param2 as IHabboConfigurationManager;
            _loc3_ = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
            if(_loc3_ != null)
            {
               _loc4_ = this.var_144.getKey("external.figurepartlist.txt","figure.xml");
               if(assets.hasAsset(_loc4_))
               {
                  assets.removeAsset(assets.getAssetByName(_loc4_));
               }
               _loc5_ = new AvatarStructureDownload(assets,_loc4_,_loc3_.figureData as IStructureData);
               _loc5_.addEventListener(AvatarStructureDownload.const_1197,this.onFigureDataDownloadDone);
               if(this.var_243 == null)
               {
                  Logger.log("[AvatarRenderManager] Init Avatar Assets Download Manager");
                  _loc6_ = this.var_144.getKey("flash.dynamic.avatar.download.configuration","figuremap.xml");
                  _loc7_ = this.var_144.getKey("flash.dynamic.avatar.download.url","");
                  this.var_243 = new AvatarAssetDownloadManager(context.assets,_loc6_,_loc7_,_loc3_);
                  this.var_243.addEventListener(Event.COMPLETE,this.onAvatarAssetsDownloadManagerReady);
               }
            }
         }
      }
      
      private function onFigureDataDownloadDone(param1:Event = null) : void
      {
         Logger.log("[object AvatarRenderManager] Figure Data Download Done");
         this.var_2466 = true;
         this.checkIfReady();
      }
      
      private function onAvatarAssetsDownloadManagerReady(param1:Event = null) : void
      {
         this.var_2465 = true;
         this.checkIfReady();
      }
      
      private function checkIfReady() : void
      {
         if(!this.var_1046)
         {
            if(this.var_2464 && this.var_2465 && this.var_2466)
            {
               this.var_1046 = true;
               this.events.dispatchEvent(new Event(AvatarRenderEvent.AVATAR_RENDER_READY));
            }
         }
      }
      
      public function createFigureContainer(param1:String) : IAvatarFigureContainer
      {
         return new AvatarFigureContainer(param1);
      }
      
      public function isFigureReady(param1:IAvatarFigureContainer) : Boolean
      {
         if(!this.var_243)
         {
            return false;
         }
         return this.var_243.isReady(param1);
      }
      
      public function downloadFigure(param1:IAvatarFigureContainer, param2:IAvatarImageListener) : void
      {
         if(!this.var_243)
         {
            return;
         }
         this.var_243.loadFigureSetData(param1,param2);
      }
      
      public function createAvatarImage(param1:String, param2:String, param3:String = null, param4:IAvatarImageListener = null) : IAvatarImage
      {
         var _loc5_:AvatarStructure = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
         if(_loc5_ == null)
         {
            return null;
         }
         if(!this.var_243)
         {
            return null;
         }
         var _loc6_:AvatarFigureContainer = new AvatarFigureContainer(param1);
         if(param3)
         {
            this.validateAvatarFigure(_loc6_,param3);
         }
         if(this.var_243.isReady(_loc6_))
         {
            return new AvatarImage(_loc5_,this._aliasCollection,_loc6_,param2);
         }
         if(!this.var_1826)
         {
            this.var_1826 = new AvatarFigureContainer(this.const_2375);
         }
         this.var_243.loadFigureSetData(_loc6_,param4);
         return new PlaceholderAvatarImage(_loc5_,this._aliasCollection,this.var_1826,param2);
      }
      
      public function removePetImageListener(param1:IPetImageListener) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(param1 == null || this.var_336 == null)
         {
            return;
         }
         for each(_loc2_ in this.var_336.getKeys())
         {
            _loc3_ = this.var_336.getValue(_loc2_);
            if(_loc3_ != null)
            {
               _loc4_ = _loc3_.indexOf(param1);
               if(_loc4_ != -1)
               {
                  _loc3_.splice(_loc4_,1);
               }
            }
         }
      }
      
      public function createPetImageFromFigure(param1:String, param2:String, param3:IPetImageListener = null) : IAvatarImage
      {
         if(param1.indexOf(" ") == -1)
         {
            return null;
         }
         var _loc4_:Array = param1.split(" ");
         if(_loc4_.length == 0)
         {
            return null;
         }
         var _loc5_:int = int(_loc4_[0]);
         var _loc6_:int = int(_loc4_[1]);
         var _loc7_:uint = parseInt(_loc4_[2],16);
         return this.createPetImage(_loc5_,_loc6_,_loc7_,param2,param3);
      }
      
      public function getPetFigureString(param1:String) : String
      {
         if(param1.indexOf(" ") == -1)
         {
            return null;
         }
         var _loc2_:Array = param1.split(" ");
         if(_loc2_.length == 0)
         {
            return null;
         }
         var _loc3_:int = int(_loc2_[0]);
         var _loc4_:int = int(_loc2_[1]);
         var _loc5_:uint = parseInt(_loc2_[2],16);
         return this.var_337.createPetFigureString(_loc3_,_loc4_,_loc5_);
      }
      
      public function createPetImage(param1:int, param2:int, param3:uint, param4:String, param5:IPetImageListener = null) : IAvatarImage
      {
         var _loc9_:* = null;
         var _loc6_:* = false;
         if(this.mode != RenderMode.const_1826)
         {
            _loc6_ = !this.var_337.assetsReady(param1,param4);
         }
         var _loc7_:String = this.var_337.createPetFigureString(param1,param2,param3);
         var _loc8_:AvatarStructure = this.var_121.getValue(AvatarType.const_56) as AvatarStructure;
         if(_loc8_ == null)
         {
            return null;
         }
         if(!_loc6_)
         {
            return new PetImage(_loc8_,this._aliasCollection,_loc7_,param4);
         }
         if(param5 != null)
         {
            _loc9_ = this.var_336[_loc7_];
            if(!_loc9_)
            {
               _loc9_ = [];
            }
            if(_loc9_.indexOf(param5) == -1)
            {
               _loc9_.push(param5);
            }
            this.var_336.add(_loc7_,_loc9_);
         }
         return new PlaceholderPetImage(_loc8_,this._aliasCollection,_loc7_,param4,assets);
      }
      
      public function resetPetData() : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = null;
         this._aliasCollection.reset();
         this.var_337.reset();
         this.var_808.reset();
         var _loc1_:XML = assets.getAssetByName("HabboAvatarPetFigure").content as XML;
         this.var_337.populateFigureData(_loc1_);
         var _loc2_:AvatarStructure = this.var_121.getValue(AvatarType.const_56);
         _loc2_.initFigureData(_loc1_);
         _loc2_.resetPartOffsets(context.assets);
         var _loc5_:Array = this.var_336.getKeys();
         for each(_loc6_ in _loc5_)
         {
            _loc4_ = this.var_336.getValue(_loc6_);
            if(_loc4_)
            {
               for each(_loc3_ in _loc4_)
               {
                  if(_loc3_ != null && !_loc3_.disposed)
                  {
                     _loc3_.petImageReady(_loc6_);
                  }
               }
            }
         }
         this.var_336.reset();
      }
      
      public function getFigureData(param1:String) : IFigureData
      {
         var _loc2_:AvatarStructure = this.var_121.getValue(param1) as AvatarStructure;
         if(_loc2_ != null)
         {
            return _loc2_.figureData;
         }
         return null;
      }
      
      public function getAnimationManager(param1:String) : IAnimationManager
      {
         var _loc2_:AvatarStructure = this.var_121.getValue(param1) as AvatarStructure;
         if(_loc2_ != null)
         {
            return _loc2_.animationManager;
         }
         return null;
      }
      
      public function getMandatoryAvatarPartSetIds(param1:String, param2:int) : Array
      {
         var _loc3_:AvatarStructure = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
         return _loc3_.getMandatorySetTypeIds(param1,param2);
      }
      
      public function getAssetByName(param1:String) : IAsset
      {
         return this._aliasCollection.getAssetByName(param1);
      }
      
      public function get petDataManager() : IPetDataManager
      {
         return this.var_337 as IPetDataManager;
      }
      
      public function get paletteManager() : PaletteManager
      {
         return this.var_808;
      }
      
      public function get mode() : String
      {
         return this.var_713;
      }
      
      public function set mode(param1:String) : void
      {
         this.var_713 = param1;
      }
      
      public function injectFigureData(param1:String, param2:XML) : void
      {
         var _loc3_:* = null;
         switch(param1)
         {
            case AvatarType.const_125:
               _loc3_ = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
               break;
            case AvatarType.const_56:
               _loc3_ = this.var_121.getValue(AvatarType.const_56) as AvatarStructure;
               break;
            default:
               Logger.log("Uknown avatar type: " + param1);
         }
         if(_loc3_ != null)
         {
            _loc3_.injectFigureData(param2);
         }
      }
      
      private function validateAvatarFigure(param1:AvatarFigureContainer, param2:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!this.var_121)
         {
            ErrorReportStorage.addDebugData("AvatarRenderManager","validateAvatarFigure: _structures is null!");
         }
         var _loc3_:AvatarStructure = this.var_121.getValue(AvatarType.const_125) as AvatarStructure;
         if(!_loc3_)
         {
            ErrorReportStorage.addDebugData("AvatarRenderManager","validateAvatarFigure: structure is null!");
         }
         var _loc6_:Array = _loc3_.getMandatorySetTypeIds(param2,2);
         if(_loc6_)
         {
            _loc7_ = _loc3_.figureData;
            if(!_loc7_)
            {
               ErrorReportStorage.addDebugData("AvatarRenderManager","validateAvatarFigure: figureData is null!");
            }
            for each(_loc8_ in _loc6_)
            {
               if(!param1.hasPartType(_loc8_))
               {
                  _loc9_ = _loc3_.getDefaultPartSet(_loc8_,param2);
                  if(_loc9_)
                  {
                     param1.updatePart(_loc8_,_loc9_.id,[0]);
                     _loc4_ = true;
                  }
               }
               else
               {
                  _loc10_ = _loc7_.getSetType(_loc8_);
                  if(!_loc10_)
                  {
                     ErrorReportStorage.addDebugData("AvatarRenderManager","validateAvatarFigure: setType is null!");
                  }
                  _loc11_ = _loc10_.getPartSet(param1.getPartSetId(_loc8_));
                  if(!_loc11_)
                  {
                     _loc12_ = _loc3_.getDefaultPartSet(_loc8_,param2);
                     if(_loc12_)
                     {
                        param1.updatePart(_loc8_,_loc12_.id,[0]);
                        _loc4_ = true;
                     }
                  }
               }
            }
         }
         return !_loc4_;
      }
      
      public function resetAssetManager() : void
      {
         this._aliasCollection.reset();
      }
   }
}
