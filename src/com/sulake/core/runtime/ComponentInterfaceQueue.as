package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1630:IID;
      
      private var var_758:Boolean;
      
      private var var_1074:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1630 = param1;
         this.var_1074 = new Array();
         this.var_758 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1630;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_758;
      }
      
      public function get receivers() : Array
      {
         return this.var_1074;
      }
      
      public function dispose() : void
      {
         if(!this.var_758)
         {
            this.var_758 = true;
            this.var_1630 = null;
            while(this.var_1074.length > 0)
            {
               this.var_1074.pop();
            }
            this.var_1074 = null;
         }
      }
   }
}
