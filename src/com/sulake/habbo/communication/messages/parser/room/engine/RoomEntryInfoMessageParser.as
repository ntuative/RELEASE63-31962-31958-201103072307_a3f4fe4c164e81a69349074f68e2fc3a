package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1574:Boolean;
      
      private var var_2119:int;
      
      private var var_389:Boolean;
      
      private var var_1029:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1574;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2119;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1029;
      }
      
      public function get owner() : Boolean
      {
         return this.var_389;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1029 != null)
         {
            this.var_1029.dispose();
            this.var_1029 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1574 = param1.readBoolean();
         if(this.var_1574)
         {
            this.var_2119 = param1.readInteger();
            this.var_389 = param1.readBoolean();
         }
         else
         {
            this.var_1029 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
