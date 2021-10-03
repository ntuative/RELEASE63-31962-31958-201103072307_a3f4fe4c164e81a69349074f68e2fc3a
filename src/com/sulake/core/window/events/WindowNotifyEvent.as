package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1480:String = "WN_CRETAE";
      
      public static const const_1466:String = "WN_CREATED";
      
      public static const const_1107:String = "WN_DESTROY";
      
      public static const const_1050:String = "WN_DESTROYED";
      
      public static const const_1168:String = "WN_OPEN";
      
      public static const const_1053:String = "WN_OPENED";
      
      public static const const_1092:String = "WN_CLOSE";
      
      public static const const_1042:String = "WN_CLOSED";
      
      public static const const_1141:String = "WN_FOCUS";
      
      public static const const_1071:String = "WN_FOCUSED";
      
      public static const const_1031:String = "WN_UNFOCUS";
      
      public static const const_1051:String = "WN_UNFOCUSED";
      
      public static const const_1009:String = "WN_ACTIVATE";
      
      public static const const_361:String = "WN_ACTVATED";
      
      public static const const_1163:String = "WN_DEACTIVATE";
      
      public static const const_995:String = "WN_DEACTIVATED";
      
      public static const const_548:String = "WN_SELECT";
      
      public static const const_371:String = "WN_SELECTED";
      
      public static const const_746:String = "WN_UNSELECT";
      
      public static const const_700:String = "WN_UNSELECTED";
      
      public static const const_1022:String = "WN_LOCK";
      
      public static const const_1015:String = "WN_LOCKED";
      
      public static const const_981:String = "WN_UNLOCK";
      
      public static const const_1019:String = "WN_UNLOCKED";
      
      public static const const_1013:String = "WN_ENABLE";
      
      public static const const_723:String = "WN_ENABLED";
      
      public static const const_1085:String = "WN_DISABLE";
      
      public static const const_863:String = "WN_DISABLED";
      
      public static const const_622:String = "WN_RESIZE";
      
      public static const const_178:String = "WN_RESIZED";
      
      public static const const_1216:String = "WN_RELOCATE";
      
      public static const const_511:String = "WN_RELOCATED";
      
      public static const const_1114:String = "WN_MINIMIZE";
      
      public static const const_1174:String = "WN_MINIMIZED";
      
      public static const const_1208:String = "WN_MAXIMIZE";
      
      public static const const_1034:String = "WN_MAXIMIZED";
      
      public static const const_1116:String = "WN_RESTORE";
      
      public static const const_1160:String = "WN_RESTORED";
      
      public static const const_1745:String = "WN_ARRANGE";
      
      public static const const_1756:String = "WN_ARRANGED";
      
      public static const const_1801:String = "WN_UPDATE";
      
      public static const const_1820:String = "WN_UPDATED";
      
      public static const const_346:String = "WN_CHILD_ADDED";
      
      public static const const_886:String = "WN_CHILD_REMOVED";
      
      public static const const_280:String = "WN_CHILD_RESIZED";
      
      public static const const_277:String = "WN_CHILD_RELOCATED";
      
      public static const const_239:String = "WN_CHILD_ACTIVATED";
      
      public static const const_458:String = "WN_PARENT_ADDED";
      
      public static const const_1017:String = "WN_PARENT_REMOVED";
      
      public static const const_495:String = "WN_PARENT_RESIZED";
      
      public static const const_1043:String = "WN_PARENT_RELOCATED";
      
      public static const const_675:String = "WN_PARENT_ACTIVATED";
      
      public static const const_469:String = "WN_STATE_UPDATED";
      
      public static const const_472:String = "WN_STYLE_UPDATED";
      
      public static const const_439:String = "WN_PARAM_UPDATED";
      
      public static const const_1757:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_2010,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
