package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2027:int;
      
      private var var_2023:int;
      
      private var var_2025:int;
      
      private var _dayOffsets:Array;
      
      private var var_1721:Array;
      
      private var var_1720:Array;
      
      private var var_2026:int;
      
      private var var_2024:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2027;
      }
      
      public function get offerCount() : int
      {
         return this.var_2023;
      }
      
      public function get historyLength() : int
      {
         return this.var_2025;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1721;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1720;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2026;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2024;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2027 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2023 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2025 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1721 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1720 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2026 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2024 = param1;
      }
   }
}
