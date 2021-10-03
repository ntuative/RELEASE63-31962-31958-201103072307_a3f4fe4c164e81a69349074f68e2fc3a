package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_813:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1934:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_813,false,false);
         this.var_1934 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1934;
      }
   }
}
