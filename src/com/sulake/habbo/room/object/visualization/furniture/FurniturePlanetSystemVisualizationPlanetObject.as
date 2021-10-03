package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.utils.Vector3d;
   
   public class FurniturePlanetSystemVisualizationPlanetObject
   {
      
      private static const const_1711:Number = 30;
       
      
      private var _index:int;
      
      private var _name:String;
      
      private var var_1610:Number;
      
      private var var_2982:Number;
      
      private var var_2170:Number;
      
      private var _height:Number;
      
      private var var_1378:Number;
      
      private var var_908:Vector3d;
      
      private var _children:Array;
      
      public function FurniturePlanetSystemVisualizationPlanetObject(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         this.var_908 = new Vector3d(0,0,0);
         this._children = new Array();
         super();
         this._name = param1;
         this._index = param2;
         this.var_1610 = param3;
         this.var_2982 = param4 * 0 * 2 / 360;
         this.var_2170 = param5 * 0 * 2 / 360;
         this._height = param6;
         this.var_1378 = 0;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         while(this._children.length > 0)
         {
            _loc1_ = this._children.shift();
            if(_loc1_ != null)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function update(param1:Array, param2:Vector3d, param3:Number) : void
      {
         var _loc4_:* = null;
         this.var_1378 += this.var_2982 / const_1711;
         param1[this._index] = this.getPositionVector(param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < this._children.length)
         {
            _loc4_ = this._children[_loc5_];
            _loc4_.update(param1,this.var_908,param3);
            _loc5_++;
         }
      }
      
      public function getPositionVector(param1:Vector3d, param2:Number) : Vector3d
      {
         var _loc3_:Number = this.var_1610 * Math.cos(this.var_1378 + this.var_2170);
         var _loc4_:Number = this.var_1610 * Math.sin(this.var_1378 + this.var_2170);
         var _loc5_:Number = this._height;
         this.var_908.x = (_loc3_ - _loc4_) * (param2 / 2);
         this.var_908.y = (_loc4_ + _loc3_) * (param2 / 2) * 0.5 - this._height * (param2 / 2);
         this.var_908.z = -int(4 * (_loc3_ + _loc4_) - 0.7);
         if(param1 != null)
         {
            this.var_908.add(param1);
         }
         return this.var_908;
      }
      
      public function addChild(param1:FurniturePlanetSystemVisualizationPlanetObject) : void
      {
         if(this._children.indexOf(param1) < 0)
         {
            this._children.push(param1);
         }
      }
      
      public function hasChild(param1:String) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._children.length)
         {
            _loc2_ = this._children[_loc3_];
            if(_loc2_.name == param1)
            {
               return true;
            }
            if(_loc2_.hasChild(param1))
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function getChild(param1:String) : FurniturePlanetSystemVisualizationPlanetObject
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._children.length)
         {
            _loc2_ = this._children[_loc3_];
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
            if(_loc2_.hasChild(param1))
            {
               return _loc2_.getChild(param1);
            }
            _loc3_++;
         }
         return null;
      }
   }
}
