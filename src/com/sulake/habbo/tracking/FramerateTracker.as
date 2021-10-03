package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1545:int;
      
      private var var_2080:int;
      
      private var var_1020:int;
      
      private var var_527:Number;
      
      private var var_2079:Boolean;
      
      private var var_2081:int;
      
      private var var_1546:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2080 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2081 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2079 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1020;
         if(this.var_1020 == 1)
         {
            this.var_527 = param1;
            this.var_1545 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1020);
            this.var_527 = this.var_527 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2079 && param3 - this.var_1545 >= this.var_2080 && this.var_1546 < this.var_2081)
         {
            _loc5_ = 1000 / this.var_527;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1546;
            this.var_1545 = param3;
            this.var_1020 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
