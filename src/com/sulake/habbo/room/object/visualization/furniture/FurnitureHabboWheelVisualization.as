package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1104:int = 10;
      
      private static const const_705:int = 20;
      
      private static const const_1587:int = 31;
      
      private static const const_1497:int = 32;
       
      
      private var var_345:Array;
      
      private var var_831:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_345 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_831)
            {
               this.var_831 = true;
               this.var_345 = new Array();
               this.var_345.push(const_1587);
               this.var_345.push(const_1497);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1104)
         {
            if(this.var_831)
            {
               this.var_831 = false;
               this.var_345 = new Array();
               this.var_345.push(const_1104 + param1);
               this.var_345.push(const_705 + param1);
               this.var_345.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_345.length > 0)
            {
               super.setAnimation(this.var_345.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
