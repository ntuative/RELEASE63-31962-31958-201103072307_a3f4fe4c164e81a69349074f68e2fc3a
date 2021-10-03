package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.visualization.data.AnimationData;
   import com.sulake.habbo.room.object.visualization.data.AnimationDataMultiDirection;
   import com.sulake.habbo.room.object.visualization.data.AnimationSizeData;
   import com.sulake.room.utils.XMLValidator;
   
   public class PetAnimationSizeData extends AnimationSizeData
   {
      
      public static const const_709:int = -1;
       
      
      private var var_1199:Map;
      
      private var var_1456:Map;
      
      private var var_949:String;
      
      public function PetAnimationSizeData(param1:int, param2:int)
      {
         this.var_1199 = new Map();
         this.var_1456 = new Map();
         super(param1,param2);
      }
      
      public function definePostures(param1:XML) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(param1 == null)
         {
            return false;
         }
         if(XMLValidator.checkRequiredAttributes(param1,["defaultPosture"]))
         {
            this.var_949 = param1.@defaultPosture;
         }
         else
         {
            this.var_949 = null;
         }
         var _loc2_:* = ["id","animationId"];
         var _loc3_:XMLList = param1.posture;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length())
         {
            _loc5_ = _loc3_[_loc4_];
            if(!XMLValidator.checkRequiredAttributes(_loc5_,_loc2_))
            {
               return false;
            }
            _loc6_ = String(_loc5_.@id);
            _loc7_ = int(_loc5_.@animationId);
            this.var_1199.add(_loc6_,_loc7_);
            if(this.var_949 == null)
            {
               this.var_949 = _loc6_;
            }
            _loc4_++;
         }
         if(this.var_1199.getValue(this.var_949) == null)
         {
            return false;
         }
         return true;
      }
      
      public function defineGestures(param1:XML) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(param1 == null)
         {
            return true;
         }
         var _loc2_:* = ["id","animationId"];
         var _loc3_:XMLList = param1.gesture;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length())
         {
            _loc5_ = _loc3_[_loc4_];
            if(!XMLValidator.checkRequiredAttributes(_loc5_,_loc2_))
            {
               return false;
            }
            _loc6_ = String(_loc5_.@id);
            _loc7_ = int(_loc5_.@animationId);
            this.var_1456.add(_loc6_,_loc7_);
            _loc4_++;
         }
         return true;
      }
      
      public function getAnimationForPosture(param1:String) : int
      {
         if(this.var_1199.getValue(param1) == null)
         {
            param1 = this.var_949;
         }
         return int(this.var_1199.getValue(param1));
      }
      
      public function getAnimationForGesture(param1:String) : int
      {
         if(this.var_1456.getValue(param1) == null)
         {
            return const_709;
         }
         return int(this.var_1456.getValue(param1));
      }
      
      override protected function createAnimationData() : AnimationData
      {
         return new AnimationDataMultiDirection();
      }
   }
}
