package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl extends Sprite implements IMouseCursor, IDisposable
   {
       
      
      private var _type:uint;
      
      private var var_222:Stage;
      
      private var var_384:Boolean;
      
      private var var_1229:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_1944:Dictionary;
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         this._type = MouseCursorType.const_31;
         this.var_222 = param1.stage;
         this.var_384 = true;
         this.var_1944 = new Dictionary();
         this.var_222.addChild(this);
         this.var_222.addEventListener(Event.MOUSE_LEAVE,this.onStageMouseLeave);
         this.var_222.addEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
         this.var_222.addEventListener(MouseEvent.MOUSE_OVER,this.onStageMouseMove);
         this.var_222.addEventListener(MouseEvent.MOUSE_OUT,this.onStageMouseMove);
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_222.removeEventListener(Event.MOUSE_LEAVE,this.onStageMouseLeave);
            this.var_222.removeEventListener(MouseEvent.MOUSE_MOVE,this.onStageMouseMove);
            this.var_222.removeEventListener(MouseEvent.MOUSE_OVER,this.onStageMouseMove);
            this.var_222.removeEventListener(MouseEvent.MOUSE_OUT,this.onStageMouseMove);
            this._disposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function set type(param1:uint) : void
      {
         this._type = param1;
         this.var_1229 = this.var_1944[this._type];
         if(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(this.var_1229)
         {
            addChild(this.var_1229);
            Mouse.hide();
         }
         else
         {
            Mouse.show();
            switch(this._type)
            {
               case MouseCursorType.const_31:
               case MouseCursorType.ARROW:
                  Mouse.cursor = MouseCursor.ARROW;
                  break;
               case MouseCursorType.const_324:
                  Mouse.cursor = MouseCursor.BUTTON;
                  break;
               case MouseCursorType.const_1441:
               case MouseCursorType.const_257:
               case MouseCursorType.const_1418:
               case MouseCursorType.const_1566:
                  Mouse.cursor = MouseCursor.HAND;
                  break;
               case MouseCursorType.NONE:
                  Mouse.cursor = MouseCursor.ARROW;
                  Mouse.hide();
            }
         }
      }
      
      override public function get visible() : Boolean
      {
         return this.var_384;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this.var_384 = param1;
         super.visible = param1;
         if(this.var_384)
         {
            Mouse.show();
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         this.var_1944[param1] = param2;
      }
      
      private function onStageMouseMove(param1:MouseEvent) : void
      {
         if(this.var_1229)
         {
            x = param1.stageX - 2;
            y = param1.stageY;
            if(this._type == MouseCursorType.const_31)
            {
               this.var_384 = false;
               Mouse.show();
            }
            else
            {
               this.var_384 = true;
               Mouse.hide();
            }
         }
      }
      
      private function onStageMouseLeave(param1:Event) : void
      {
         if(this.var_1229 && this._type != MouseCursorType.const_31)
         {
            Mouse.hide();
            this.var_384 = false;
         }
      }
   }
}
