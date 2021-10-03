package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_929:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1161)
         {
            _structure = null;
            _assets = null;
            var_273 = null;
            var_318 = null;
            var_671 = null;
            var_614 = null;
            var_364 = null;
            if(!var_1436 && var_49)
            {
               var_49.dispose();
            }
            var_49 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_916 = null;
            var_1161 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_929[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_929[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_443:
               switch(_loc3_)
               {
                  case AvatarAction.const_864:
                  case AvatarAction.const_525:
                  case AvatarAction.const_425:
                  case AvatarAction.const_739:
                  case AvatarAction.const_408:
                  case AvatarAction.const_797:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_330:
            case AvatarAction.const_144:
            case AvatarAction.const_312:
            case AvatarAction.const_982:
            case AvatarAction.const_997:
            case AvatarAction.const_879:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
