package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2806:String;
      
      private var var_2804:Class;
      
      private var var_2805:Class;
      
      private var var_2045:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2806 = param1;
         this.var_2804 = param2;
         this.var_2805 = param3;
         if(rest == null)
         {
            this.var_2045 = new Array();
         }
         else
         {
            this.var_2045 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2806;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2804;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2805;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2045;
      }
   }
}
