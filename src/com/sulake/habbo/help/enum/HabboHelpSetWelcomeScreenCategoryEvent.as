package com.sulake.habbo.help.enum
{
   import flash.events.Event;
   
   public class HabboHelpSetWelcomeScreenCategoryEvent extends Event
   {
      
      public static const const_1155:String = "HH_WELCOME_CATEGORY";
       
      
      private var var_722:String;
      
      private var var_764:String;
      
      public function HabboHelpSetWelcomeScreenCategoryEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_1155,param3,param4);
         this.var_722 = param1;
         this.var_764 = param2;
      }
      
      public function get iconId() : String
      {
         return this.var_722;
      }
      
      public function get localizationCode() : String
      {
         return this.var_764;
      }
   }
}
