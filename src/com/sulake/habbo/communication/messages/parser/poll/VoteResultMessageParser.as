package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1131:String;
      
      private var var_1444:Array;
      
      private var var_1201:Array;
      
      private var var_1870:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1131;
      }
      
      public function get choices() : Array
      {
         return this.var_1444.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1201.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1870;
      }
      
      public function flush() : Boolean
      {
         this.var_1131 = "";
         this.var_1444 = [];
         this.var_1201 = [];
         this.var_1870 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1131 = param1.readString();
         this.var_1444 = [];
         this.var_1201 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1444.push(param1.readString());
            this.var_1201.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1870 = param1.readInteger();
         return true;
      }
   }
}
