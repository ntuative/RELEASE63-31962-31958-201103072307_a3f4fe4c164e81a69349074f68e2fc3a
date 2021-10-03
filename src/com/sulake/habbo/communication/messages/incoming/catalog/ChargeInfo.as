package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2640:int;
      
      private var var_2641:int;
      
      private var var_1009:int;
      
      private var var_1007:int;
      
      private var var_1534:int;
      
      private var var_2639:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2640 = param1.readInteger();
         this.var_2641 = param1.readInteger();
         this.var_1009 = param1.readInteger();
         this.var_1007 = param1.readInteger();
         this.var_1534 = param1.readInteger();
         this.var_2639 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2640;
      }
      
      public function get charges() : int
      {
         return this.var_2641;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1009;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1007;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2639;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1534;
      }
   }
}
