package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_198:String = "e";
       
      
      private var var_1676:String;
      
      private var var_3032:int;
      
      private var var_1123:String;
      
      private var var_1677:int;
      
      private var var_2147:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1676 = param1.readString();
         this.var_3032 = param1.readInteger();
         this.var_1123 = param1.readString();
         this.var_1677 = param1.readInteger();
         this.var_2147 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1676;
      }
      
      public function get furniClassId() : int
      {
         return this.var_3032;
      }
      
      public function get extraParam() : String
      {
         return this.var_1123;
      }
      
      public function get productCount() : int
      {
         return this.var_1677;
      }
      
      public function get expiration() : int
      {
         return this.var_2147;
      }
   }
}
