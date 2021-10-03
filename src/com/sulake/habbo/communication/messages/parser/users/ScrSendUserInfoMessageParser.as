package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2297:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1401:int = 3;
       
      
      private var var_1005:String;
      
      private var var_2628:int;
      
      private var var_2627:int;
      
      private var var_2630:int;
      
      private var var_2624:int;
      
      private var include:Boolean;
      
      private var var_2408:Boolean;
      
      private var var_2623:int;
      
      private var var_2626:int;
      
      private var var_2631:Boolean;
      
      private var var_2629:int;
      
      private var var_2625:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1005 = param1.readString();
         this.var_2628 = param1.readInteger();
         this.var_2627 = param1.readInteger();
         this.var_2630 = param1.readInteger();
         this.var_2624 = param1.readInteger();
         this.include = param1.readBoolean();
         this.var_2408 = param1.readBoolean();
         this.var_2623 = param1.readInteger();
         this.var_2626 = param1.readInteger();
         this.var_2631 = param1.readBoolean();
         this.var_2629 = param1.readInteger();
         this.var_2625 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_1005;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2628;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2627;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2630;
      }
      
      public function get responseType() : int
      {
         return this.var_2624;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.include;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2408;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2623;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2626;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2631;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2629;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2625;
      }
   }
}
