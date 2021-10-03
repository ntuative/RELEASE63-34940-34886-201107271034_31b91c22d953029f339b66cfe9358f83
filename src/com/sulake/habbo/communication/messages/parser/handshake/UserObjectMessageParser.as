package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_671:String;
      
      private var var_1095:String;
      
      private var var_2684:String;
      
      private var var_1903:String;
      
      private var var_2683:int;
      
      private var var_2686:int;
      
      private var var_1201:int;
      
      private var _petRespectLeft:int;
      
      private var var_2685:Boolean;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_671 = param1.readString();
         this.var_1095 = param1.readString();
         this.var_2684 = param1.readString();
         this.var_1903 = param1.readString();
         this.var_2683 = param1.readInteger();
         this.var_2686 = param1.readInteger();
         this.var_1201 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2685 = param1.readBoolean();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get sex() : String
      {
         return this.var_1095;
      }
      
      public function get customData() : String
      {
         return this.var_2684;
      }
      
      public function get realName() : String
      {
         return this.var_1903;
      }
      
      public function get directMail() : int
      {
         return this.var_2683;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2686;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1201;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get streamPublishingAllowed() : Boolean
      {
         return this.var_2685;
      }
   }
}
