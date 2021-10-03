package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class PopupCtrl
   {
       
      
      private var _friendList:HabboFriendList;
      
      private var var_1157:String;
      
      private var var_2678:int;
      
      private var _popupIndentLeft:int;
      
      private var var_470:Timer;
      
      private var var_393:Timer;
      
      private var var_59:IWindowContainer;
      
      public function PopupCtrl(param1:HabboFriendList, param2:int, param3:int, param4:String)
      {
         this.var_470 = new Timer(500,1);
         this.var_393 = new Timer(100,1);
         super();
         this._friendList = param1;
         this.var_1157 = param4;
         this.var_2678 = param2;
         this._popupIndentLeft = param3;
         this.var_470.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_393.addEventListener(TimerEvent.TIMER,this.onHideTimer);
      }
      
      public function get friendList() : HabboFriendList
      {
         return this._friendList;
      }
      
      public function showPopup(param1:IWindowContainer, param2:IWindow) : void
      {
         if(this.var_59 == null)
         {
            this.var_59 = IWindowContainer(this._friendList.getXmlWindow(this.var_1157));
            this.var_59.visible = false;
            param1.addChild(this.var_59);
         }
         this.refreshContent(this.var_59);
         this.var_59.width = Util.getRightmostPoint(this.var_59) + 10;
         this.var_59.height = Util.getLowestPoint(this.var_59) + 10;
         var _loc3_:Point = new Point();
         var _loc4_:Point = new Point();
         param1.getGlobalPosition(_loc3_);
         param2.getGlobalPosition(_loc4_);
         this.var_59.x = _loc4_.x - _loc3_.x + this.var_2678 + param2.width;
         this.var_59.y = _loc4_.y - _loc3_.y - this.var_59.height * 0.5 + param2.height * 0.5;
         var _loc5_:Point = new Point();
         this.var_59.getGlobalPosition(_loc5_);
         if(_loc5_.x + this.var_59.width > this.var_59.desktop.width)
         {
            this.var_59.x = -this.var_59.width + _loc4_.x - _loc3_.x + this._popupIndentLeft;
            this.refreshPopupArrows(this.var_59,false);
         }
         else
         {
            this.refreshPopupArrows(this.var_59,true);
         }
         if(!this.var_59.visible)
         {
            this.var_470.reset();
            this.var_470.start();
         }
         this.var_393.reset();
      }
      
      public function closePopup() : void
      {
         this.var_393.reset();
         this.var_470.reset();
         this.var_393.start();
      }
      
      private function refreshPopupArrows(param1:IWindowContainer, param2:Boolean) : void
      {
         this.refreshPopupArrow(param1,true,param2);
         this.refreshPopupArrow(param1,false,!param2);
      }
      
      private function refreshPopupArrow(param1:IWindowContainer, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:String = "popup_arrow_" + (!!param2 ? "left" : "right");
         var _loc5_:IBitmapWrapperWindow = IBitmapWrapperWindow(param1.findChildByName(_loc4_));
         if(!param3)
         {
            if(_loc5_ != null)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            if(_loc5_ == null)
            {
               _loc5_ = this._friendList.getButton(_loc4_,_loc4_,null);
               _loc5_.setParamFlag(HabboWindowParam.const_64,false);
               param1.addChild(_loc5_);
            }
            _loc5_.visible = true;
            _loc5_.y = param1.height * 0.5 - _loc5_.height * 0.5;
            _loc5_.x = !!param2 ? int(1 - _loc5_.width) : int(param1.width - 1);
         }
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.var_59.visible = true;
         this.var_59.activate();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         if(this.var_59 != null)
         {
            this.var_59.visible = false;
         }
      }
      
      public function refreshContent(param1:IWindowContainer) : void
      {
      }
   }
}
