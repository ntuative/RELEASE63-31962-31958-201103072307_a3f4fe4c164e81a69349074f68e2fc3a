package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2787:uint;
      
      private var var_139:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_272:IWindowContext;
      
      private var var_1068:IMouseDraggingService;
      
      private var var_1069:IMouseScalingService;
      
      private var var_1066:IMouseListenerService;
      
      private var var_1070:IFocusManagerService;
      
      private var var_1067:IToolTipAgentService;
      
      private var var_1065:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2787 = 0;
         this.var_139 = param2;
         this.var_272 = param1;
         this.var_1068 = new WindowMouseDragger(param2);
         this.var_1069 = new WindowMouseScaler(param2);
         this.var_1066 = new WindowMouseListener(param2);
         this.var_1070 = new FocusManager(param2);
         this.var_1067 = new WindowToolTipAgent(param2);
         this.var_1065 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1068 != null)
         {
            this.var_1068.dispose();
            this.var_1068 = null;
         }
         if(this.var_1069 != null)
         {
            this.var_1069.dispose();
            this.var_1069 = null;
         }
         if(this.var_1066 != null)
         {
            this.var_1066.dispose();
            this.var_1066 = null;
         }
         if(this.var_1070 != null)
         {
            this.var_1070.dispose();
            this.var_1070 = null;
         }
         if(this.var_1067 != null)
         {
            this.var_1067.dispose();
            this.var_1067 = null;
         }
         if(this.var_1065 != null)
         {
            this.var_1065.dispose();
            this.var_1065 = null;
         }
         this.var_139 = null;
         this.var_272 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1068;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1069;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1066;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1070;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1067;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1065;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
