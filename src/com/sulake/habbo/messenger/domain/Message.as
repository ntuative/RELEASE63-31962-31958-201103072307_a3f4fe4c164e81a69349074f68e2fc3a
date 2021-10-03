package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_660:int = 1;
      
      public static const const_754:int = 2;
      
      public static const const_655:int = 3;
      
      public static const const_1185:int = 4;
      
      public static const const_710:int = 5;
      
      public static const const_1213:int = 6;
       
      
      private var _type:int;
      
      private var var_1083:int;
      
      private var var_2201:String;
      
      private var var_2341:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1083 = param2;
         this.var_2201 = param3;
         this.var_2341 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2201;
      }
      
      public function get time() : String
      {
         return this.var_2341;
      }
      
      public function get senderId() : int
      {
         return this.var_1083;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
