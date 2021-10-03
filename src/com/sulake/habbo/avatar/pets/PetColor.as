package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1898:uint;
      
      private var var_1899:uint;
      
      private var _b:uint;
      
      private var var_809:ColorTransform;
      
      private var var_2074:Number;
      
      private var var_2076:Number;
      
      private var var_2075:Number;
      
      private var var_2559:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1898 = this._rgb >> 16 & 255;
         this.var_1899 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_2074 = this.var_1898 / 255 * 1;
         this.var_2076 = this.var_1899 / 255 * 1;
         this.var_2075 = this._b / 255 * 1;
         this.var_809 = new ColorTransform(this.var_2074,this.var_2076,this.var_2075);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1898;
      }
      
      public function get g() : uint
      {
         return this.var_1899;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_809;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2559;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2559 = param1;
      }
   }
}
