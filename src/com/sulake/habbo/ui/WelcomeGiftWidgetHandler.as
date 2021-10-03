package com.sulake.habbo.ui
{
   import com.sulake.habbo.session.events.RoomSessionWelcomeGiftEvent;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetEmailUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWelcomeGiftUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChangeEmailMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import flash.events.Event;
   
   public class WelcomeGiftWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var _disposed:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function WelcomeGiftWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._container = null;
            this._disposed = true;
         }
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_632;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function getWidgetMessages() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(RoomWidgetChangeEmailMessage.CHANGE_EMAIL);
         return _loc1_;
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionWelcomeGiftEvent.const_111];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!param1)
         {
            return null;
         }
         switch(param1.type)
         {
            case RoomWidgetChangeEmailMessage.CHANGE_EMAIL:
               _loc2_ = Math.random() > 0.5 ? "null" : RoomWidgetEmailUpdateEvent.const_461;
               _loc3_ = new RoomWidgetEmailUpdateEvent(_loc2_);
               this._container.events.dispatchEvent(_loc3_);
         }
         return null;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         switch(param1.type)
         {
            case RoomSessionWelcomeGiftEvent.const_111:
               _loc2_ = param1 as RoomSessionWelcomeGiftEvent;
               _loc3_ = new RoomWidgetWelcomeGiftUpdateEvent();
               _loc3_.email = _loc2_.email;
               _loc3_.isVerified = _loc2_.isVerified;
               _loc3_.allowEmailChange = _loc2_.allowEmailChange;
               _loc3_.update = _loc2_.update;
               this._container.events.dispatchEvent(_loc3_);
         }
      }
      
      public function update() : void
      {
      }
   }
}
