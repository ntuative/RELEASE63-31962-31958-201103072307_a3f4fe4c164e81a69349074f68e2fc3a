package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_736:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1124:String = "inventory_effects";
      
      public static const const_1108:String = "inventory_badges";
      
      public static const const_1645:String = "inventory_clothes";
      
      public static const const_1639:String = "inventory_furniture";
       
      
      private var var_2469:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_736);
         this.var_2469 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2469;
      }
   }
}
