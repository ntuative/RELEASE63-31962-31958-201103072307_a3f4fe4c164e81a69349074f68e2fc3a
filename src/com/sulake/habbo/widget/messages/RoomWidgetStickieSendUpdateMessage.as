package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_423:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_740:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_353:int;
      
      private var _text:String;
      
      private var var_987:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_353 = param2;
         this._text = param3;
         this.var_987 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_353;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_987;
      }
   }
}
