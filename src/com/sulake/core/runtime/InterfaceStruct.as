package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1295:IID;
      
      private var var_1596:String;
      
      private var var_98:IUnknown;
      
      private var var_691:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1295 = param1;
         this.var_1596 = getQualifiedClassName(this.var_1295);
         this.var_98 = param2;
         this.var_691 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1295;
      }
      
      public function get iis() : String
      {
         return this.var_1596;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_98;
      }
      
      public function get references() : uint
      {
         return this.var_691;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_98 == null;
      }
      
      public function dispose() : void
      {
         this.var_1295 = null;
         this.var_1596 = null;
         this.var_98 = null;
         this.var_691 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_691;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_691) : uint(0);
      }
   }
}
