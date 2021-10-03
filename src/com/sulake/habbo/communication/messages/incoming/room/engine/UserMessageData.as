package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1410:String = "M";
      
      public static const const_2054:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_499:int = 0;
      
      private var _name:String = "";
      
      private var var_1715:int = 0;
      
      private var var_1095:String = "";
      
      private var var_671:String = "";
      
      private var var_2672:String = "";
      
      private var var_2475:int;
      
      private var var_2474:int = 0;
      
      private var var_2673:String = "";
      
      private var var_2675:int = 0;
      
      private var var_2477:int = 0;
      
      private var var_2674:String = "";
      
      private var var_205:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_205 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_205)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_182;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_205)
         {
            this.var_182 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_183;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_205)
         {
            this.var_183 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_499;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_499 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_205)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1715;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_1715 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1095;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_1095 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_671 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2672;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_2672 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2475;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_2475 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2474;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_2474 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2673;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_2673 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2675;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_2675 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2477;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_2477 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2674;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_2674 = param1;
         }
      }
   }
}
