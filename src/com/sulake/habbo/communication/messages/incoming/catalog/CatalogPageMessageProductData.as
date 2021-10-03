package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_85:String = "i";
      
      public static const const_88:String = "s";
      
      public static const const_240:String = "e";
       
      
      private var var_1848:String;
      
      private var var_2488:int;
      
      private var var_1422:String;
      
      private var var_1423:int;
      
      private var var_1850:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1848 = param1.readString();
         this.var_2488 = param1.readInteger();
         this.var_1422 = param1.readString();
         this.var_1423 = param1.readInteger();
         this.var_1850 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1848;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2488;
      }
      
      public function get extraParam() : String
      {
         return this.var_1422;
      }
      
      public function get productCount() : int
      {
         return this.var_1423;
      }
      
      public function get expiration() : int
      {
         return this.var_1850;
      }
   }
}
