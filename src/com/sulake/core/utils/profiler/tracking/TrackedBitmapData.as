package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      private static var var_526:uint = 0;
      
      private static var var_525:uint = 0;
      
      private static const const_1729:uint = 16777215;
       
      
      private var var_389:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         super(param2,param3,param4,param5);
         ++var_526;
         var_525 += param2 * param3 * 4;
         this.var_389 = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_526;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_525;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_525 -= width * height * 4;
            --var_526;
            super.dispose();
            this._disposed = true;
            this.var_389 = null;
         }
      }
   }
}
