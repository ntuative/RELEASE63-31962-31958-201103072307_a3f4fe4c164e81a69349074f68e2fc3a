package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2027:int;
      
      private var var_2023:int;
      
      private var var_2025:int;
      
      private var _dayOffsets:Array;
      
      private var var_1721:Array;
      
      private var var_1720:Array;
      
      private var var_2026:int;
      
      private var var_2024:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2027 = param1.readInteger();
         this.var_2023 = param1.readInteger();
         this.var_2025 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1721 = [];
         this.var_1720 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1721.push(param1.readInteger());
            this.var_1720.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2024 = param1.readInteger();
         this.var_2026 = param1.readInteger();
         return true;
      }
   }
}
