package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_141:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_996:int = 2;
      
      public static const const_1082:int = 3;
      
      public static const const_1570:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1938:String = "";
      
      private var var_2016:int;
      
      private var var_2171:int = 0;
      
      private var var_2169:int = 0;
      
      private var var_548:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_250:Array;
      
      private var var_1610:Array;
      
      private var var_1393:int = 0;
      
      private var var_2170:String = "";
      
      private var var_2163:int = 0;
      
      private var var_2175:int = 0;
      
      private var var_1655:Boolean = false;
      
      private var var_1716:String = "";
      
      private var var_2164:Boolean = false;
      
      private var var_2165:Boolean = true;
      
      private var var_1044:int = 0;
      
      private var var_2174:Boolean = false;
      
      private var var_2176:Boolean = false;
      
      private var var_2173:Boolean = false;
      
      private var var_2166:Boolean = false;
      
      private var var_2168:Boolean = false;
      
      private var var_2172:Boolean = false;
      
      private var var_2167:int = 0;
      
      private var var_1654:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_250 = [];
         this.var_1610 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1938 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1938;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2016 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2016;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2171 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2171;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2169 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2169;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_548 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_250 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_250;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1610;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1610 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1393 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1393;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2170 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2170;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2164 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2164;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1044 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1044;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2174 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2174;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2176 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2176;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2173 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2173;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2166 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2166;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2168 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2168;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2172 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2172;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2167 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2167;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2165 = param1;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2165;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1654 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1654;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2163 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2163;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2175 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2175;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1655 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1655;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1716 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1716;
      }
   }
}
