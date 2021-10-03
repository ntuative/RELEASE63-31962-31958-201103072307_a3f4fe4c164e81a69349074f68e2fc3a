package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_548:String;
      
      private var var_931:String;
      
      private var var_2415:String;
      
      private var var_1716:String;
      
      private var var_2413:int;
      
      private var var_2414:String;
      
      private var var_2416:int;
      
      private var var_2417:int;
      
      private var var_2365:int;
      
      private var var_1044:int;
      
      private var _petRespectLeft:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_548 = param1.readString();
         this.var_931 = param1.readString();
         this.var_2415 = param1.readString();
         this.var_1716 = param1.readString();
         this.var_2413 = param1.readInteger();
         this.var_2414 = param1.readString();
         this.var_2416 = param1.readInteger();
         this.var_2417 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_1044 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function get sex() : String
      {
         return this.var_931;
      }
      
      public function get customData() : String
      {
         return this.var_2415;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
      
      public function get tickets() : int
      {
         return this.var_2413;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2414;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2416;
      }
      
      public function get directMail() : int
      {
         return this.var_2417;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2365;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1044;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
   }
}
