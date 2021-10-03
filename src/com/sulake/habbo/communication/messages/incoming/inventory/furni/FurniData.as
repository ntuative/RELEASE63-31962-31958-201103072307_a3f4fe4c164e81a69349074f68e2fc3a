package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2371:int;
      
      private var var_1274:String;
      
      private var _objId:int;
      
      private var var_1782:int;
      
      private var _category:int;
      
      private var var_1993:String;
      
      private var var_2675:Boolean;
      
      private var var_2673:Boolean;
      
      private var var_2674:Boolean;
      
      private var var_2088:Boolean;
      
      private var var_2339:int;
      
      private var var_1385:int;
      
      private var var_1529:String = "";
      
      private var var_2489:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2371 = param1;
         this.var_1274 = param2;
         this._objId = param3;
         this.var_1782 = param4;
         this._category = param5;
         this.var_1993 = param6;
         this.var_2675 = param7;
         this.var_2673 = param8;
         this.var_2674 = param9;
         this.var_2088 = param10;
         this.var_2339 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1529 = param1;
         this.var_1385 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2371;
      }
      
      public function get itemType() : String
      {
         return this.var_1274;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1782;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1993;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2675;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2673;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2674;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2088;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2339;
      }
      
      public function get slotId() : String
      {
         return this.var_1529;
      }
      
      public function get songId() : int
      {
         return this.var_2489;
      }
      
      public function get extra() : int
      {
         return this.var_1385;
      }
   }
}
