package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2844:String = "";
      
      public function TabletEventProcessor(param1:IMouseCursor)
      {
         super(param1);
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_138 = param1.desktop;
         var_73 = param1.var_1230 as WindowController;
         var_166 = param1.var_1232 as WindowController;
         var_156 = param1.renderer;
         var_801 = param1.var_1233;
         param2.begin();
         param2.end();
         param1.desktop = var_138;
         param1.var_1230 = var_73;
         param1.var_1232 = var_166;
         param1.renderer = var_156;
         param1.var_1233 = var_801;
      }
   }
}
