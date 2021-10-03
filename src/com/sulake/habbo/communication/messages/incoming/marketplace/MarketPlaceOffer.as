package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2035:int;
      
      private var var_1993:String;
      
      private var var_1731:int;
      
      private var var_386:int;
      
      private var var_2034:int = -1;
      
      private var var_2027:int;
      
      private var var_1942:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2035 = param3;
         this.var_1993 = param4;
         this.var_1731 = param5;
         this.var_386 = param6;
         this.var_2034 = param7;
         this.var_2027 = param8;
         this.var_1942 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2035;
      }
      
      public function get stuffData() : String
      {
         return this.var_1993;
      }
      
      public function get price() : int
      {
         return this.var_1731;
      }
      
      public function get status() : int
      {
         return this.var_386;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2034;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2027;
      }
      
      public function get offerCount() : int
      {
         return this.var_1942;
      }
   }
}
