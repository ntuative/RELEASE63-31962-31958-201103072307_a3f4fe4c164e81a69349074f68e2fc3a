package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2217:int = 0;
      
      private var var_1493:String = "";
      
      private var var_1945:String = "";
      
      private var var_2493:String = "";
      
      private var var_2495:String = "";
      
      private var var_1771:int = 0;
      
      private var var_2496:int = 0;
      
      private var var_2494:int = 0;
      
      private var var_1491:int = 0;
      
      private var var_2497:int = 0;
      
      private var var_1494:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2217 = param1;
         this.var_1493 = param2;
         this.var_1945 = param3;
         this.var_2493 = param4;
         this.var_2495 = param5;
         if(param6)
         {
            this.var_1771 = 1;
         }
         else
         {
            this.var_1771 = 0;
         }
         this.var_2496 = param7;
         this.var_2494 = param8;
         this.var_1491 = param9;
         this.var_2497 = param10;
         this.var_1494 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2217,this.var_1493,this.var_1945,this.var_2493,this.var_2495,this.var_1771,this.var_2496,this.var_2494,this.var_1491,this.var_2497,this.var_1494];
      }
   }
}
