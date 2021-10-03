package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1424:int;
      
      private var var_308:String;
      
      private var var_2699:int;
      
      private var var_2480:int;
      
      private var var_1852:int;
      
      private var var_2700:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1424 = param1.readInteger();
         this.var_308 = param1.readString();
         this.var_2699 = param1.readInteger();
         this.var_2480 = param1.readInteger();
         this.var_1852 = param1.readInteger();
         this.var_2700 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_308;
      }
      
      public function get level() : int
      {
         return this.var_1424;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2699;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2480;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1852;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2700;
      }
   }
}
