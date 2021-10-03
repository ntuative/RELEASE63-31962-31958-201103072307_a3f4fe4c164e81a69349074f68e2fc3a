package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_226:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2648:int = 0;
      
      private var var_2646:int = 0;
      
      private var var_2647:int = 0;
      
      private var var_2645:Boolean = false;
      
      private var var_2142:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_226,param6,param7);
         this.var_2648 = param1;
         this.var_2646 = param2;
         this.var_2647 = param3;
         this.var_2645 = param4;
         this.var_2142 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2648;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2646;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2647;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2645;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2142;
      }
   }
}
