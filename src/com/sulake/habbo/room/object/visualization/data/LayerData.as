package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_1018:String = "";
      
      public static const const_430:int = 0;
      
      public static const const_589:int = 255;
      
      public static const const_989:Boolean = false;
      
      public static const const_512:int = 0;
      
      public static const const_502:int = 0;
      
      public static const const_411:int = 0;
      
      public static const const_1194:int = 1;
      
      public static const const_1417:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2445:String = "";
      
      private var var_2006:int = 0;
      
      private var var_2399:int = 255;
      
      private var var_3036:Boolean = false;
      
      private var var_3034:int = 0;
      
      private var var_3037:int = 0;
      
      private var var_3035:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2445 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2445;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2006 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2006;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2399 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2399;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_3036 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_3036;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_3034 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_3034;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_3037 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_3037;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_3035 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_3035;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
