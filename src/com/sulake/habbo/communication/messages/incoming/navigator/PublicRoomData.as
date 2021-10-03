package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2100:String;
      
      private var var_2098:int;
      
      private var var_2101:int;
      
      private var var_2097:String;
      
      private var var_2099:int;
      
      private var var_1775:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2100 = param1.readString();
         this.var_2098 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         this.var_2097 = param1.readString();
         this.var_2099 = param1.readInteger();
         this.var_1775 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2100;
      }
      
      public function get unitPort() : int
      {
         return this.var_2098;
      }
      
      public function get worldId() : int
      {
         return this.var_2101;
      }
      
      public function get castLibs() : String
      {
         return this.var_2097;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2099;
      }
      
      public function get nodeId() : int
      {
         return this.var_1775;
      }
   }
}
