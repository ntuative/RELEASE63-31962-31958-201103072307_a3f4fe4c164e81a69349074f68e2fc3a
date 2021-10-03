package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_958:RoomObjectLocationCacheItem = null;
      
      private var var_195:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_958 = new RoomObjectLocationCacheItem(param1);
         this.var_195 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_958;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_195;
      }
      
      public function dispose() : void
      {
         if(this.var_958 != null)
         {
            this.var_958.dispose();
            this.var_958 = null;
         }
         if(this.var_195 != null)
         {
            this.var_195.dispose();
            this.var_195 = null;
         }
      }
   }
}
