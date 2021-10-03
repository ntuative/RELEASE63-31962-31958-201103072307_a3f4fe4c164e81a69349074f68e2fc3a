package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1835:int = 1;
      
      public static const const_1777:int = 2;
      
      public static const const_1860:int = 3;
      
      public static const const_1935:int = 4;
      
      public static const const_1464:int = 5;
      
      public static const const_1906:int = 6;
      
      public static const const_1614:int = 7;
      
      public static const const_1503:int = 8;
      
      public static const const_1800:int = 9;
      
      public static const const_1483:int = 10;
      
      public static const const_1577:int = 11;
      
      public static const const_1650:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1600:int;
      
      private var var_1459:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1600 = param1.readInteger();
         this.var_1459 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1600;
      }
      
      public function get info() : String
      {
         return this.var_1459;
      }
   }
}