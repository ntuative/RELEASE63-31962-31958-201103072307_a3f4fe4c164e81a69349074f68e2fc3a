package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_819:int;
      
      private var var_726:Boolean;
      
      private var var_1681:Boolean;
      
      private var var_548:String;
      
      private var var_1392:int;
      
      private var var_1938:String;
      
      private var var_1717:String;
      
      private var var_1716:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_819 = param1.readInteger();
         this.var_726 = param1.readBoolean();
         this.var_1681 = param1.readBoolean();
         this.var_548 = param1.readString();
         this.var_1392 = param1.readInteger();
         this.var_1938 = param1.readString();
         this.var_1717 = param1.readString();
         this.var_1716 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_819;
      }
      
      public function get online() : Boolean
      {
         return this.var_726;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1681;
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function get categoryId() : int
      {
         return this.var_1392;
      }
      
      public function get motto() : String
      {
         return this.var_1938;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1717;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
   }
}
