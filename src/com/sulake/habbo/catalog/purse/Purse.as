package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_183:int = 0;
       
      
      private var var_2323:int = 0;
      
      private var var_1337:Dictionary;
      
      private var var_1679:int = 0;
      
      private var var_1680:int = 0;
      
      private var var_2296:Boolean = false;
      
      private var var_2299:int = 0;
      
      private var var_2295:int = 0;
      
      public function Purse()
      {
         this.var_1337 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2323;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1679;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1679 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1680;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1680 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1679 > 0 || this.var_1680 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2296;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2296 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2299;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2295;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1337;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1337 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1337[param1];
      }
   }
}
