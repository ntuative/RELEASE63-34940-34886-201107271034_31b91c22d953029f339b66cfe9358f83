package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SignMessageComposer implements IMessageComposer
   {
       
      
      private var var_2513:int;
      
      public function SignMessageComposer(param1:int)
      {
         super();
         this.var_2513 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2513];
      }
      
      public function dispose() : void
      {
      }
   }
}
