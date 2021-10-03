package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2624:int;
      
      private var var_2625:int;
      
      private var var_2626:int;
      
      private var var_2627:String;
      
      private var var_1897:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2624 = param1.readInteger();
         this.var_2625 = param1.readInteger();
         this.var_2626 = param1.readInteger();
         this.var_2627 = param1.readString();
         this.var_1897 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2624;
      }
      
      public function get minute() : int
      {
         return this.var_2625;
      }
      
      public function get chatterId() : int
      {
         return this.var_2626;
      }
      
      public function get chatterName() : String
      {
         return this.var_2627;
      }
      
      public function get msg() : String
      {
         return this.var_1897;
      }
   }
}
