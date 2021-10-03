package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1783:int = 1;
      
      public static const const_1532:int = 2;
       
      
      private var var_895:String;
      
      private var var_2302:int;
      
      private var var_2300:int;
      
      private var var_2301:int;
      
      private var var_2298:int;
      
      private var var_2303:Boolean;
      
      private var var_2296:Boolean;
      
      private var var_2299:int;
      
      private var var_2295:int;
      
      private var var_2304:Boolean;
      
      private var var_2297:int;
      
      private var var_2305:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_895 = param1.readString();
         this.var_2302 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         this.var_2298 = param1.readInteger();
         this.var_2303 = param1.readBoolean();
         this.var_2296 = param1.readBoolean();
         this.var_2299 = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this.var_2304 = param1.readBoolean();
         this.var_2297 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_895;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2302;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2300;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2301;
      }
      
      public function get responseType() : int
      {
         return this.var_2298;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2303;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2296;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2299;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2295;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2304;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2297;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2305;
      }
   }
}
