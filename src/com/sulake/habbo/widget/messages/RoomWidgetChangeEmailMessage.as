package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const CHANGE_EMAIL:String = "rwcem_change_email";
       
      
      private var var_2412:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(CHANGE_EMAIL);
         this.var_2412 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2412;
      }
   }
}
