package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_947:int = 10;
      
      private static const const_599:int = 20;
      
      private static const const_1327:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_301:Array;
      
      private var var_706:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_301 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_706)
            {
               this.var_706 = true;
               this.var_301 = new Array();
               this.var_301.push(const_1327);
               this.var_301.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_947)
         {
            if(this.var_706)
            {
               this.var_706 = false;
               this.var_301 = new Array();
               this.var_301.push(const_947 + param1);
               this.var_301.push(const_599 + param1);
               this.var_301.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
