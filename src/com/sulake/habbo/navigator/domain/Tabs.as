package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_380:int = 1;
      
      public static const const_231:int = 2;
      
      public static const const_315:int = 3;
      
      public static const const_359:int = 4;
      
      public static const const_265:int = 5;
      
      public static const const_432:int = 1;
      
      public static const const_967:int = 2;
      
      public static const const_931:int = 3;
      
      public static const const_783:int = 4;
      
      public static const const_261:int = 5;
      
      public static const const_935:int = 6;
      
      public static const const_789:int = 7;
      
      public static const const_415:int = 8;
      
      public static const const_675:int = 9;
      
      public static const const_2176:int = 10;
      
      public static const const_956:int = 11;
      
      public static const const_543:int = 12;
       
      
      private var var_451:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_451 = new Array();
         this.var_451.push(new Tab(this._navigator,const_380,const_543,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_678));
         this.var_451.push(new Tab(this._navigator,const_231,const_432,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_678));
         this.var_451.push(new Tab(this._navigator,const_359,const_956,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1208));
         this.var_451.push(new Tab(this._navigator,const_315,const_261,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_678));
         this.var_451.push(new Tab(this._navigator,const_265,const_415,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1362));
         this.setSelectedTab(const_380);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_359;
      }
      
      public function get tabs() : Array
      {
         return this.var_451;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_451)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_451)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_451)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
