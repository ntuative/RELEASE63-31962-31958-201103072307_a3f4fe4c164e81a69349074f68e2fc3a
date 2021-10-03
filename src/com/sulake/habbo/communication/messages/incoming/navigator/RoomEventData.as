package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1113:Boolean;
      
      private var var_2043:int;
      
      private var var_2047:String;
      
      private var var_328:int;
      
      private var var_2044:int;
      
      private var var_2048:String;
      
      private var var_2045:String;
      
      private var var_2046:String;
      
      private var var_808:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_808 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1113 = false;
            return;
         }
         this.var_1113 = true;
         this.var_2043 = int(_loc2_);
         this.var_2047 = param1.readString();
         this.var_328 = int(param1.readString());
         this.var_2044 = param1.readInteger();
         this.var_2048 = param1.readString();
         this.var_2045 = param1.readString();
         this.var_2046 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_808.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_808 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2043;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2047;
      }
      
      public function get flatId() : int
      {
         return this.var_328;
      }
      
      public function get eventType() : int
      {
         return this.var_2044;
      }
      
      public function get eventName() : String
      {
         return this.var_2048;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2045;
      }
      
      public function get creationTime() : String
      {
         return this.var_2046;
      }
      
      public function get tags() : Array
      {
         return this.var_808;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1113;
      }
   }
}
