package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2506:int = 0;
      
      private var var_1496:String = "";
      
      private var var_1838:String = "";
      
      private var var_2485:String = "";
      
      private var var_2505:String = "";
      
      private var var_1851:int = 0;
      
      private var var_2504:int = 0;
      
      private var var_2502:int = 0;
      
      private var var_1497:int = 0;
      
      private var var_2503:int = 0;
      
      private var var_1495:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2506 = param1;
         this.var_1496 = param2;
         this.var_1838 = param3;
         this.var_2485 = param4;
         this.var_2505 = param5;
         if(param6)
         {
            this.var_1851 = 1;
         }
         else
         {
            this.var_1851 = 0;
         }
         this.var_2504 = param7;
         this.var_2502 = param8;
         this.var_1497 = param9;
         this.var_2503 = param10;
         this.var_1495 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2506,this.var_1496,this.var_1838,this.var_2485,this.var_2505,this.var_1851,this.var_2504,this.var_2502,this.var_1497,this.var_2503,this.var_1495];
      }
   }
}
