package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1048:String = "M";
      
      public static const const_1587:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_144:Number = 0;
      
      private var var_262:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_931:String = "";
      
      private var var_548:String = "";
      
      private var var_2353:String = "";
      
      private var var_2016:int;
      
      private var var_2171:int = 0;
      
      private var var_2352:String = "";
      
      private var var_2351:int = 0;
      
      private var var_2169:int = 0;
      
      private var var_2350:String = "";
      
      private var var_176:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_176)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_143;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_143 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_144;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_144 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_262;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_262 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_176)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_176)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_931;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_931 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_548 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2353;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2353 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2016;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2016 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2171;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2171 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2352;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2352 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2351;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2351 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2169;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2169 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2350;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2350 = param1;
         }
      }
   }
}
