package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2677:Number;
      
      private var var_1863:Number;
      
      private var var_959:Number;
      
      private var var_958:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2677 = param1;
         this.var_1863 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_959 = param1;
         this.var_958 = 0;
      }
      
      public function update() : void
      {
         this.var_959 += this.var_1863;
         this.var_958 += this.var_959;
         if(this.var_958 > 0)
         {
            this.var_958 = 0;
            this.var_959 = this.var_2677 * -1 * this.var_959;
         }
      }
      
      public function get location() : Number
      {
         return this.var_958;
      }
   }
}
