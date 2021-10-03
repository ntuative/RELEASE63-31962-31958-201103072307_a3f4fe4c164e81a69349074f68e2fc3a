package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_850:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_552:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_850);
         this.var_552 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_552;
      }
   }
}
