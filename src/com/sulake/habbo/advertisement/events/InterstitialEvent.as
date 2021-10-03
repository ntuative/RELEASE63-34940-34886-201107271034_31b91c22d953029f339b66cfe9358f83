package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class InterstitialEvent extends Event
   {
      
      public static const const_660:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_590:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_49:BitmapData;
      
      private var var_2771:String;
      
      public function InterstitialEvent(param1:String, param2:BitmapData = null, param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      public function get image() : BitmapData
      {
         return this.var_49;
      }
      
      public function get clickURL() : String
      {
         return this.var_2771;
      }
   }
}