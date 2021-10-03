package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_863:String;
      
      private var var_1600:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_863 = param1.readString();
         this.var_1600 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_863;
      }
      
      public function get errorCode() : int
      {
         return this.var_1600;
      }
   }
}
