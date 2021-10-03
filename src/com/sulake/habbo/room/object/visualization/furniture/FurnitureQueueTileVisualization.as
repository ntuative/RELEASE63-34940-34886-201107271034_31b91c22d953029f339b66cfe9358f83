package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1497:int = 3;
      
      private static const const_1451:int = 2;
      
      private static const const_1453:int = 1;
      
      private static const const_1452:int = 15;
       
      
      private var var_345:Array;
      
      private var var_1167:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_345 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1451)
         {
            this.var_345 = new Array();
            this.var_345.push(const_1453);
            this.var_1167 = const_1452;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1167 > 0)
         {
            --this.var_1167;
         }
         if(this.var_1167 == 0)
         {
            if(this.var_345.length > 0)
            {
               super.setAnimation(this.var_345.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
