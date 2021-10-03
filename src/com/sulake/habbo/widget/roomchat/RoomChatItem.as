package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ILabelWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   
   public class RoomChatItem
   {
      
      private static const const_933:Number = 18;
      
      private static const const_595:int = 6;
      
      private static const const_1289:int = 6;
      
      private static const const_934:int = 35;
      
      private static var var_338:IRegionWindow;
      
      private static var var_402:IRegionWindow;
      
      private static var var_210:IRegionWindow;
      
      private static var var_403:IRegionWindow;
       
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_75:IHabboLocalizationManager;
      
      private var _window:IRegionWindow;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _id:String;
      
      private var var_1650:String;
      
      private var var_2258:int = 0;
      
      private var var_2260:int = -1;
      
      private var var_1322:int;
      
      private var var_1083:int;
      
      private var var_863:String;
      
      private var _message:String;
      
      private var var_472:Array;
      
      private var var_709:Array;
      
      private var var_1711:int;
      
      private var var_1649:Number;
      
      private var var_243:BitmapData;
      
      private var var_2259:uint;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_1082:int;
      
      private var _width:Number = 0;
      
      private var var_1651:Boolean = false;
      
      private var var_708:Number = 0;
      
      private var _x:Number = 0;
      
      private var var_143:Number = 0;
      
      public function RoomChatItem(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IHabboLocalizationManager, param6:String)
      {
         this.var_863 = new String();
         this._message = new String();
         super();
         this._widget = param1;
         this._windowManager = param2;
         this._assetLibrary = param3;
         this._id = param4;
         this.var_75 = param5;
         this.var_1650 = param6;
         if(!var_210)
         {
            var_210 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_speak").content as XML,1) as IRegionWindow;
            var_210.tags.push("roomchat_bubble");
            var_210.x = 0;
            var_210.y = 0;
            var_210.width = 0;
            var_210.background = true;
            var_210.mouseThreshold = 0;
            var_210.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_402)
         {
            var_402 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_shout").content as XML,1) as IRegionWindow;
            var_402.tags.push("roomchat_bubble");
            var_402.x = 0;
            var_402.y = 0;
            var_402.width = 0;
            var_402.background = true;
            var_402.mouseThreshold = 0;
            var_210.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_403)
         {
            var_403 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_whisper").content as XML,1) as IRegionWindow;
            var_403.tags.push("roomchat_bubble");
            var_403.x = 0;
            var_403.y = 0;
            var_403.width = 0;
            var_403.background = true;
            var_403.mouseThreshold = 0;
            var_210.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
         if(!var_338)
         {
            var_338 = this._windowManager.buildFromXML(this._assetLibrary.getAssetByName("bubble_whisper").content as XML,1) as IRegionWindow;
            var_338.tags.push("roomchat_bubble");
            var_338.x = 0;
            var_338.y = 0;
            var_338.width = 0;
            var_338.background = true;
            var_338.mouseThreshold = 0;
            var_210.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
         }
      }
      
      public function dispose() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
            this._widget = null;
            this._windowManager = null;
            this.var_75 = null;
            this.var_243 = null;
         }
      }
      
      public function define(param1:RoomWidgetChatUpdateEvent) : void
      {
         this.var_1322 = param1.chatType;
         this.var_1083 = param1.userId;
         this.var_863 = param1.userName;
         this.var_1082 = param1.userCategory;
         this._message = param1.text;
         this.var_472 = param1.links;
         this.var_1649 = param1.userX;
         this.var_243 = param1.userImage;
         this.var_2259 = param1.userColor;
         this._roomId = param1.roomId;
         this._roomCategory = param1.roomCategory;
         this.renderView();
      }
      
      public function get view() : IWindowContainer
      {
         return this._window;
      }
      
      public function get screenLevel() : int
      {
         return this.var_2260;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1711;
      }
      
      public function get senderX() : Number
      {
         return this.var_1649;
      }
      
      public function set senderX(param1:Number) : void
      {
         this.var_1649 = param1;
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function get height() : Number
      {
         return const_933;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_143;
      }
      
      public function get aboveLevels() : int
      {
         return this.var_2258;
      }
      
      public function set aboveLevels(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function set screenLevel(param1:int) : void
      {
         this.var_2260 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1711 = param1;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
         if(this._window != null)
         {
            this._window.x = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.var_143 = param1;
         if(this._window != null)
         {
            this._window.y = param1 - this.var_708;
         }
      }
      
      public function hidePointer() : void
      {
         if(this._window)
         {
            this._window.findChildByName("pointer").visible = false;
         }
      }
      
      public function setPointerOffset(param1:Number) : void
      {
         if(!this._window || this._window.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = this._window.findChildByName("pointer") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByName("middle") as IBitmapWrapperWindow;
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         _loc2_.visible = true;
         param1 += this._window.width / 2;
         param1 = Math.min(param1,_loc3_.rectangle.right - _loc2_.width);
         param1 = Math.max(param1,_loc3_.rectangle.left);
         _loc2_.x = param1;
      }
      
      public function checkOverlap(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Rectangle = new Rectangle(this._x,this.var_143,this.width,const_933);
         var _loc6_:Rectangle = new Rectangle(param1,param2,param3,param4);
         return _loc5_.intersects(_loc6_);
      }
      
      public function hideView() : void
      {
         if(this._window)
         {
            this._window.dispose();
         }
         this._window = null;
         this.var_1651 = false;
      }
      
      public function renderView() : void
      {
         var messageWidth:int = 0;
         var x1:int = 0;
         var y1:int = 0;
         var userIconWindow:IBitmapWrapperWindow = null;
         var i:int = 0;
         var lastLinkEndPos:int = 0;
         var linkFormat:TextFormat = null;
         var filteredLink:String = null;
         var placeHolder:String = null;
         var placeholderPos:int = 0;
         var linkPos:Array = null;
         if(this.var_1651)
         {
            return;
         }
         this.var_1651 = true;
         if(this._window)
         {
            return;
         }
         var isRespect:Boolean = false;
         switch(this.var_1322)
         {
            case RoomWidgetChatUpdateEvent.const_147:
               this._window = var_210.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_127:
               this._window = var_403.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_121:
               this._window = var_402.clone() as IRegionWindow;
               break;
            case RoomWidgetChatUpdateEvent.const_310:
               this._window = var_338.clone() as IRegionWindow;
               isRespect = true;
               break;
            case RoomWidgetChatUpdateEvent.const_281:
               this._window = var_338.clone() as IRegionWindow;
               isRespect = true;
         }
         var background:IBitmapWrapperWindow = this._window.findChildByName("background") as IBitmapWrapperWindow;
         var nameWindow:ILabelWindow = this._window.findChildByName("name") as ILabelWindow;
         var textWindow:ITextWindow = this._window.findChildByName("message") as ITextWindow;
         var pointerWindow:IBitmapWrapperWindow = this._window.findChildByName("pointer") as IBitmapWrapperWindow;
         var pointerBitmapData:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_pointer").content as BitmapData;
         var totalHeight:Number = this._window.height;
         var topOffset:int = 0;
         if(this.var_243 != null)
         {
            topOffset = Math.max(0,(this.var_243.height - background.height) / 2);
            totalHeight = Math.max(totalHeight,this.var_243.height);
         }
         this._width = 0;
         this._window.x = this._x;
         this._window.y = this.var_143;
         this._window.width = 0;
         this._window.height = totalHeight;
         this.enableTooltip();
         this.addEventListeners(this._window);
         if(this.var_243 && !isRespect)
         {
            x1 = 14 - this.var_243.width / 2;
            y1 = Math.max(0,(background.height - this.var_243.height) / 2);
            userIconWindow = this._window.findChildByName("user_image") as IBitmapWrapperWindow;
            if(userIconWindow)
            {
               userIconWindow.width = this.var_243.width;
               userIconWindow.height = this.var_243.height;
               userIconWindow.bitmap = this.var_243;
               userIconWindow.disposesBitmap = false;
               userIconWindow.x = x1;
               userIconWindow.y = y1;
               this.var_708 = Math.max(0,(this.var_243.height - background.height) / 2);
               this._width += userIconWindow.x + this.var_243.width;
            }
         }
         if(nameWindow != null)
         {
            if(!isRespect)
            {
               nameWindow.text = this.var_863 + ": ";
               nameWindow.y += this.var_708;
               nameWindow.width = nameWindow.textWidth + const_595;
            }
            else
            {
               nameWindow.text = "";
               nameWindow.width = 0;
            }
            this._width += nameWindow.width;
         }
         if(this.var_1322 == RoomWidgetChatUpdateEvent.const_310)
         {
            textWindow.text = this.var_75.registerParameter("widgets.chatbubble.respect","username",this.var_863);
            this._width = const_934;
         }
         else if(this.var_1322 == RoomWidgetChatUpdateEvent.const_281)
         {
            textWindow.text = this.var_75.registerParameter("widget.chatbubble.petrespect","petname",this.var_863);
            this._width = const_934;
         }
         else if(this.var_472 == null)
         {
            textWindow.text = this.message;
         }
         else
         {
            this.var_709 = new Array();
            lastLinkEndPos = -1;
            i = 0;
            while(i < this.var_472.length)
            {
               filteredLink = this.var_472[i][1];
               placeHolder = "{" + i + "}";
               placeholderPos = this._message.indexOf(placeHolder);
               lastLinkEndPos = placeholderPos + filteredLink.length;
               this.var_709.push([placeholderPos,lastLinkEndPos]);
               this._message = this._message.replace(placeHolder,filteredLink);
               i++;
            }
            textWindow.text = this.message;
            textWindow.immediateClickMode = true;
            textWindow.setParamFlag(WindowParam.const_32,false);
            textWindow.setParamFlag(WindowParam.WINDOW_PARAM_FORCE_CLIPPING,true);
            textWindow.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMessageLinkMouseClick);
            linkFormat = textWindow.getTextFormat();
            linkFormat.color = 5923473;
            linkFormat.underline = true;
            i = 0;
            while(i < this.var_709.length)
            {
               linkPos = this.var_709[i];
               try
               {
                  textWindow.setTextFormat(linkFormat,linkPos[0],linkPos[1]);
               }
               catch(e:RangeError)
               {
                  Logger.log("Chat message links were malformed. Could not set TextFormat");
               }
               i++;
            }
         }
         if(textWindow.visible)
         {
            textWindow.x = this._width;
            if(nameWindow != null)
            {
               textWindow.x = nameWindow.x + nameWindow.width;
               if(nameWindow.width > const_595)
               {
                  textWindow.x -= const_595 - 1;
               }
            }
            textWindow.y += this.var_708;
            messageWidth = textWindow.textWidth;
            textWindow.width = messageWidth + const_1289;
            this._width += textWindow.width;
         }
         if(pointerWindow != null && pointerWindow.visible)
         {
            pointerWindow.bitmap = pointerBitmapData;
            pointerWindow.disposesBitmap = false;
            pointerWindow.x = this._width / 2;
            pointerWindow.y += this.var_708;
         }
         var bitmap:BitmapData = this.buildBubbleImage(nameWindow.width + textWindow.width,background.height,this.var_2259,isRespect);
         this._window.width = bitmap.width;
         this._window.y -= this.var_708;
         this._width = this._window.width;
         background.bitmap = bitmap;
         background.y = this.var_708;
      }
      
      private function buildBubbleImage(param1:int, param2:int, param3:uint, param4:Boolean) : BitmapData
      {
         var _loc13_:* = null;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc5_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_left").content as BitmapData;
         var _loc6_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_middle").content as BitmapData;
         var _loc7_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_left_color").content as BitmapData;
         var _loc8_:BitmapData = this._assetLibrary.getAssetByName("chat_bubble_right").content as BitmapData;
         var _loc9_:int = 0;
         var _loc10_:Point = new Point();
         var _loc11_:BitmapData = new BitmapData(_loc5_.width + param1 + _loc8_.width,param2,true,16711935);
         _loc9_ += _loc5_.width;
         _loc11_.copyPixels(_loc5_,_loc5_.rect,_loc10_);
         if(param4)
         {
            _loc13_ = this._assetLibrary.getAssetByName("chat_bubble_left_gen").content as BitmapData;
            _loc11_.copyPixels(_loc13_,_loc13_.rect,_loc10_,null,null,true);
         }
         else
         {
            _loc14_ = 232;
            _loc15_ = 177;
            _loc16_ = 55;
            if(param3 != 0)
            {
               _loc14_ = uint(param3 >> 16 & 255);
               _loc15_ = uint(param3 >> 8 & 255);
               _loc16_ = uint(param3 >> 0 & 255);
            }
            _loc11_.draw(_loc7_,null,new ColorTransform(_loc14_ / 255,_loc15_ / 255,_loc16_ / 255),BlendMode.DARKEN);
         }
         var _loc12_:Matrix = new Matrix();
         _loc12_.scale(param1 / _loc6_.width,1);
         _loc12_.translate(_loc9_,0);
         _loc11_.draw(_loc6_,_loc12_);
         _loc9_ += param1;
         _loc10_.x = _loc9_;
         _loc11_.copyPixels(_loc8_,_loc8_.rect,_loc10_);
         _loc9_ += _loc8_.width;
         return _loc11_;
      }
      
      public function enableTooltip() : void
      {
         if(this._window != null)
         {
            this._window.toolTipCaption = "${chat.history.drag.tooltip}";
            this._window.toolTipDelay = 500;
         }
      }
      
      public function disableTooltip() : void
      {
         if(this._window != null)
         {
            this._window.toolTipCaption = "";
         }
      }
      
      private function addEventListeners(param1:IWindowContainer) : void
      {
         param1.setParamFlag(HabboWindowParam.const_39,true);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onBubbleMouseClick);
         param1.addEventListener(WindowMouseEvent.const_45,this.onBubbleMouseDown);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.onBubbleMouseOver);
         param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.onBubbleMouseOut);
         param1.addEventListener(WindowMouseEvent.const_58,this.onBubbleMouseUp);
      }
      
      private function onMessageLinkMouseClick(param1:WindowMouseEvent) : void
      {
         var _loc2_:int = param1.target.getCharIndexAtPoint(param1.localX,param1.localY);
         var _loc3_:int = 0;
         while(_loc3_ < this.var_709.length)
         {
            if(_loc2_ >= this.var_709[_loc3_][0] && _loc2_ <= this.var_709[_loc3_][1])
            {
               if(this.var_472[_loc3_][2] == 0)
               {
                  HabboWebTools.openExternalLinkWarning(this.var_472[_loc3_][0]);
               }
               else if(this.var_472[_loc3_][2] == 1)
               {
                  HabboWebTools.openWebPage(this.var_1650 + this.var_472[_loc3_][0],"habboMain");
               }
               else
               {
                  HabboWebTools.openWebPage(this.var_1650 + this.var_472[_loc3_][0]);
               }
            }
            _loc3_++;
         }
         param1.stopImmediatePropagation();
      }
      
      private function onBubbleMouseClick(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseClick(this.var_1083,this.var_863,this.var_1082,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseDown(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseDown(this.var_1083,this.var_1082,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseOver(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseOver(this.var_1083,this.var_1082,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseOut(param1:WindowMouseEvent) : void
      {
         this._widget.onItemMouseOut(this.var_1083,this.var_1082,this._roomId,this._roomCategory,param1);
      }
      
      private function onBubbleMouseUp(param1:WindowMouseEvent) : void
      {
         this._widget.mouseUp();
      }
   }
}
