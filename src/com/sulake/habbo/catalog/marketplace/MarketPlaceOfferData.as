package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2035:int;
      
      private var var_1993:String;
      
      private var var_1731:int;
      
      private var var_2027:int;
      
      private var var_2740:int;
      
      private var var_386:int;
      
      private var var_2034:int = -1;
      
      private var var_1942:int;
      
      private var var_45:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2035 = param3;
         this.var_1993 = param4;
         this.var_1731 = param5;
         this.var_386 = param6;
         this.var_2027 = param7;
         this.var_1942 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_45)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2027;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_45 != null)
         {
            this.var_45.dispose();
         }
         this.var_45 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2740 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2740;
      }
      
      public function get status() : int
      {
         return this.var_386;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2034;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2034 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1731 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1942;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1942 = param1;
      }
   }
}
