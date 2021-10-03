package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1729:int;
      
      private var _name:String;
      
      private var var_1424:int;
      
      private var var_2441:int;
      
      private var var_2224:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_548:String;
      
      private var var_2438:int;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      private var var_2404:int;
      
      private var var_2226:int;
      
      private var _ownerName:String;
      
      private var var_484:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1729;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1424;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2441;
      }
      
      public function get experience() : int
      {
         return this.var_2224;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2438;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2439;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2440;
      }
      
      public function get respect() : int
      {
         return this.var_2404;
      }
      
      public function get ownerId() : int
      {
         return this.var_2226;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_484;
      }
      
      public function flush() : Boolean
      {
         this.var_1729 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1729 = param1.readInteger();
         this._name = param1.readString();
         this.var_1424 = param1.readInteger();
         this.var_2441 = param1.readInteger();
         this.var_2224 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2439 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this.var_548 = param1.readString();
         this.var_2404 = param1.readInteger();
         this.var_2226 = param1.readInteger();
         this.var_484 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
