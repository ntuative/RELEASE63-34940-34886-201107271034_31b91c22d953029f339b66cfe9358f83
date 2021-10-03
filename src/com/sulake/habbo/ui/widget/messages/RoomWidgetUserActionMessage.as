package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_594:String = "RWUAM_WHISPER_USER";
      
      public static const const_652:String = "RWUAM_IGNORE_USER";
      
      public static const const_656:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_394:String = "RWUAM_KICK_USER";
      
      public static const const_533:String = "RWUAM_BAN_USER";
      
      public static const const_661:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_523:String = "RWUAM_RESPECT_USER";
      
      public static const const_498:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_657:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_542:String = "RWUAM_START_TRADING";
      
      public static const const_874:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_585:String = "RWUAM_KICK_BOT";
      
      public static const const_644:String = "RWUAM_REPORT";
      
      public static const const_577:String = "RWUAM_PICKUP_PET";
      
      public static const const_2005:String = "RWUAM_TRAIN_PET";
      
      public static const const_592:String = " RWUAM_RESPECT_PET";
      
      public static const const_262:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_601:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
