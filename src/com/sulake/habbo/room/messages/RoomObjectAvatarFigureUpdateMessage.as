package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_548:String;
      
      private var var_2492:String;
      
      private var var_819:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_548 = param1;
         this.var_819 = param2;
         this.var_2492 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function get race() : String
      {
         return this.var_2492;
      }
      
      public function get gender() : String
      {
         return this.var_819;
      }
   }
}
