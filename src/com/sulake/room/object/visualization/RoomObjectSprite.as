package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1171:int = 0;
       
      
      private var var_442:BitmapData = null;
      
      private var var_2593:String = "";
      
      private var var_347:Boolean = true;
      
      private var var_2445:String = "";
      
      private var var_2399:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2713:String = "normal";
      
      private var var_1564:Boolean = false;
      
      private var var_1563:Boolean = false;
      
      private var _offset:Point;
      
      private var var_219:int = 0;
      
      private var _height:int = 0;
      
      private var var_1400:Number = 0;
      
      private var var_2514:Boolean = false;
      
      private var var_2714:Boolean = true;
      
      private var var_2426:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2712:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1171++;
      }
      
      public function dispose() : void
      {
         this.var_442 = null;
         this.var_219 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_442;
      }
      
      public function get assetName() : String
      {
         return this.var_2593;
      }
      
      public function get visible() : Boolean
      {
         return this.var_347;
      }
      
      public function get tag() : String
      {
         return this.var_2445;
      }
      
      public function get alpha() : int
      {
         return this.var_2399;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2713;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1563;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1564;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_219;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1400;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2514;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2714;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2426;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2712;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_219 = param1.width;
            this._height = param1.height;
         }
         this.var_442 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2593 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_347 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2445 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2399 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2713 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2712 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1564 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1563 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1400 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2514 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2714 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2426 = param1;
         ++this._updateID;
      }
   }
}
