package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1267:Boolean;
      
      private var var_2452:int;
      
      private var var_1738:int;
      
      private var var_1737:int;
      
      private var var_2448:int;
      
      private var var_2447:int;
      
      private var var_2449:int;
      
      private var var_2451:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1267;
      }
      
      public function get commission() : int
      {
         return this.var_2452;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1738;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1737;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2447;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2448;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2449;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2451;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1267 = param1.readBoolean();
         this.var_2452 = param1.readInteger();
         this.var_1738 = param1.readInteger();
         this.var_1737 = param1.readInteger();
         this.var_2447 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this.var_2449 = param1.readInteger();
         this.var_2451 = param1.readInteger();
         return true;
      }
   }
}
