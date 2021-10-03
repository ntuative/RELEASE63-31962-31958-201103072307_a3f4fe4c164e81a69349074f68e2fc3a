package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2133:int;
      
      private var var_1274:String;
      
      private var var_2136:int;
      
      private var var_2134:int;
      
      private var _category:int;
      
      private var var_1993:String;
      
      private var var_1385:int;
      
      private var var_2129:int;
      
      private var var_2130:int;
      
      private var var_2131:int;
      
      private var var_2135:int;
      
      private var var_2132:Boolean;
      
      private var var_2830:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2133 = param1;
         this.var_1274 = param2;
         this.var_2136 = param3;
         this.var_2134 = param4;
         this._category = param5;
         this.var_1993 = param6;
         this.var_1385 = param7;
         this.var_2129 = param8;
         this.var_2130 = param9;
         this.var_2131 = param10;
         this.var_2135 = param11;
         this.var_2132 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2133;
      }
      
      public function get itemType() : String
      {
         return this.var_1274;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2136;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2134;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1993;
      }
      
      public function get extra() : int
      {
         return this.var_1385;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2129;
      }
      
      public function get creationDay() : int
      {
         return this.var_2130;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2131;
      }
      
      public function get creationYear() : int
      {
         return this.var_2135;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2132;
      }
      
      public function get songID() : int
      {
         return this.var_1385;
      }
   }
}
