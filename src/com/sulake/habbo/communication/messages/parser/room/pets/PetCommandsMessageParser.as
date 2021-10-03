package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1729:int;
      
      private var var_1436:Array;
      
      private var var_1202:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1729;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1436;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1202;
      }
      
      public function flush() : Boolean
      {
         this.var_1729 = -1;
         this.var_1436 = null;
         this.var_1202 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1729 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1436 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1436.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1202 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1202.push(param1.readInteger());
         }
         return true;
      }
   }
}
