package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2228:int = 0;
      
      public static const const_2001:int = 1;
      
      public static const const_1897:int = 2;
      
      public static const const_2302:int = 3;
      
      public static const const_2202:int = 4;
      
      public static const const_2177:int = 5;
      
      public static const const_2003:int = 10;
      
      public static const const_2136:int = 11;
      
      public static const const_2172:int = 12;
      
      public static const const_2356:int = 13;
      
      public static const const_2244:int = 16;
      
      public static const const_2256:int = 17;
      
      public static const const_2201:int = 18;
      
      public static const const_2166:int = 19;
      
      public static const const_2229:int = 20;
      
      public static const const_2206:int = 22;
      
      public static const const_2161:int = 23;
      
      public static const const_2349:int = 24;
      
      public static const const_2175:int = 25;
      
      public static const const_2259:int = 26;
      
      public static const const_2213:int = 27;
      
      public static const const_2307:int = 28;
      
      public static const const_2216:int = 29;
      
      public static const const_2258:int = 100;
      
      public static const const_2210:int = 101;
      
      public static const const_2357:int = 102;
      
      public static const const_2181:int = 103;
      
      public static const const_2324:int = 104;
      
      public static const const_2200:int = 105;
      
      public static const const_2294:int = 106;
      
      public static const const_2253:int = 107;
      
      public static const const_2272:int = 108;
      
      public static const const_2295:int = 109;
      
      public static const const_2190:int = 110;
      
      public static const const_2284:int = 111;
      
      public static const const_2208:int = 112;
      
      public static const const_2236:int = 113;
      
      public static const const_2246:int = 114;
      
      public static const const_2304:int = 115;
      
      public static const const_2218:int = 116;
      
      public static const const_2240:int = 117;
      
      public static const const_2327:int = 118;
      
      public static const const_2296:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_2001:
            case const_2003:
               return "banned";
            case const_1897:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
