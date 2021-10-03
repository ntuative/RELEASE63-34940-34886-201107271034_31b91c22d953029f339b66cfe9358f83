package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1551:Boolean = false;
      
      private var var_2035:int;
      
      private var var_2203:Array;
      
      private var var_920:Array;
      
      private var var_922:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1551 = _loc2_.isWrappingEnabled;
         this.var_2035 = _loc2_.wrappingPrice;
         this.var_2203 = _loc2_.stuffTypes;
         this.var_920 = _loc2_.boxTypes;
         this.var_922 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1551;
      }
      
      public function get price() : int
      {
         return this.var_2035;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2203;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_920;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_922;
      }
   }
}
