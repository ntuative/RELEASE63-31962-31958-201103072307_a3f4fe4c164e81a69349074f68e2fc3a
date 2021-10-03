package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1729:int;
      
      private var var_2285:Array;
      
      private var var_2284:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Array, param5:Boolean = false, param6:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param5,param6);
         this.var_1729 = param2;
         this.var_2285 = param3;
         this.var_2284 = param4;
      }
      
      public function get petId() : int
      {
         return this.var_1729;
      }
      
      public function get allCommands() : Array
      {
         return this.var_2285;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_2284;
      }
   }
}
