package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_734:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_833:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_706:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_761:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_761 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_761;
      }
   }
}
