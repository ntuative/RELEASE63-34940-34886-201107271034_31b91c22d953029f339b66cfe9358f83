package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1445:IID;
      
      private var var_1734:String;
      
      private var var_124:IUnknown;
      
      private var var_768:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1445 = param1;
         this.var_1734 = getQualifiedClassName(this.var_1445);
         this.var_124 = param2;
         this.var_768 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1445;
      }
      
      public function get iis() : String
      {
         return this.var_1734;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_124;
      }
      
      public function get references() : uint
      {
         return this.var_768;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_124 == null;
      }
      
      public function dispose() : void
      {
         this.var_1445 = null;
         this.var_1734 = null;
         this.var_124 = null;
         this.var_768 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_768;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_768) : uint(0);
      }
   }
}
