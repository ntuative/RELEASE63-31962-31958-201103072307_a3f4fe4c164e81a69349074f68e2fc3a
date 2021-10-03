package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_308:int;
      
      private var var_2162:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_308 = param1;
         this.var_2162 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_308;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2162;
      }
   }
}
