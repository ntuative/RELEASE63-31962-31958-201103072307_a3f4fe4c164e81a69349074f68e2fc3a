package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_555:int = -1;
      
      public static const const_1020:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_143:int = 0;
      
      private var var_2111:int = 1;
      
      private var var_834:int = 1;
      
      private var var_1566:int = 1;
      
      private var var_2112:int = -1;
      
      private var var_2113:int = 0;
      
      private var var_2114:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_143 = param3;
         this.var_2114 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2111 = param4;
         if(param5 < 0)
         {
            param5 = const_555;
         }
         this.var_834 = param5;
         this.var_1566 = param5;
         if(param7 >= 0)
         {
            this.var_2112 = param7;
            this.var_2113 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_143;
      }
      
      public function get repeats() : int
      {
         return this.var_2111;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_834;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2114;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_834 < 0)
         {
            return const_555;
         }
         return this.var_1566;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_834 > 0 && param1 > this.var_834)
         {
            param1 = this.var_834;
         }
         this.var_1566 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2112;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2113;
      }
   }
}
