package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_328:int;
      
      private var var_776:Boolean;
      
      private var var_818:String;
      
      private var _ownerName:String;
      
      private var var_2054:int;
      
      private var var_2272:int;
      
      private var var_2652:int;
      
      private var var_1627:String;
      
      private var var_2651:int;
      
      private var var_2635:Boolean;
      
      private var var_732:int;
      
      private var var_1392:int;
      
      private var var_2649:String;
      
      private var var_808:Array;
      
      private var var_2650:RoomThumbnailData;
      
      private var var_2062:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_808 = new Array();
         super();
         this.var_328 = param1.readInteger();
         this.var_776 = param1.readBoolean();
         this.var_818 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2054 = param1.readInteger();
         this.var_2272 = param1.readInteger();
         this.var_2652 = param1.readInteger();
         this.var_1627 = param1.readString();
         this.var_2651 = param1.readInteger();
         this.var_2635 = param1.readBoolean();
         this.var_732 = param1.readInteger();
         this.var_1392 = param1.readInteger();
         this.var_2649 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_808.push(_loc4_);
            _loc3_++;
         }
         this.var_2650 = new RoomThumbnailData(param1);
         this.var_2062 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_328;
      }
      
      public function get event() : Boolean
      {
         return this.var_776;
      }
      
      public function get roomName() : String
      {
         return this.var_818;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2054;
      }
      
      public function get userCount() : int
      {
         return this.var_2272;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2652;
      }
      
      public function get description() : String
      {
         return this.var_1627;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2651;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2635;
      }
      
      public function get score() : int
      {
         return this.var_732;
      }
      
      public function get categoryId() : int
      {
         return this.var_1392;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2649;
      }
      
      public function get tags() : Array
      {
         return this.var_808;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2650;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2062;
      }
   }
}
