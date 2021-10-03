package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_940:int = 3;
       
      
      private var var_2358:int = -1;
      
      private var var_2361:int = -2;
      
      private var _targetLoc:Vector3d = null;
      
      private var var_412:Vector3d = null;
      
      private var var_2363:Boolean = false;
      
      private var var_2362:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      private var var_2357:Boolean = false;
      
      private var var_2356:int = 0;
      
      private var var_2359:int = 0;
      
      private var var_2360:int = 0;
      
      private var var_2355:int = 0;
      
      private var var_1347:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_412;
      }
      
      public function get targetId() : int
      {
         return this.var_2358;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2361;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2363;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2362;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2354;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2357;
      }
      
      public function get screenWd() : int
      {
         return this.var_2356;
      }
      
      public function get screenHt() : int
      {
         return this.var_2359;
      }
      
      public function get roomWd() : int
      {
         return this.var_2360;
      }
      
      public function get roomHt() : int
      {
         return this.var_2355;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2362 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2357 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2360 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2355 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this._targetLoc == null)
         {
            this._targetLoc = new Vector3d();
         }
         if(this._targetLoc.x != param1.x || this._targetLoc.y != param1.y || this._targetLoc.z != param1.z)
         {
            this._targetLoc.assign(param1);
            this.var_1347 = 0;
         }
      }
      
      public function dispose() : void
      {
         this._targetLoc = null;
         this.var_412 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_412 != null)
         {
            return;
         }
         this.var_412 = new Vector3d();
         this.var_412.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this._targetLoc != null && this.var_412 != null)
         {
            ++this.var_1347;
            _loc4_ = Vector3d.dif(this._targetLoc,this.var_412);
            if(_loc4_.length <= param2)
            {
               this.var_412 = this._targetLoc;
               this._targetLoc = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_940 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1347 <= const_940)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_412 = Vector3d.sum(this.var_412,_loc4_);
            }
         }
      }
   }
}
