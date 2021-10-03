package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit, IAvatarImageListener
   {
       
      
      private var _controller:HabboAvatarEditor;
      
      private var var_548:String;
      
      private var var_819:String;
      
      private var var_1267:Boolean;
      
      private var var_17:IWindowContainer;
      
      private var var_327:IBitmapWrapperWindow;
      
      private var var_1529:int;
      
      private var var_758:Boolean;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         this._controller = param1;
         this.var_1529 = param2;
         this.createView();
         this.update(param4,param5,param3);
      }
      
      public function get id() : int
      {
         return this.var_1529;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_74:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param2 = "null";
         }
         this.var_548 = param1;
         this.var_819 = param2;
         this.var_1267 = param3;
         this.updateView();
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = this._controller.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         this.var_17 = this._controller.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         this.var_17.procedure = this.eventHandler;
         this.var_17.visible = false;
         this.var_327 = this.var_17.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function dispose() : void
      {
         this._controller = null;
         this.var_548 = null;
         this.var_819 = null;
         this.var_327 = null;
         if(this.var_17)
         {
            this.var_17.dispose();
            this.var_17 = null;
         }
         this.var_758 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_758;
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(this.var_548 && this.var_1267)
         {
            _loc5_ = this._controller.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_90,this.var_819,this);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_35,parseInt(FigureData.const_855));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_35);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = this._controller.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(this.var_327)
         {
            if(this.var_327.bitmap)
            {
               this.var_327.bitmap.dispose();
            }
            this.var_327.bitmap = new BitmapData(this.var_327.width,this.var_327.height,true,0);
            _loc7_ = (this.var_327.width - _loc1_.width) / 2;
            _loc8_ = (this.var_327.height - _loc1_.height) / 2;
            this.var_327.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = this.var_17.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = this.var_1267;
         }
         var _loc4_:IContainerButtonWindow = this.var_17.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = this.var_1267 && this.var_548 != null;
         }
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               this.var_548 = this._controller.figureData.getFigureString();
               this.var_819 = this._controller.gender;
               this._controller.handler.saveWardrobeOutfit(this.var_1529,this);
               this.updateView();
               break;
            case "get_button":
               if(this.var_548)
               {
                  this._controller.loadAvatarInEditor(this.var_548,this.var_819,this._controller.clubMemberLevel);
               }
         }
      }
      
      public function get figure() : String
      {
         return this.var_548;
      }
      
      public function get gender() : String
      {
         return this.var_819;
      }
      
      public function get view() : IWindowContainer
      {
         return this.var_17;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.updateView();
      }
   }
}