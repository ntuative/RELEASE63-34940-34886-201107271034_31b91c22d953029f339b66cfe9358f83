package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1041:BigInteger;
      
      private var var_2859:BigInteger;
      
      private var var_2091:BigInteger;
      
      private var var_2887:BigInteger;
      
      private var var_1645:BigInteger;
      
      private var var_2090:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1645 = param1;
         this.var_2090 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1645.toString() + ",generator: " + this.var_2090.toString() + ",secret: " + param1);
         this.var_1041 = new BigInteger();
         this.var_1041.fromRadix(param1,param2);
         this.var_2859 = this.var_2090.modPow(this.var_1041,this.var_1645);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2091 = new BigInteger();
         this.var_2091.fromRadix(param1,param2);
         this.var_2887 = this.var_2091.modPow(this.var_1041,this.var_1645);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2859.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2887.toRadix(param1);
      }
   }
}
