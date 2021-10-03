package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2239:int;
      
      private var var_2237:int;
      
      private var var_2236:String;
      
      private var var_2235:int;
      
      private var var_2238:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2239 = param1;
         this.var_2237 = param2;
         this.var_2236 = param3;
         this.var_2235 = param4;
         this.var_2238 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2239,this.var_2237,this.var_2236,this.var_2235,int(this.var_2238)];
      }
      
      public function dispose() : void
      {
      }
   }
}
