package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1267:Boolean = false;
      
      private var var_1731:int;
      
      private var var_1653:Array;
      
      private var var_743:Array;
      
      private var var_742:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1267 = _loc2_.isWrappingEnabled;
         this.var_1731 = _loc2_.wrappingPrice;
         this.var_1653 = _loc2_.stuffTypes;
         this.var_743 = _loc2_.boxTypes;
         this.var_742 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1267;
      }
      
      public function get price() : int
      {
         return this.var_1731;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1653;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_743;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_742;
      }
   }
}
