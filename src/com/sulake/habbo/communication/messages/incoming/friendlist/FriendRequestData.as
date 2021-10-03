package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1191:int;
      
      private var var_2115:String;
      
      private var var_2116:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1191 = param1.readInteger();
         this.var_2115 = param1.readString();
         this.var_2116 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1191;
      }
      
      public function get requesterName() : String
      {
         return this.var_2115;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2116;
      }
   }
}
