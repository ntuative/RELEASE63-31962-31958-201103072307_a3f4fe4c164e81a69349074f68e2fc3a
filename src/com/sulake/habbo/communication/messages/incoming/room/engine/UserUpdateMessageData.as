package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_144:Number = 0;
      
      private var var_2329:Number = 0;
      
      private var var_2326:Number = 0;
      
      private var var_2324:Number = 0;
      
      private var var_2325:Number = 0;
      
      private var var_262:int = 0;
      
      private var var_2328:int = 0;
      
      private var var_321:Array;
      
      private var var_2327:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_321 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_143 = param3;
         this.var_144 = param4;
         this.var_2329 = param5;
         this.var_262 = param6;
         this.var_2328 = param7;
         this.var_2326 = param8;
         this.var_2324 = param9;
         this.var_2325 = param10;
         this.var_2327 = param11;
         this.var_321 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_143;
      }
      
      public function get z() : Number
      {
         return this.var_144;
      }
      
      public function get localZ() : Number
      {
         return this.var_2329;
      }
      
      public function get targetX() : Number
      {
         return this.var_2326;
      }
      
      public function get targetY() : Number
      {
         return this.var_2324;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2325;
      }
      
      public function get dir() : int
      {
         return this.var_262;
      }
      
      public function get dirHead() : int
      {
         return this.var_2328;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2327;
      }
      
      public function get actions() : Array
      {
         return this.var_321.slice();
      }
   }
}
