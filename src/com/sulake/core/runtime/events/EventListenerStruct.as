package com.sulake.core.runtime.events
{
   import flash.utils.Dictionary;
   
   public class EventListenerStruct
   {
       
      
      private var var_126:Dictionary;
      
      public var var_1988:Boolean;
      
      public var priority:int;
      
      public var var_2819:Boolean;
      
      public function EventListenerStruct(param1:Function, param2:Boolean = false, param3:int = 0, param4:Boolean = false)
      {
         super();
         this.var_126 = new Dictionary(param4);
         this.callback = param1;
         this.var_1988 = param2;
         this.priority = param3;
         this.var_2819 = param4;
      }
      
      public function set callback(param1:Function) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.var_126)
         {
            delete this.var_126[_loc2_];
         }
         this.var_126[param1] = null;
      }
      
      public function get callback() : Function
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.var_126;
         for(_loc1_ in _loc3_)
         {
            return _loc1_ as Function;
         }
         return null;
      }
   }
}
