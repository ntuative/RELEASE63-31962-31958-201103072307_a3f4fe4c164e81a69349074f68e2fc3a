package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1022:int = 0;
       
      
      private var _id:int;
      
      private var _type:String = "";
      
      private var var_83:Vector3d;
      
      private var var_262:Vector3d;
      
      private var var_1551:Vector3d;
      
      private var var_1550:Vector3d;
      
      private var var_551:Array;
      
      private var var_67:RoomObjectModel;
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_550:IRoomObjectEventHandler;
      
      private var _updateID:int;
      
      private var _instanceId:int = 0;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this.var_83 = new Vector3d();
         this.var_262 = new Vector3d();
         this.var_1551 = new Vector3d();
         this.var_1550 = new Vector3d();
         this.var_551 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            this.var_551[_loc3_] = 0;
            _loc3_--;
         }
         this.var_67 = new RoomObjectModel();
         this._visualization = null;
         this.var_550 = null;
         this._updateID = 0;
         this._instanceId = var_1022++;
      }
      
      public function dispose() : void
      {
         this.var_83 = null;
         this.var_262 = null;
         if(this.var_67 != null)
         {
            this.var_67.dispose();
            this.var_67 = null;
         }
         this.var_551 = null;
         this.setVisualization(null);
         this.setEventHandler(null);
      }
      
      public function getId() : int
      {
         return this._id;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      public function getInstanceId() : int
      {
         return this._instanceId;
      }
      
      public function getLocation() : IVector3d
      {
         this.var_1551.assign(this.var_83);
         return this.var_1551;
      }
      
      public function getDirection() : IVector3d
      {
         this.var_1550.assign(this.var_262);
         return this.var_1550;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return this.var_67;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return this.var_67;
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.var_551.length)
         {
            return this.var_551[param1];
         }
         return -1;
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return this._visualization;
      }
      
      public function setType(param1:String) : void
      {
         this._type = param1;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_83.x != param1.x || this.var_83.y != param1.y || this.var_83.z != param1.z)
         {
            this.var_83.x = param1.x;
            this.var_83.y = param1.y;
            this.var_83.z = param1.z;
            ++this._updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_262.x != param1.x || this.var_262.y != param1.y || this.var_262.z != param1.z)
         {
            this.var_262.x = (param1.x % 360 + 360) % 360;
            this.var_262.y = (param1.y % 360 + 360) % 360;
            this.var_262.z = (param1.z % 360 + 360) % 360;
            ++this._updateID;
         }
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < this.var_551.length)
         {
            if(this.var_551[param2] != param1)
            {
               this.var_551[param2] = param1;
               ++this._updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != this._visualization)
         {
            if(this._visualization != null)
            {
               this._visualization.dispose();
            }
            this._visualization = param1;
            if(this._visualization != null)
            {
               this._visualization.object = this;
            }
         }
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == this.var_550)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = this.var_550;
         if(_loc2_ != null)
         {
            this.var_550 = null;
            _loc2_.object = null;
         }
         this.var_550 = param1;
         if(this.var_550 != null)
         {
            this.var_550.object = this;
         }
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return this.var_550;
      }
      
      public function getUpdateID() : int
      {
         return this._updateID;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return this.getEventHandler();
      }
   }
}
