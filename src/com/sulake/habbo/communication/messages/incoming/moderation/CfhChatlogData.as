package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1584:int;
      
      private var var_2138:int;
      
      private var var_1373:int;
      
      private var var_2137:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1584 = param1.readInteger();
         this.var_2138 = param1.readInteger();
         this.var_1373 = param1.readInteger();
         this.var_2137 = param1.readInteger();
         this.var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1584);
      }
      
      public function get callId() : int
      {
         return this.var_1584;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2138;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1373;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2137;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_110;
      }
   }
}
