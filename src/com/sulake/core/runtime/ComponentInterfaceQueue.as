package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1852:IID;
      
      private var var_1161:Boolean;
      
      private var var_1232:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1852 = param1;
         this.var_1232 = new Array();
         this.var_1161 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1852;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1161;
      }
      
      public function get receivers() : Array
      {
         return this.var_1232;
      }
      
      public function dispose() : void
      {
         if(!this.var_1161)
         {
            this.var_1161 = true;
            this.var_1852 = null;
            while(this.var_1232.length > 0)
            {
               this.var_1232.pop();
            }
            this.var_1232 = null;
         }
      }
   }
}
