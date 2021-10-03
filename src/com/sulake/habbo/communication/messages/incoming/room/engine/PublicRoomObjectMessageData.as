package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_182:Number = 0;
      
      private var var_183:Number = 0;
      
      private var var_499:int = 0;
      
      private var var_569:int = 0;
      
      private var var_694:int = 0;
      
      private var var_205:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_205 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_205)
         {
            this._type = param1;
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
   }
}
