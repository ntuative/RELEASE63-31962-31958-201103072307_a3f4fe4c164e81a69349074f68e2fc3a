package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_701:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_758)
         {
            _structure = null;
            _assets = null;
            var_271 = null;
            var_275 = null;
            var_548 = null;
            var_531 = null;
            var_321 = null;
            if(!var_1238 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_741 = null;
            var_758 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_701[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_701[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_347:
               switch(_loc3_)
               {
                  case AvatarAction.const_654:
                  case AvatarAction.const_540:
                  case AvatarAction.const_356:
                  case AvatarAction.const_761:
                  case AvatarAction.const_400:
                  case AvatarAction.const_643:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_275:
            case AvatarAction.const_885:
            case AvatarAction.const_227:
            case AvatarAction.const_848:
            case AvatarAction.const_776:
            case AvatarAction.const_835:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
