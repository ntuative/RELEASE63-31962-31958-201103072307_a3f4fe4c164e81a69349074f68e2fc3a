package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1460:String = "WE_CREATE";
      
      public static const const_1663:String = "WE_CREATED";
      
      public static const const_1567:String = "WE_DESTROY";
      
      public static const const_308:String = "WE_DESTROYED";
      
      public static const const_1458:String = "WE_OPEN";
      
      public static const const_1578:String = "WE_OPENED";
      
      public static const const_1452:String = "WE_CLOSE";
      
      public static const const_1559:String = "WE_CLOSED";
      
      public static const const_1580:String = "WE_FOCUS";
      
      public static const const_313:String = "WE_FOCUSED";
      
      public static const const_1387:String = "WE_UNFOCUS";
      
      public static const const_1558:String = "WE_UNFOCUSED";
      
      public static const const_1378:String = "WE_ACTIVATE";
      
      public static const const_1583:String = "WE_ACTIVATED";
      
      public static const const_1470:String = "WE_DEACTIVATE";
      
      public static const const_718:String = "WE_DEACTIVATED";
      
      public static const const_516:String = "WE_SELECT";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_677:String = "WE_UNSELECT";
      
      public static const const_755:String = "WE_UNSELECTED";
      
      public static const const_1826:String = "WE_ATTACH";
      
      public static const const_1807:String = "WE_ATTACHED";
      
      public static const const_1859:String = "WE_DETACH";
      
      public static const const_1738:String = "WE_DETACHED";
      
      public static const const_1531:String = "WE_LOCK";
      
      public static const const_1547:String = "WE_LOCKED";
      
      public static const const_1505:String = "WE_UNLOCK";
      
      public static const const_1396:String = "WE_UNLOCKED";
      
      public static const const_781:String = "WE_ENABLE";
      
      public static const const_303:String = "WE_ENABLED";
      
      public static const const_877:String = "WE_DISABLE";
      
      public static const const_244:String = "WE_DISABLED";
      
      public static const const_1416:String = "WE_RELOCATE";
      
      public static const const_354:String = "WE_RELOCATED";
      
      public static const const_1510:String = "WE_RESIZE";
      
      public static const const_50:String = "WE_RESIZED";
      
      public static const const_1561:String = "WE_MINIMIZE";
      
      public static const const_1562:String = "WE_MINIMIZED";
      
      public static const const_1542:String = "WE_MAXIMIZE";
      
      public static const const_1617:String = "WE_MAXIMIZED";
      
      public static const const_1565:String = "WE_RESTORE";
      
      public static const const_1524:String = "WE_RESTORED";
      
      public static const const_1795:String = "WE_ARRANGE";
      
      public static const const_1942:String = "WE_ARRANGED";
      
      public static const const_103:String = "WE_UPDATE";
      
      public static const const_1957:String = "WE_UPDATED";
      
      public static const const_1759:String = "WE_CHILD_RELOCATE";
      
      public static const const_514:String = "WE_CHILD_RELOCATED";
      
      public static const const_1850:String = "WE_CHILD_RESIZE";
      
      public static const const_325:String = "WE_CHILD_RESIZED";
      
      public static const const_1832:String = "WE_CHILD_REMOVE";
      
      public static const const_487:String = "WE_CHILD_REMOVED";
      
      public static const const_1956:String = "WE_PARENT_RELOCATE";
      
      public static const const_1751:String = "WE_PARENT_RELOCATED";
      
      public static const const_1776:String = "WE_PARENT_RESIZE";
      
      public static const const_1451:String = "WE_PARENT_RESIZED";
      
      public static const const_199:String = "WE_OK";
      
      public static const const_695:String = "WE_CANCEL";
      
      public static const const_109:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_436:String = "WE_SCROLL";
      
      public static const const_163:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_2010:IWindow;
      
      protected var var_2011:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_2010 = param3;
         this.var_2011 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_2010;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_2011 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_2011;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
