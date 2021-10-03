package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.SortableSprite;
   
   public class RoomObjectSortableSpriteCacheItem
   {
       
      
      private var var_213:Array;
      
      private var var_2395:int = -1;
      
      private var var_2394:int = -1;
      
      private var var_1781:Boolean = false;
      
      public function RoomObjectSortableSpriteCacheItem()
      {
         this.var_213 = [];
         super();
      }
      
      public function get spriteCount() : int
      {
         return this.var_213.length;
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_1781;
      }
      
      public function dispose() : void
      {
         this.setSpriteCount(0);
      }
      
      public function addSprite(param1:SortableSprite) : void
      {
         this.var_213.push(param1);
      }
      
      public function getSprite(param1:int) : SortableSprite
      {
         return this.var_213[param1];
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != this.var_2395 || param2 != this.var_2394)
         {
            this.var_2395 = param1;
            this.var_2394 = param2;
            return true;
         }
         return false;
      }
      
      public function setSpriteCount(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 < this.var_213.length)
         {
            _loc2_ = param1;
            while(_loc2_ < this.var_213.length)
            {
               _loc3_ = this.getSprite(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            this.var_213.splice(param1,this.var_213.length - param1);
         }
         if(this.var_213.length == 0)
         {
            this.var_1781 = true;
         }
         else
         {
            this.var_1781 = false;
         }
      }
   }
}
