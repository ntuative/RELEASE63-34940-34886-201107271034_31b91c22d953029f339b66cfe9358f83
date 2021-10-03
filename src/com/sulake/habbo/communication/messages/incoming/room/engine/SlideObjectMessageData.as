package com.sulake.habbo.communication.messages.incoming.room.engine
{
   import com.sulake.room.utils.Vector3d;
   
   public class SlideObjectMessageData
   {
      
      public static const const_1326:String = "mv";
      
      public static const const_1210:String = "sld";
       
      
      private var _id:int = 0;
      
      private var var_107:Vector3d;
      
      private var _target:Vector3d;
      
      private var var_2172:String;
      
      private var var_205:Boolean = false;
      
      public function SlideObjectMessageData(param1:int, param2:Vector3d, param3:Vector3d, param4:String = null)
      {
         super();
         this._id = param1;
         this.var_107 = param2;
         this._target = param3;
         this.var_2172 = param4;
      }
      
      public function setReadOnly() : void
      {
         this.var_205 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_107;
      }
      
      public function set loc(param1:Vector3d) : void
      {
         if(!this.var_205)
         {
            this.var_107 = param1;
         }
      }
      
      public function get target() : Vector3d
      {
         return this._target;
      }
      
      public function set target(param1:Vector3d) : void
      {
         if(!this.var_205)
         {
            this._target = param1;
         }
      }
      
      public function get moveType() : String
      {
         return this.var_2172;
      }
      
      public function set moveType(param1:String) : void
      {
         if(!this.var_205)
         {
            this.var_2172 = param1;
         }
      }
   }
}
