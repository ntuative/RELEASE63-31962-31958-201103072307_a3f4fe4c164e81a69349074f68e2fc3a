package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1947:int = 0;
      
      public static const const_1390:int = 1;
      
      public static const const_1432:int = 2;
      
      public static const const_1889:int = 3;
      
      public static const const_1854:int = 4;
      
      public static const const_1868:int = 5;
      
      public static const const_1501:int = 10;
      
      public static const const_1904:int = 11;
      
      public static const const_1844:int = 12;
      
      public static const const_1908:int = 13;
      
      public static const const_1810:int = 16;
      
      public static const const_1744:int = 17;
      
      public static const const_1815:int = 18;
      
      public static const const_1898:int = 19;
      
      public static const const_1813:int = 20;
      
      public static const const_1770:int = 22;
      
      public static const const_1754:int = 23;
      
      public static const const_1872:int = 24;
      
      public static const const_1958:int = 25;
      
      public static const const_1907:int = 26;
      
      public static const const_1929:int = 27;
      
      public static const const_1779:int = 28;
      
      public static const const_1903:int = 29;
      
      public static const const_1798:int = 100;
      
      public static const const_1914:int = 101;
      
      public static const const_1766:int = 102;
      
      public static const const_1821:int = 103;
      
      public static const const_1803:int = 104;
      
      public static const const_1953:int = 105;
      
      public static const const_1799:int = 106;
      
      public static const const_1829:int = 107;
      
      public static const const_1941:int = 108;
      
      public static const const_1963:int = 109;
      
      public static const const_1837:int = 110;
      
      public static const const_1736:int = 111;
      
      public static const const_1870:int = 112;
      
      public static const const_1772:int = 113;
      
      public static const const_1827:int = 114;
      
      public static const const_1749:int = 115;
      
      public static const const_1849:int = 116;
      
      public static const const_1863:int = 117;
      
      public static const const_1862:int = 118;
      
      public static const const_1732:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1390:
            case const_1501:
               return "banned";
            case const_1432:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
