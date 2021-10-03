package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_960:IAssetLoader;
      
      private var var_1673:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1673 = param1;
         this.var_960 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1673;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_960;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_960 != null)
            {
               if(!this.var_960.disposed)
               {
                  this.var_960.dispose();
                  this.var_960 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
