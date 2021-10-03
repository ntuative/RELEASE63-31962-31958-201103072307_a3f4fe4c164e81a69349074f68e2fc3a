package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2489:int;
      
      private var var_2601:int;
      
      private var var_2600:String;
      
      private var var_2602:String;
      
      private var var_2603:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2489 = param1;
         this.var_2601 = param2;
         this.var_2600 = param3;
         this.var_2602 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2489;
      }
      
      public function get length() : int
      {
         return this.var_2601;
      }
      
      public function get name() : String
      {
         return this.var_2600;
      }
      
      public function get creator() : String
      {
         return this.var_2602;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2603;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2603 = param1;
      }
   }
}
