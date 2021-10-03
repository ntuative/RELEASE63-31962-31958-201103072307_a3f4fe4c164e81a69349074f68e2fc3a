package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2521:String;
      
      private var var_2523:Class;
      
      private var var_2522:Class;
      
      private var var_1785:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2521 = param1;
         this.var_2523 = param2;
         this.var_2522 = param3;
         if(rest == null)
         {
            this.var_1785 = new Array();
         }
         else
         {
            this.var_1785 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2521;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2523;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2522;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1785;
      }
   }
}
