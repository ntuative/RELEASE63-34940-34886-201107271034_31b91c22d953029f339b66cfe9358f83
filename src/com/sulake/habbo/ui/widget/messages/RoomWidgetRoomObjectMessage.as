package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomObjectMessage extends RoomWidgetMessage
   {
      
      public static const const_553:String = "RWROM_GET_OBJECT_INFO";
      
      public static const const_986:String = "RWROM_GET_OBJECT_NAME";
      
      public static const const_346:String = "RWROM_SELECT_OBJECT";
      
      public static const const_1010:String = "RWROM_GET_OWN_CHARACTER_INFO";
      
      public static const const_2285:String = "RWROM_GET_AVATAR_LIST";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      public function RoomWidgetRoomObjectMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         this._id = param2;
         this._category = param3;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
   }
}