package com.sulake.habbo.friendbar.stream
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.friendlist.EventStreamData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.EventStreamEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserObjectEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.GetEventStreamComposer;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SetEventStreamingAllowedComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarView;
   import com.sulake.habbo.friendbar.utils.LinkTarget;
   import com.sulake.habbo.friendbar.utils.TestMessageWrapper;
   import com.sulake.habbo.friendbar.view.*;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboEventStream extends AbstractView implements IHabboEventStream
   {
      
      private static const const_713:String = "list";
      
      private static const const_464:String = "header";
      
      private static const const_1254:String = "badge";
      
      private static const CLOSE:String = "close";
      
      private static const const_1121:String = "open_settings";
      
      private static const const_1122:String = "close_settings";
      
      private static const const_712:String = "settings";
      
      private static const const_710:String = "check_stream";
      
      private static const const_1629:String = "see_more";
      
      private static const const_1625:uint = 0;
      
      private static const const_2114:uint = 1;
      
      private static const const_1626:uint = 4293519841;
      
      private static const const_1627:uint = 4292467926;
      
      private static const const_711:int = -2;
      
      private static const const_1630:int = -3;
      
      private static const const_1123:int = 42;
      
      private static const const_1623:int = 60000;
      
      private static const const_1624:int = 30000;
      
      private static const const_1628:String = "friendbar.stream.";
       
      
      private var var_2004:int = 1;
      
      private var _window:IWindowContainer;
      
      private var var_691:Vector.<EventStreamEntity>;
      
      private var _connection:IConnection;
      
      private var var_867:Boolean = false;
      
      private var var_692:Timer;
      
      private var var_93:IHabboCommunicationManager;
      
      private var var_144:IHabboConfigurationManager;
      
      private var var_690:Timer;
      
      private var var_2728:IHabboFriendBarView;
      
      private var var_1069:Boolean;
      
      private var var_1594:Vector.<int>;
      
      private var var_1596:Boolean = false;
      
      private var var_2005:Boolean = false;
      
      private var var_2730:Array;
      
      private var var_2729:Array;
      
      private var var_1595:Map;
      
      public function HabboEventStream(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         this.var_1594 = new Vector.<int>();
         this.var_2730 = ["friend_made","room_liked","achievement_earned","motto_changed","room_decorated"];
         this.var_2729 = ["no_link","open_mini_profile","visit_room","open_achievements","open_motto_changer","friend_request"];
         this.var_1595 = new Map();
         super(param1,param2,param3);
         this.var_691 = new Vector.<EventStreamEntity>();
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerAvailable);
         queueInterface(new IIDHabboFriendBarView(),this.onFriendBarViewAvailable);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationAvailable);
         this.var_1595.add("m","his");
         this.var_1595.add("f","her");
         if(!this.var_690)
         {
            this.var_690 = new Timer(const_1624);
            this.var_690.addEventListener(TimerEvent.TIMER,this.onRefreshTimerEvent);
            this.var_690.start();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(!this._window)
         {
            this.setupUserInterface();
         }
         this._window.visible = param1;
         if(param1)
         {
            this._window.x = this._window.desktop.width - (this._window.width + const_1630);
            this._window.y = const_711;
            this._window.height = this._window.desktop.height - (const_711 + const_1123);
            this._window.activate();
            this.requestEventStreamData(this.var_2004);
         }
      }
      
      public function get visible() : Boolean
      {
         return !!this._window ? Boolean(this._window.visible) : false;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_692)
            {
               this.var_692.stop();
               this.var_692.removeEventListener(TimerEvent.TIMER,this.onMinuteTimerEvent);
               this.var_692 = null;
            }
            if(this.var_690)
            {
               this.var_690.stop();
               this.var_690.removeEventListener(TimerEvent.TIMER,this.onRefreshTimerEvent);
               this.var_690 = null;
            }
            while(this.var_691.length > 0)
            {
               this.var_691.pop().dispose();
            }
            if(false)
            {
               EventStreamEntity.name_7.dispose();
            }
            EventStreamEntity.name_7 = null;
            EventStreamEntity.var_2231 = null;
            EventStreamEntity.ASSETS = null;
            if(this._window)
            {
               this._window.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
               this._window.dispose();
               this._window = null;
            }
            super.dispose();
         }
      }
      
      private function clearStreamList() : void
      {
         var _loc1_:IItemListWindow = this._window.findChildByName(const_713) as IItemListWindow;
         _loc1_.destroyListItems();
         while(this.var_691.length > 0)
         {
            this.var_691.pop().dispose();
         }
      }
      
      public function populate(param1:Vector.<EventStreamData>) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(!this._window)
         {
            this.setupUserInterface();
         }
         if(this.visible)
         {
            this.clearStreamList();
            _loc2_ = this.var_691.length % 2 == 0;
            _loc4_ = this._window.findChildByName(const_713) as IItemListWindow;
            _loc5_ = 0;
            for each(_loc6_ in param1)
            {
               _loc3_ = EventStreamEntity.allocate();
               _loc3_.title = _loc6_.accountName;
               _loc3_.message = this.resolveMessageText(_loc6_);
               _loc3_.linkTarget = this.resolveLinkTarget(_loc6_);
               _loc3_.imageFilePath = this.resolveImagePath(_loc6_);
               _loc3_.minutesElapsed = _loc6_.minutesSinceEvent;
               _loc3_.window.color = !!_loc2_ ? uint(const_1626) : uint(const_1627);
               this.var_691.push(_loc3_);
               _loc4_.addListItem(_loc3_.window);
               _loc2_ = !_loc2_;
               if(this.var_1594.indexOf(_loc6_.id) == -1)
               {
                  _loc5_++;
                  this.var_1594.push(_loc6_.id);
               }
            }
            if(param1.length == 0)
            {
            }
            _loc7_ = this._window.findChildByName(const_464) as IItemListWindow;
            _loc8_ = _loc7_.getListItemByName(const_1254);
            _loc8_.caption = String(_loc5_);
            _loc8_.visible = _loc5_ != 0;
            this.var_1596 = false;
         }
         else
         {
            for each(_loc9_ in param1)
            {
               if(this.var_1594.indexOf(_loc9_.id) == -1)
               {
                  this.var_1596 = true;
                  break;
               }
            }
         }
      }
      
      private function resolveMessageText(param1:EventStreamData) : String
      {
         var _loc6_:* = null;
         var _loc2_:int = param1.actionId;
         var _loc3_:String = "friendbar.stream.type." + this.var_2730[_loc2_];
         var _loc4_:ILocalization = var_313.getLocalization(_loc3_);
         if(!_loc4_)
         {
            return _loc3_;
         }
         var _loc5_:String = _loc4_.raw;
         switch(_loc2_)
         {
            case EventStreamData.const_614:
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.friendName);
               break;
            case EventStreamData.const_902:
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.roomName);
               break;
            case EventStreamData.const_955:
               _loc5_ = _loc5_.replace("%targetString%",var_313.getAchievementName(param1.extraDataStruct.achievementCode));
               break;
            case EventStreamData.const_1380:
               _loc6_ = var_313.getLocalization(const_1628 + this.var_1595.getValue(param1.accountGender));
               _loc5_ = _loc5_.replace("%gender%",_loc6_.value);
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.motto);
               break;
            case EventStreamData.const_1864:
         }
         return _loc5_;
      }
      
      private function resolveLinkTarget(param1:EventStreamData) : LinkTarget
      {
         var _loc3_:* = null;
         var _loc2_:String = "friendbar.stream.link." + this.var_2729[param1.linkTargetType];
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:ILocalization = var_313.getLocalization(_loc2_);
         _loc3_ = !!_loc7_ ? _loc7_.raw : "";
         switch(param1.linkTargetType)
         {
            case EventStreamData.const_1958:
               _loc4_ = 0;
               _loc3_ = "";
               break;
            case EventStreamData.const_1381:
               _loc3_ = _loc3_.replace("%targetString%",param1.extraDataStruct.friendName);
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.friendId);
               break;
            case EventStreamData.const_1850:
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.roomId);
               break;
            case EventStreamData.const_1925:
               _loc4_ = 0;
               break;
            case EventStreamData.LINK_TARGET_OPEN_MOTTO_CHANGER:
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case EventStreamData.const_2047:
               _loc3_ = _loc3_.replace("%targetString%",param1.extraDataStruct.friendName);
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.friendId);
               _loc6_ = param1.extraDataStruct.friendName;
         }
         return new LinkTarget(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      private function resolveImagePath(param1:EventStreamData) : String
      {
         var _loc2_:String = param1.imageFilePath;
         var _loc3_:int = param1.actionId;
         switch(_loc3_)
         {
            case EventStreamData.const_614:
               break;
            case EventStreamData.const_902:
               break;
            case EventStreamData.const_955:
         }
         return _loc2_;
      }
      
      private function setupUserInterface() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._window)
         {
            this._window = _windowManager.buildFromXML(assets.getAssetByName("event_stream_display_xml").content as XML) as IWindowContainer;
            this._window.height = this._window.desktop.height - (const_711 + const_1123);
            this._window.setParamFlag(WindowParam.const_325);
            this._window.setParamFlag(WindowParam.const_252);
            this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(CLOSE).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(const_1121).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(const_1122).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.visible = false;
            _loc1_ = IWindowContainer(this._window.findChildByName(const_712));
            _loc1_.visible = !this.var_1069;
            _loc1_.procedure = this.settingsEventProc;
            ISelectableWindow(_loc1_.findChildByName(const_710)).isSelected = this.var_1069;
            _loc2_ = this._window.findChildByName(const_713) as IItemListWindow;
            _loc3_ = _loc2_.removeListItemAt(0) as IWindowContainer;
            EventStreamEntity.name_7 = _loc3_;
            EventStreamEntity.var_2231 = var_313;
            EventStreamEntity.ASSETS = assets;
            if(!this.var_692)
            {
               this.var_692 = new Timer(const_1623);
               this.var_692.addEventListener(TimerEvent.TIMER,this.onMinuteTimerEvent);
               this.var_692.start();
            }
         }
      }
      
      private function onMouseClick(param1:WindowMouseEvent) : void
      {
         switch(param1.target.name)
         {
            case CLOSE:
               this.visible = false;
               break;
            case const_1121:
               this._window.findChildByName(const_712).visible = true;
               break;
            case const_1122:
               this._window.findChildByName(const_712).visible = false;
         }
      }
      
      private function settingsEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case const_1629:
                  _windowManager.alert("${catalog.alert.external.link.title}","${catalog.alert.external.link.desc}",0,null);
                  HabboWebTools.openWebPage(var_943.getKey("link.friendbar.stream.settings.see.more",""));
            }
         }
         if(param1.type == WindowEvent.const_48)
         {
            switch(param2.name)
            {
               case const_710:
                  this.var_1069 = true;
                  this.sendSetEventStreamingEnabled(true);
                  Logger.log("Streaming enabled");
            }
         }
         else if(param1.type == WindowEvent.const_426)
         {
            switch(param2.name)
            {
               case const_710:
                  this.var_1069 = false;
                  this.sendSetEventStreamingEnabled(false);
                  Logger.log("Streaming disabled");
            }
         }
      }
      
      private function onMinuteTimerEvent(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_691)
         {
            _loc2_.minutesElapsed += 1;
         }
      }
      
      private function onRefreshTimerEvent(param1:TimerEvent) : void
      {
         if(this.visible || !this.var_1596)
         {
            this.requestEventStreamData(this.var_2004);
         }
      }
      
      private function requestEventStreamData(param1:uint) : void
      {
         if(this._connection && this._connection.connected && this.var_2005)
         {
            this._connection.send(new GetEventStreamComposer(param1 == const_1625 ? 0 : int(GetEventStreamComposer.const_1772)));
            this.var_867 = true;
            Logger.log("Requested stream events in mode " + param1);
         }
      }
      
      private function onCommunicationManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_93 = param2 as IHabboCommunicationManager;
         this.var_93.addHabboConnectionMessageEvent(new EventStreamEvent(this.onEventStreamEvent));
         this.var_93.addHabboConnectionMessageEvent(new UserObjectEvent(this.onUserObjectEvent));
         this._connection = this.var_93.getHabboMainConnection(this.onConnectionInstanceAvailable);
      }
      
      private function onConnectionInstanceAvailable(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      private function onEventStreamEvent(param1:EventStreamEvent) : void
      {
         this.populate(param1.events);
         this.var_2728.setStreamIconNotify(!this.visible && this.var_1596);
      }
      
      private function testEventStream(param1:int = 1) : void
      {
         var _loc2_:Vector.<EventStreamData> = new Vector.<EventStreamData>();
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_.push(new EventStreamData(_loc3_,EventStreamData.const_614,String(_loc3_ * 1000),"FooBar" + _loc3_,"m","http://d63.varoke.net/habbo-imaging/badge/b1003Xs05175s05173s091145ec244dcc5eaf54aaabf367665f39c67.gif",_loc3_,EventStreamData.const_1381,new TestMessageWrapper(["1234","Friend\'s friend" + _loc3_])));
            _loc3_++;
         }
         this.populate(_loc2_);
      }
      
      private function onFriendBarViewAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_2728 = param2 as IHabboFriendBarView;
      }
      
      private function onConfigurationAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_144 = param2 as IHabboConfigurationManager;
         if(this.var_144.getKey("friendbar.stream.enabled","false") == "true")
         {
            this.var_2005 = true;
         }
         else
         {
            this.var_2005 = false;
         }
      }
      
      private function sendSetEventStreamingEnabled(param1:Boolean) : void
      {
         if(this._connection && this._connection.connected)
         {
            this._connection.send(new SetEventStreamingAllowedComposer(param1));
         }
      }
      
      private function onUserObjectEvent(param1:UserObjectEvent) : void
      {
         this.var_1069 = param1.getParser().streamPublishingAllowed;
         Logger.log("Stream events allowed " + this.var_1069);
      }
      
      public function refreshEventStream() : void
      {
         this.requestEventStreamData(this.var_2004);
      }
   }
}
