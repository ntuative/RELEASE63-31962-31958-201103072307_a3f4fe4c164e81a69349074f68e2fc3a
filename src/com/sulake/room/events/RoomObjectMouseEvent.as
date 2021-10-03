package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_222:String = "ROE_MOUSE_CLICK";
      
      public static const const_1887:String = "ROE_MOUSE_ENTER";
      
      public static const const_572:String = "ROE_MOUSE_MOVE";
      
      public static const const_1912:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1917:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_429:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1524:String = "";
      
      private var var_2282:Boolean;
      
      private var var_2280:Boolean;
      
      private var var_2281:Boolean;
      
      private var var_2283:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1524 = param2;
         this.var_2282 = param5;
         this.var_2280 = param6;
         this.var_2281 = param7;
         this.var_2283 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1524;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2282;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2280;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2281;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2283;
      }
   }
}
