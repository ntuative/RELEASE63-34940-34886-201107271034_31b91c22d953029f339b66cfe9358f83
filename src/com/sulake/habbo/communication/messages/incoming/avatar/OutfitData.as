package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1931:int;
      
      private var var_2901:String;
      
      private var var_1034:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1931 = param1.readInteger();
         this.var_2901 = param1.readString();
         this.var_1034 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1931;
      }
      
      public function get figureString() : String
      {
         return this.var_2901;
      }
      
      public function get gender() : String
      {
         return this.var_1034;
      }
   }
}
