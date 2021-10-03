package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContextStateListener;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class MouseEventProcessor implements IEventProcessor, IDisposable
   {
      
      protected static var var_324:Array;
      
      protected static var var_279:Array;
       
      
      protected var var_652:Point;
      
      protected var var_166:WindowController;
      
      protected var var_73:WindowController;
      
      protected var var_156:IWindowRenderer;
      
      protected var var_138:IDesktopWindow;
      
      protected var var_1497:IMouseCursor;
      
      protected var var_801:IWindowContextStateListener;
      
      private var _disposed:Boolean = false;
      
      public function MouseEventProcessor(param1:IMouseCursor)
      {
         super();
         this.var_652 = new Point();
         this.var_1497 = param1;
         if(var_324 == null)
         {
            var_324 = new Array();
            var_324[0] = MouseCursorType.const_324;
            var_324[1] = MouseCursorType.const_31;
            var_324[2] = MouseCursorType.const_324;
            var_324[3] = MouseCursorType.const_324;
            var_324[4] = MouseCursorType.const_324;
            var_324[5] = MouseCursorType.const_31;
            var_324[6] = MouseCursorType.const_324;
         }
         if(var_279 == null)
         {
            var_279 = new Array();
            var_279[0] = WindowState.const_106;
            var_279[1] = WindowState.const_84;
            var_279[2] = WindowState.const_98;
            var_279[3] = WindowState.const_72;
            var_279[4] = WindowState.const_54;
            var_279[5] = WindowState.const_100;
            var_279[6] = WindowState.const_82;
         }
      }
      
      public static function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_279.indexOf(param1);
         if(_loc3_ > -1)
         {
            var_324[_loc3_] = param2;
         }
      }
      
      public static function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return var_324[_loc2_];
            }
         }
         return MouseCursorType.const_31;
      }
      
      protected static function convertMouseEventType(param1:MouseEvent, param2:IWindow, param3:IWindow) : WindowMouseEvent
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Boolean = false;
         _loc5_ = new Point(param1.stageX,param1.stageY);
         param2.convertPointFromGlobalToLocalSpace(_loc5_);
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_OVER:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_OUT:
               _loc4_ = "null";
               break;
            case MouseEvent.ROLL_OUT:
               _loc4_ = "null";
               break;
            case MouseEvent.ROLL_OVER:
               _loc4_ = "null";
               break;
            case MouseEvent.CLICK:
               _loc4_ = "null";
               break;
            case MouseEvent.DOUBLE_CLICK:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_UP:
               _loc6_ = _loc5_.x > -1 && _loc5_.y > -1 && _loc5_.x < param2.width && _loc5_.y < param2.height;
               _loc4_ = !!_loc6_ ? "null" : WindowMouseEvent.const_197;
               break;
            case MouseEvent.MOUSE_WHEEL:
               _loc4_ = "null";
               break;
            default:
               _loc4_ = "null";
         }
         return new WindowMouseEvent(_loc4_,param2,param3,_loc5_.x,_loc5_.y,param1.stageX,param1.stageY,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown,param1.delta,false,true);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
         }
      }
      
      public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var event:MouseEvent = null;
         var index:int = 0;
         var child:WindowController = null;
         var array:Array = null;
         var temp:IWindow = null;
         var state:EventProcessorState = param1;
         var eventQueue:IEventQueue = param2;
         this.var_138 = state.desktop;
         this.var_73 = state.var_1230 as WindowController;
         this.var_166 = state.var_1232 as WindowController;
         this.var_156 = state.renderer;
         this.var_801 = state.var_1233;
         eventQueue.begin();
         var point:Point = new Point();
         this.var_652.x = -1;
         this.var_652.y = -1;
         while(true)
         {
            event = eventQueue.next() as MouseEvent;
            if(event == null)
            {
               break;
            }
            if(event.stageX != this.var_652.x || event.stageY != this.var_652.y)
            {
               this.var_652.x = event.stageX;
               this.var_652.y = event.stageY;
               array = new Array();
               this.var_138.groupParameterFilteredChildrenUnderPoint(this.var_652,array,WindowParam.const_30);
            }
            index = array != null ? int(array.length) : 0;
            this.var_1497.type = MouseCursorType.const_31;
            if(index == 0)
            {
               if(event.type == MouseEvent.MOUSE_MOVE)
               {
                  if(this.var_73 != this.var_138 && !this.var_73.disposed)
                  {
                     this.var_73.getGlobalPosition(point);
                     this.var_73.update(this.var_73,new WindowMouseEvent(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.var_73,null,event.stageX - point.x,event.stageY - point.y,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta));
                     this.var_73 = WindowController(this.var_138);
                  }
               }
            }
            while(--index > -1)
            {
               child = this.passMouseEvent(WindowController(array[index]),event);
               if(child != null && child.visible)
               {
                  if(event.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(child != this.var_73)
                     {
                        if(!this.var_73.disposed)
                        {
                           this.var_73.getGlobalPosition(point);
                           this.var_73.update(this.var_73,new WindowMouseEvent(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.var_73,child,event.stageX - point.x,event.stageY - point.y,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta));
                        }
                        if(!child.disposed)
                        {
                           child.getGlobalPosition(point);
                           child.update(child,new WindowMouseEvent(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,child,null,event.stageX - point.x,event.stageY - point.y,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta));
                        }
                        if(!child.disposed)
                        {
                           this.var_73 = child;
                        }
                     }
                  }
                  else if(event.type == MouseEvent.MOUSE_UP || event.type == MouseEvent.CLICK)
                  {
                     if(this.var_73 && !this.var_73.disposed)
                     {
                        if(this.var_801 != null)
                        {
                           this.var_801.mouseEventReceived(event.type,this.var_73);
                        }
                     }
                  }
                  temp = child.parent;
                  while(temp && !temp.disposed)
                  {
                     if(temp is IInputProcessorRoot)
                     {
                        IInputProcessorRoot(temp).process(convertMouseEventType(event,temp,child));
                        break;
                     }
                     temp = temp.parent;
                  }
                  if(event.altKey)
                  {
                     if(this.var_73)
                     {
                        Logger.log("HOVER: " + this.var_73.name);
                     }
                  }
                  if(this.var_73 is IInteractiveWindow)
                  {
                     try
                     {
                        this.var_1497.type = getMouseCursorByState(this.var_73.state);
                     }
                     catch(e:Error)
                     {
                        var_1497.type = MouseCursorType.const_31;
                     }
                  }
                  if(child != this.var_138)
                  {
                     event.stopPropagation();
                     eventQueue.remove();
                  }
                  break;
               }
            }
         }
         eventQueue.end();
         state.desktop = this.var_138;
         state.var_1230 = this.var_73;
         state.var_1232 = this.var_166;
         state.renderer = this.var_156;
         state.var_1233 = this.var_801;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent, param3:Boolean = false) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_82))
         {
            return null;
         }
         var _loc4_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc4_);
         if(param2.type == MouseEvent.MOUSE_UP)
         {
            if(param1 != this.var_166)
            {
               if(this.var_166 && !this.var_166.disposed)
               {
                  this.var_166.update(this.var_166,convertMouseEventType(new MouseEvent(MouseEvent.MOUSE_UP,false,true,param2.localX,param2.localY,null,param2.ctrlKey,param2.altKey,param2.shiftKey,param2.buttonDown,param2.delta),this.var_166,param1));
                  this.var_166 = null;
               }
            }
         }
         var _loc5_:BitmapData = this.var_156.method_8(param1);
         if(!param1.validateLocalPointIntersection(_loc4_,_loc5_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_494))
         {
            if(param1.parent != null)
            {
               return this.passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         if(!param3)
         {
            switch(param2.type)
            {
               case MouseEvent.MOUSE_DOWN:
                  this.var_166 = param1;
                  break;
               case MouseEvent.CLICK:
                  if(this.var_166 != param1)
                  {
                     return null;
                  }
                  this.var_166 = null;
                  break;
               case MouseEvent.DOUBLE_CLICK:
                  if(this.var_166 != param1)
                  {
                     return null;
                  }
                  this.var_166 = null;
                  break;
            }
         }
         if(!param1.update(param1,convertMouseEventType(param2,param1,null)) && !param3)
         {
            if(param1.parent)
            {
               return this.passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         return param1;
      }
   }
}
