package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2411:String;
      
      private var var_2585:int;
      
      private var var_2412:int;
      
      private var var_2584:String;
      
      private var var_2948:int;
      
      private var var_1932:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2411 = param1.readString();
         this.var_2585 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_2584 = param1.readString();
         this.var_2948 = param1.readInteger();
         this.var_1932 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2411;
      }
      
      public function get unitPort() : int
      {
         return this.var_2585;
      }
      
      public function get worldId() : int
      {
         return this.var_2412;
      }
      
      public function get castLibs() : String
      {
         return this.var_2584;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2948;
      }
      
      public function get nodeId() : int
      {
         return this.var_1932;
      }
   }
}
