package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionWelcomeGiftEvent extends RoomSessionEvent
   {
      
      public static const const_111:String = "rswge_welcome_gift_status";
       
      
      private var var_1136:String;
      
      private var var_1377:Boolean;
      
      private var var_2228:Boolean;
      
      private var var_2229:Boolean;
      
      public function RoomSessionWelcomeGiftEvent(param1:IRoomSession, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_111,param1,param6,param7);
         this.var_1136 = param2;
         this.var_1377 = param3;
         this.var_2228 = param4;
         this.var_2229 = param5;
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
   }
}
