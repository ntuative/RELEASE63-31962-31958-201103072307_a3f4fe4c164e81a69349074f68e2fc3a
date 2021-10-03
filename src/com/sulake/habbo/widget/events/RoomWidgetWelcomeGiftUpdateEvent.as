package com.sulake.habbo.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1136:String;
      
      private var var_1377:Boolean;
      
      private var var_2228:Boolean;
      
      private var var_2229:Boolean;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_111,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1136;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1377;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_2228;
      }
      
      public function get update() : Boolean
      {
         return this.var_2229;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1136 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1377 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_2228 = param1;
      }
      
      public function set update(param1:Boolean) : void
      {
         this.var_2229 = param1;
      }
   }
}
