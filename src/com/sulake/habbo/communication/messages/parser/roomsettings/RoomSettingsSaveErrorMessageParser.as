package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2269:int = 1;
      
      public static const const_2274:int = 2;
      
      public static const const_2143:int = 3;
      
      public static const const_2230:int = 4;
      
      public static const const_1835:int = 5;
      
      public static const const_2163:int = 6;
      
      public static const const_1884:int = 7;
      
      public static const const_1948:int = 8;
      
      public static const const_2281:int = 9;
      
      public static const const_2031:int = 10;
      
      public static const const_1967:int = 11;
      
      public static const const_1830:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1810:int;
      
      private var var_661:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1810 = param1.readInteger();
         this.var_661 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1810;
      }
      
      public function get info() : String
      {
         return this.var_661;
      }
   }
}
