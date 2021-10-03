package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_680;
         param1["bitmap"] = const_769;
         param1["border"] = const_745;
         param1["border_notify"] = const_1386;
         param1["button"] = const_508;
         param1["button_thick"] = const_633;
         param1["button_icon"] = const_1506;
         param1["button_group_left"] = const_854;
         param1["button_group_center"] = const_682;
         param1["button_group_right"] = const_889;
         param1["canvas"] = const_905;
         param1["checkbox"] = const_652;
         param1["closebutton"] = const_1086;
         param1["container"] = const_395;
         param1["container_button"] = const_834;
         param1["display_object_wrapper"] = const_902;
         param1["dropmenu"] = const_541;
         param1["dropmenu_item"] = const_479;
         param1["frame"] = const_389;
         param1["frame_notify"] = const_1664;
         param1["header"] = const_657;
         param1["html"] = const_999;
         param1["icon"] = const_1029;
         param1["itemgrid"] = const_1209;
         param1["itemgrid_horizontal"] = const_546;
         param1["itemgrid_vertical"] = const_807;
         param1["itemlist"] = const_994;
         param1["itemlist_horizontal"] = const_391;
         param1["itemlist_vertical"] = const_360;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1440;
         param1["menu"] = const_1399;
         param1["menu_item"] = const_1619;
         param1["submenu"] = const_1088;
         param1["minimizebox"] = const_1621;
         param1["notify"] = const_1473;
         param1["null"] = const_634;
         param1["password"] = const_878;
         param1["radiobutton"] = const_768;
         param1["region"] = const_486;
         param1["restorebox"] = const_1544;
         param1["scaler"] = const_759;
         param1["scaler_horizontal"] = const_1518;
         param1["scaler_vertical"] = const_1443;
         param1["scrollbar_horizontal"] = const_557;
         param1["scrollbar_vertical"] = const_852;
         param1["scrollbar_slider_button_up"] = const_1064;
         param1["scrollbar_slider_button_down"] = const_1123;
         param1["scrollbar_slider_button_left"] = const_1175;
         param1["scrollbar_slider_button_right"] = const_1110;
         param1["scrollbar_slider_bar_horizontal"] = const_1159;
         param1["scrollbar_slider_bar_vertical"] = const_1119;
         param1["scrollbar_slider_track_horizontal"] = const_1109;
         param1["scrollbar_slider_track_vertical"] = const_1193;
         param1["scrollable_itemlist"] = const_1413;
         param1["scrollable_itemlist_vertical"] = const_564;
         param1["scrollable_itemlist_horizontal"] = const_993;
         param1["selector"] = const_744;
         param1["selector_list"] = const_673;
         param1["submenu"] = const_1088;
         param1["tab_button"] = const_489;
         param1["tab_container_button"] = const_1023;
         param1["tab_context"] = const_376;
         param1["tab_content"] = const_1077;
         param1["tab_selector"] = const_831;
         param1["text"] = const_478;
         param1["input"] = const_892;
         param1["toolbar"] = const_1550;
         param1["tooltip"] = const_340;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
