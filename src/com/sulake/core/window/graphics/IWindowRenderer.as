package com.sulake.core.window.graphics
{
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContext;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public interface IWindowRenderer extends IUpdateReceiver
   {
       
      
      function set debug(param1:Boolean) : void;
      
      function get allocatedByteCount() : uint;
      
      function addToRenderQueue(param1:IWindow, param2:Rectangle, param3:uint) : void;
      
      function flushRenderQueue() : void;
      
      function invalidate(param1:IWindowContext, param2:Rectangle) : void;
      
      function method_8(param1:IWindow) : BitmapData;
   }
}
