package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_239:int;
      
      private var var_2398:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_239 = param1;
         this.var_2398 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_239,this.var_2398];
      }
      
      public function dispose() : void
      {
      }
   }
}
