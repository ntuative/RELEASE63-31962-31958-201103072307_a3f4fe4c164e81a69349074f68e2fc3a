package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_794:TileHeightMap = null;
      
      private var var_1227:LegacyWallGeometry = null;
      
      private var var_1228:RoomCamera = null;
      
      private var var_793:SelectedRoomObjectData = null;
      
      private var var_795:SelectedRoomObjectData = null;
      
      private var var_2739:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1227 = new LegacyWallGeometry();
         this.var_1228 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_794;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_794 != null)
         {
            this.var_794.dispose();
         }
         this.var_794 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1227;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1228;
      }
      
      public function get worldType() : String
      {
         return this.var_2739;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2739 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_793;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_793 != null)
         {
            this.var_793.dispose();
         }
         this.var_793 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_795;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_795 != null)
         {
            this.var_795.dispose();
         }
         this.var_795 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_794 != null)
         {
            this.var_794.dispose();
            this.var_794 = null;
         }
         if(this.var_1227 != null)
         {
            this.var_1227.dispose();
            this.var_1227 = null;
         }
         if(this.var_1228 != null)
         {
            this.var_1228.dispose();
            this.var_1228 = null;
         }
         if(this.var_793 != null)
         {
            this.var_793.dispose();
            this.var_793 = null;
         }
         if(this.var_795 != null)
         {
            this.var_795.dispose();
            this.var_795 = null;
         }
      }
   }
}
