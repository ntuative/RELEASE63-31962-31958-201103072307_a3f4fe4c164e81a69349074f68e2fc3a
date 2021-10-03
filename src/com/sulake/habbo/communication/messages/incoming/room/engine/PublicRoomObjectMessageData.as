package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_144:Number = 0;
      
      private var var_262:int = 0;
      
      private var var_467:int = 0;
      
      private var var_565:int = 0;
      
      private var var_176:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_176)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_176)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_176)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_143;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_143 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_144;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_144 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_262;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_262 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_467;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_467 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_565;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_565 = param1;
         }
      }
   }
}
