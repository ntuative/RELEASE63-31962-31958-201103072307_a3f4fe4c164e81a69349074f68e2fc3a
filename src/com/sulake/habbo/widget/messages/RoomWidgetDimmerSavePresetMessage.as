package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_800:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2239:int;
      
      private var var_2237:int;
      
      private var _color:uint;
      
      private var var_1211:int;
      
      private var var_2745:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_800);
         this.var_2239 = param1;
         this.var_2237 = param2;
         this._color = param3;
         this.var_1211 = param4;
         this.var_2745 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2239;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2237;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1211;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2745;
      }
   }
}
