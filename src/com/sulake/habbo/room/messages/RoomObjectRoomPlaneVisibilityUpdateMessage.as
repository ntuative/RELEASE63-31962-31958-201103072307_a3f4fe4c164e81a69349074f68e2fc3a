package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomPlaneVisibilityUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_1006:String = "RORPVUM_WALL_VISIBILITY";
      
      public static const const_1096:String = "RORPVUM_FLOOR_VISIBILITY";
       
      
      private var _type:String = "";
      
      private var var_384:Boolean = false;
      
      public function RoomObjectRoomPlaneVisibilityUpdateMessage(param1:String, param2:Boolean)
      {
         super(null,null);
         this._type = param1;
         this.var_384 = param2;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get visible() : Boolean
      {
         return this.var_384;
      }
   }
}
