package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1581:int;
      
      private var var_1582:int;
      
      private var var_1580:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get current() : int
      {
         return this.var_1581;
      }
      
      public function get next() : int
      {
         return this.var_1582;
      }
      
      public function get syncCount() : int
      {
         return this.var_1580;
      }
      
      public function flush() : Boolean
      {
         this.var_1581 = -1;
         this.var_1582 = -1;
         this.var_1580 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1581 = param1.readInteger();
         this.var_1582 = param1.readInteger();
         this.var_1580 = param1.readInteger();
         return true;
      }
   }
}
