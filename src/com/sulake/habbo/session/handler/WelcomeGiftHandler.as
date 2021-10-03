package com.sulake.habbo.session.handler
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.messages.incoming.room.chat.ChatMessageEvent;
   import com.sulake.habbo.session.IRoomHandlerListener;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.events.RoomSessionWelcomeGiftEvent;
   
   public class WelcomeGiftHandler extends BaseHandler
   {
       
      
      public function WelcomeGiftHandler(param1:IConnection, param2:IRoomHandlerListener)
      {
         super(param1,param2);
         if(param1 == null)
         {
            return;
         }
         param1.addMessageEvent(new ChatMessageEvent(this.onWelcomeGift));
      }
      
      private function onWelcomeGift(param1:ChatMessageEvent) : void
      {
         var _loc2_:String = param1.getParser().text;
         var _loc3_:IRoomSession = listener.getSession(_xxxRoomId,var_23);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:RoomSessionWelcomeGiftEvent = new RoomSessionWelcomeGiftEvent(_loc3_,"tarzan@jungle.com",_loc2_ == "v",true,false);
         listener.events.dispatchEvent(_loc4_);
      }
   }
}
