package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_239:int = 0;
      
      private var var_2114:int = 0;
      
      private var var_2115:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_239;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2114;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_2115;
      }
      
      public function flush() : Boolean
      {
         this.var_239 = 0;
         this.var_2114 = 0;
         this.var_2115 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_239 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_2115 = param1.readString();
         return true;
      }
   }
}
