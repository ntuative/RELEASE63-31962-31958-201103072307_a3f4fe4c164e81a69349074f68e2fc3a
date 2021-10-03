package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1310:int = 2;
      
      private static const const_1309:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_301:Array;
      
      private var var_1124:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_301 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1310)
         {
            this.var_301 = new Array();
            this.var_301.push(const_1309);
            this.var_1124 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1124 > 0)
         {
            --this.var_1124;
         }
         if(this.var_1124 == 0)
         {
            if(this.var_301.length > 0)
            {
               super.setAnimation(this.var_301.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
