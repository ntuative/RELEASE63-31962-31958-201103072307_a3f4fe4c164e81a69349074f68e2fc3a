package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2471:String;
      
      private var var_2482:Array;
      
      private var var_2483:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2471 = param1;
         this.var_2482 = param2;
         this.var_2483 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2471;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2482;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2483;
      }
   }
}
