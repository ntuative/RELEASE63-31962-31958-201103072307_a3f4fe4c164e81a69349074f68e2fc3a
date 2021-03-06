package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_443:uint = 0;
      
      public static const const_1487:uint = 1;
      
      public static const const_1961:int = 0;
      
      public static const const_1842:int = 1;
      
      public static const const_1824:int = 2;
      
      public static const const_1767:int = 3;
      
      public static const const_1423:int = 4;
      
      public static const const_335:int = 5;
      
      public static var var_1231:IMouseCursor;
      
      public static var var_382:IEventQueue;
      
      private static var var_607:IEventProcessor;
      
      private static var var_1761:uint = const_443;
      
      private static var stage:Stage;
      
      private static var var_156:IWindowRenderer;
       
      
      private var var_2487:EventProcessorState;
      
      private var var_2485:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_186:DisplayObjectContainer;
      
      protected var var_2822:Boolean = true;
      
      protected var var_1247:Error;
      
      protected var var_2001:int = -1;
      
      protected var var_1246:IInternalWindowServices;
      
      protected var var_1500:IWindowParser;
      
      protected var var_2765:IWindowFactory;
      
      protected var var_138:IDesktopWindow;
      
      protected var var_1501:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_533:Boolean = false;
      
      private var var_2486:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_156 = param2;
         this._localization = param4;
         this.var_186 = param5;
         this.var_1246 = new ServiceManager(this,param5);
         this.var_2765 = param3;
         this.var_1500 = new WindowParser(this);
         this.var_2485 = param7;
         if(!stage)
         {
            if(this.var_186 is Stage)
            {
               stage = this.var_186 as Stage;
            }
            else if(this.var_186.stage)
            {
               stage = this.var_186.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_138 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_186.addChild(this.var_138.getDisplayObject());
         this.var_186.doubleClickEnabled = true;
         this.var_186.addEventListener(Event.RESIZE,this.stageResizedHandler);
         if(var_1231 == null)
         {
            var_1231 = new MouseCursorControl(this.var_186);
         }
         this.var_2487 = new EventProcessorState(var_156,this.var_138,this.var_138,null,this.var_2485);
         inputMode = const_443;
         this.var_1501 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1761;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_382)
         {
            if(var_382 is IDisposable)
            {
               IDisposable(var_382).dispose();
            }
         }
         if(var_607)
         {
            if(var_607 is IDisposable)
            {
               IDisposable(var_607).dispose();
            }
         }
         switch(value)
         {
            case const_443:
               var_382 = new MouseEventQueue(stage);
               var_607 = new MouseEventProcessor(var_1231);
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1487:
               var_382 = new TabletEventQueue(stage);
               var_607 = new TabletEventProcessor(var_1231);
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_443;
               throw new Error("Unknown input mode " + value);
         }
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
            this.var_186.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_186.removeChild(IGraphicContextHost(this.var_138).getGraphicContext(true) as DisplayObject);
            this.var_138.destroy();
            this.var_138 = null;
            this.var_1501.destroy();
            this.var_1501 = null;
            if(this.var_1246 is IDisposable)
            {
               IDisposable(this.var_1246).dispose();
            }
            this.var_1246 = null;
            this.var_1500.dispose();
            this.var_1500 = null;
            var_156 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1247;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2001;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1247 = param2;
         this.var_2001 = param1;
         if(this.var_2822)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1247 = null;
         this.var_2001 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1246;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1500;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2765;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_138;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_138.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1423,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1501;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_138,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_138)
         {
            this.var_138 = null;
         }
         if(param1.state != WindowState.const_573)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_156.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_533 = true;
         if(this.var_1247)
         {
            throw this.var_1247;
         }
         var_607.process(this.var_2487,var_382);
         this.var_533 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2486 = true;
         var_156.update(param1);
         this.var_2486 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_138 != null && !this.var_138.disposed)
         {
            if(this.var_186 is Stage)
            {
               this.var_138.width = Stage(this.var_186).stageWidth;
               this.var_138.height = Stage(this.var_186).stageHeight;
            }
            else
            {
               this.var_138.width = this.var_186.width;
               this.var_138.height = this.var_186.height;
            }
         }
      }
   }
}
