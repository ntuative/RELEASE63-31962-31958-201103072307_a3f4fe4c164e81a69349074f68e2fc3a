package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2078:int;
      
      private var var_2077:int;
      
      private var var_2076:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2078 = param1;
         this.var_2077 = param2;
         this.var_2076 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2078,this.var_2077,this.var_2076];
      }
      
      public function dispose() : void
      {
      }
   }
}
