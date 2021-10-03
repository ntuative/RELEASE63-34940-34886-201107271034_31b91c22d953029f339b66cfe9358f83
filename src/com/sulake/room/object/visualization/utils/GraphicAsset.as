package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2593:String;
      
      private var var_2594:String;
      
      private var var_442:BitmapDataAsset;
      
      private var var_1564:Boolean;
      
      private var var_1563:Boolean;
      
      private var var_2592:Boolean;
      
      private var _offsetX:int;
      
      private var var_1169:int;
      
      private var var_219:int;
      
      private var _height:int;
      
      private var var_867:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2593 = param1;
         this.var_2594 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_442 = _loc9_;
            this.var_867 = false;
         }
         else
         {
            this.var_442 = null;
            this.var_867 = true;
         }
         this.var_1564 = param4;
         this.var_1563 = param5;
         this._offsetX = param6;
         this.var_1169 = param7;
         this.var_2592 = param8;
      }
      
      public function dispose() : void
      {
         this.var_442 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_867 && this.var_442 != null)
         {
            _loc1_ = this.var_442.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_219 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_867 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1563;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1564;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_219;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2593;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2594;
      }
      
      public function get asset() : IAsset
      {
         return this.var_442;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2592;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1564)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1563)
         {
            return this.var_1169;
         }
         return -(this.height + this.var_1169);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1169;
      }
   }
}
