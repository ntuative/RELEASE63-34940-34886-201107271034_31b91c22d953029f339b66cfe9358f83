package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_499:int = 0;
      
      private var var_569:int = 0;
      
      private var var_694:int = 0;
      
      private var _type:int = 0;
      
      private var var_3125:String = "";
      
      private var var_1633:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2701:int = 0;
      
      private var var_2700:Boolean;
      
      private var var_2699:String = null;
      
      private var var_205:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_569;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_569 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_694;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_694 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_205)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_205)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_205)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2699;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_2699 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1633;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_1633 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2701;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_205)
         {
            this.var_2701 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2700;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2700 = param1;
      }
   }
}
