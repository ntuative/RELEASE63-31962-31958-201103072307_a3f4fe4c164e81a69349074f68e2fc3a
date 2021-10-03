package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_491:int = 0;
      
      public static const const_176:int = 1;
      
      public static const const_116:int = 2;
      
      public static const const_790:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1627:String;
      
      private var var_2054:int;
      
      private var var_1392:int;
      
      private var var_2056:int;
      
      private var var_2058:int;
      
      private var var_808:Array;
      
      private var var_2059:Array;
      
      private var var_2057:int;
      
      private var var_2062:Boolean;
      
      private var var_2061:Boolean;
      
      private var var_2055:Boolean;
      
      private var var_2060:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2062;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2062 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2061;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2061 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2055;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2055 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2060;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2060 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1627;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1627 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2054;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2054 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1392;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1392 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2056;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2056 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2058;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_808;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_808 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2059;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2059 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2057;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2057 = param1;
      }
   }
}
