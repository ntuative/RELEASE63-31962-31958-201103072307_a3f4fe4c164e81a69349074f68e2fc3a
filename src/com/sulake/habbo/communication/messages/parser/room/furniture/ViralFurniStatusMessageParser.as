package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_178:String;
      
      private var var_353:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1448:int = 0;
      
      private var var_386:int;
      
      private var _shareId:String;
      
      private var var_2033:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_178;
      }
      
      public function get objectId() : int
      {
         return this.var_353;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1448;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_386;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2033;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_178 = param1.readString();
         this.var_353 = param1.readInteger();
         this.var_386 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2033 = param1.readString();
         this.var_1448 = param1.readInteger();
         return true;
      }
   }
}
