package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1041:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1302:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2195:String = "RWOCM_PIXELS";
      
      public static const const_2147:String = "RWOCM_CREDITS";
      
      public static const const_2168:String = "RWOCM_SHELLS";
       
      
      private var var_2387:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_1041);
         this.var_2387 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2387;
      }
   }
}
