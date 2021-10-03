package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1424:int;
      
      private var var_1612:int;
      
      private var var_2480:int;
      
      private var var_1852:int;
      
      private var var_1425:int;
      
      private var var_2436:String = "";
      
      private var var_2481:String = "";
      
      private var var_2479:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1424 = param1.readInteger();
         this.var_2436 = param1.readString();
         this.var_1612 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         this.var_1852 = param1.readInteger();
         this.var_1425 = param1.readInteger();
         this.var_2479 = param1.readInteger();
         this.var_2481 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1424;
      }
      
      public function get points() : int
      {
         return this.var_1612;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2480;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1852;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1425;
      }
      
      public function get badgeID() : String
      {
         return this.var_2436;
      }
      
      public function get achievementID() : int
      {
         return this.var_2479;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2481;
      }
   }
}
