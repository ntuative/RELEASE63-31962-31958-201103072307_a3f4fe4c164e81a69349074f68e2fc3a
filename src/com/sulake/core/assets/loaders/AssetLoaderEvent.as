package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_27:String = "AssetLoaderEventComplete";
      
      public static const const_1001:String = "AssetLoaderEventProgress";
      
      public static const const_1044:String = "AssetLoaderEventUnload";
      
      public static const const_986:String = "AssetLoaderEventStatus";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_1126:String = "AssetLoaderEventOpen";
       
      
      private var var_386:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_386 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_386;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_386);
      }
   }
}
