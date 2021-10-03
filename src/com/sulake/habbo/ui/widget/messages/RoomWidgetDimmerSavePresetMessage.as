package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_912:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2582:int;
      
      private var var_2583:int;
      
      private var _color:uint;
      
      private var var_1196:int;
      
      private var var_2581:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_912);
         this.var_2582 = param1;
         this.var_2583 = param2;
         this._color = param3;
         this.var_1196 = param4;
         this.var_2581 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2582;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2583;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1196;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2581;
      }
   }
}
