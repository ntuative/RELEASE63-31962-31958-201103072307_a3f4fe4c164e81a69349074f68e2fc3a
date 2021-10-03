package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1730:String;
      
      private var var_1731:int;
      
      private var var_2345:Boolean;
      
      private var var_2348:Boolean;
      
      private var var_2344:int;
      
      private var var_2346:int;
      
      private var var_2342:int;
      
      private var var_2343:int;
      
      private var var_2347:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1730 = param1.readString();
         this.var_1731 = param1.readInteger();
         this.var_2345 = param1.readBoolean();
         this.var_2348 = param1.readBoolean();
         this.var_2344 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         this.var_2342 = param1.readInteger();
         this.var_2343 = param1.readInteger();
         this.var_2347 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1730;
      }
      
      public function get price() : int
      {
         return this.var_1731;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2345;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2348;
      }
      
      public function get periods() : int
      {
         return this.var_2344;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2346;
      }
      
      public function get year() : int
      {
         return this.var_2342;
      }
      
      public function get month() : int
      {
         return this.var_2343;
      }
      
      public function get day() : int
      {
         return this.var_2347;
      }
   }
}
