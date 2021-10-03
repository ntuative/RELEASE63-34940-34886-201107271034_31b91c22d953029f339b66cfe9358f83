package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1104:int = 20;
      
      private static const const_705:int = 10;
      
      private static const const_1587:int = 31;
      
      private static const const_1497:int = 32;
      
      private static const const_704:int = 30;
       
      
      private var var_345:Array;
      
      private var var_831:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_345 = new Array();
         super();
         super.setAnimation(const_704);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_705)
         {
            if(this.var_831)
            {
               this.var_831 = false;
               this.var_345 = new Array();
               if(direction == 2)
               {
                  this.var_345.push(const_1104 + 5 - param1);
                  this.var_345.push(const_705 + 5 - param1);
               }
               else
               {
                  this.var_345.push(const_1104 + param1);
                  this.var_345.push(const_705 + param1);
               }
               this.var_345.push(const_704);
               return;
            }
            super.setAnimation(const_704);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
