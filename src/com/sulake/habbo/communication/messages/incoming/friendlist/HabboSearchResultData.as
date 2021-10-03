package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2151:int;
      
      private var var_1715:String;
      
      private var var_2405:String;
      
      private var var_2744:Boolean;
      
      private var var_2742:Boolean;
      
      private var var_2743:int;
      
      private var var_2406:String;
      
      private var var_2741:String;
      
      private var var_1716:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2151 = param1.readInteger();
         this.var_1715 = param1.readString();
         this.var_2405 = param1.readString();
         this.var_2744 = param1.readBoolean();
         this.var_2742 = param1.readBoolean();
         param1.readString();
         this.var_2743 = param1.readInteger();
         this.var_2406 = param1.readString();
         this.var_2741 = param1.readString();
         this.var_1716 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2151;
      }
      
      public function get avatarName() : String
      {
         return this.var_1715;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2405;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2744;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2742;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2743;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2406;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2741;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
   }
}
