package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1729:int;
      
      private var var_2073:String;
      
      private var var_1424:int;
      
      private var var_1056:int;
      
      private var var_1609:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1729 = param1.readInteger();
         this.var_2073 = param1.readString();
         this.var_1424 = param1.readInteger();
         this.var_1056 = param1.readInteger();
         this.var_1609 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1729;
      }
      
      public function get petName() : String
      {
         return this.var_2073;
      }
      
      public function get level() : int
      {
         return this.var_1424;
      }
      
      public function get petType() : int
      {
         return this.var_1056;
      }
      
      public function get breed() : int
      {
         return this.var_1609;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
