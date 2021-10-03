package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ChangeQueueMessageComposer implements IMessageComposer
   {
       
      
      private var var_2646:int;
      
      public function ChangeQueueMessageComposer(param1:int)
      {
         super();
         this.var_2646 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2646];
      }
      
      public function dispose() : void
      {
      }
      
      public function get disposed() : Boolean
      {
         return true;
      }
   }
}
