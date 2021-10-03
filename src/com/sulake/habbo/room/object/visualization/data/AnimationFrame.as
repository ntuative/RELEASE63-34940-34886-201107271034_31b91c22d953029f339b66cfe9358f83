package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_645:int = -1;
      
      public static const const_1186:int = -1;
      
      private static const const_1752:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_182:int = 0;
      
      private var var_2852:int = 1;
      
      private var var_1145:int = 1;
      
      private var var_2216:int = 1;
      
      private var var_3052:int = -1;
      
      private var var_3051:int = 0;
      
      private var var_3050:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_182 = param3;
         _loc9_.var_3050 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2852 = param4;
         if(param5 < 0)
         {
            param5 = const_645;
         }
         _loc9_.var_1145 = param5;
         _loc9_.var_2216 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_3052 = param7;
            _loc9_.var_3051 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_182;
      }
      
      public function get repeats() : int
      {
         return this.var_2852;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_1145;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_3050;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_1145 < 0)
         {
            return const_645;
         }
         return this.var_2216;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_1145 > 0 && param1 > this.var_1145)
         {
            param1 = this.var_1145;
         }
         this.var_2216 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_3052;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_3051;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1752)
            {
               POOL.push(this);
            }
         }
      }
   }
}
