package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_131:String = "RSPE_POLL_OFFER";
      
      public static const const_73:String = "RSPE_POLL_ERROR";
      
      public static const const_138:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_1757:String;
      
      private var var_1487:int = 0;
      
      private var var_1932:String = "";
      
      private var var_1933:String = "";
      
      private var var_1486:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1757;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_1757 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1487;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1487 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1932;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1932 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1933;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1933 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1486;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1486 = param1;
      }
   }
}
