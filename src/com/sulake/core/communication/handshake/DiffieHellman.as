package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_936:BigInteger;
      
      private var var_2518:BigInteger;
      
      private var var_1824:BigInteger;
      
      private var var_2560:BigInteger;
      
      private var var_1413:BigInteger;
      
      private var var_1825:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1413 = param1;
         this.var_1825 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1413.toString() + ",generator: " + this.var_1825.toString() + ",secret: " + param1);
         this.var_936 = new BigInteger();
         this.var_936.fromRadix(param1,param2);
         this.var_2518 = this.var_1825.modPow(this.var_936,this.var_1413);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1824 = new BigInteger();
         this.var_1824.fromRadix(param1,param2);
         this.var_2560 = this.var_1824.modPow(this.var_936,this.var_1413);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2518.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2560.toRadix(param1);
      }
   }
}
