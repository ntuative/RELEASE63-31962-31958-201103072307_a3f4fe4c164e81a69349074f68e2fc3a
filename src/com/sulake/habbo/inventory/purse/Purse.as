package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1679:int = 0;
      
      private var var_1680:int = 0;
      
      private var var_2549:int = 0;
      
      private var var_2548:Boolean = false;
      
      private var var_2296:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1679 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1680 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2549 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2548 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2296 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1679;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1680;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2549;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2548;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2296;
      }
   }
}
