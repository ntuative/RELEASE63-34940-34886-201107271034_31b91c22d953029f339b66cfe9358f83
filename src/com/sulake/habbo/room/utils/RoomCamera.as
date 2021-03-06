package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1595:Number = 12;
       
      
      private var var_2661:int = -1;
      
      private var var_2660:int = -2;
      
      private var var_223:Vector3d = null;
      
      private var var_1273:Number = 0;
      
      private var var_1568:Number = 0;
      
      private var var_1967:Boolean = false;
      
      private var var_203:Vector3d = null;
      
      private var var_1968:Vector3d;
      
      private var var_2668:Boolean = false;
      
      private var var_2659:Boolean = false;
      
      private var var_2663:Boolean = false;
      
      private var var_2667:Boolean = false;
      
      private var var_2664:int = 0;
      
      private var var_2666:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2662:int = 0;
      
      private var var_2665:int = 0;
      
      private var var_1772:int = -1;
      
      private var var_1970:int = 0;
      
      private var var_1969:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1968 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_203;
      }
      
      public function get targetId() : int
      {
         return this.var_2661;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2660;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1968;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2668;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2659;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2663;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2667;
      }
      
      public function get screenWd() : int
      {
         return this.var_2664;
      }
      
      public function get screenHt() : int
      {
         return this.var_2666;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2662;
      }
      
      public function get roomHt() : int
      {
         return this.var_2665;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1772;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_223 != null && this.var_203 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1968.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2660 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2668 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2659 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2663 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2667 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2664 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2666 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1969 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2662 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2665 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1772 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_223 == null)
         {
            this.var_223 = new Vector3d();
         }
         if(this.var_223.x != param1.x || this.var_223.y != param1.y || this.var_223.z != param1.z)
         {
            this.var_223.assign(param1);
            this.var_1970 = 0;
            _loc2_ = Vector3d.dif(this.var_223,this.var_203);
            this.var_1273 = _loc2_.length;
            this.var_1967 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_223 = null;
         this.var_203 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_203 != null)
         {
            return;
         }
         this.var_203 = new Vector3d();
         this.var_203.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_203 == null)
         {
            this.var_203 = new Vector3d();
         }
         this.var_203.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_223 != null && this.var_203 != null)
         {
            ++this.var_1970;
            if(this.var_1969)
            {
               this.var_1969 = false;
               this.var_203 = this.var_223;
               this.var_223 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_223,this.var_203);
            if(_loc3_.length > this.var_1273)
            {
               this.var_1273 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_203 = this.var_223;
               this.var_223 = null;
               this.var_1568 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1273);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1273 / const_1595;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1967)
               {
                  if(_loc7_ < this.var_1568)
                  {
                     _loc7_ = this.var_1568;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1967 = false;
                  }
               }
               this.var_1568 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_203 = Vector3d.sum(this.var_203,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1772 = -1;
      }
   }
}
