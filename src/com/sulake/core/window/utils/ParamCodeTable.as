package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_200;
         param1["bound_to_parent_rect"] = const_94;
         param1["child_window"] = const_1089;
         param1["embedded_controller"] = const_1172;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_864;
         param1["mouse_dragging_target"] = const_229;
         param1["mouse_dragging_trigger"] = const_393;
         param1["mouse_scaling_target"] = const_292;
         param1["mouse_scaling_trigger"] = const_584;
         param1["horizontal_mouse_scaling_trigger"] = const_267;
         param1["vertical_mouse_scaling_trigger"] = const_255;
         param1["observe_parent_input_events"] = const_1179;
         param1["optimize_region_to_layout_size"] = const_452;
         param1["parent_window"] = const_1131;
         param1["relative_horizontal_scale_center"] = const_174;
         param1["relative_horizontal_scale_fixed"] = const_139;
         param1["relative_horizontal_scale_move"] = const_380;
         param1["relative_horizontal_scale_strech"] = const_404;
         param1["relative_scale_center"] = const_1038;
         param1["relative_scale_fixed"] = const_802;
         param1["relative_scale_move"] = const_1061;
         param1["relative_scale_strech"] = const_1115;
         param1["relative_vertical_scale_center"] = const_196;
         param1["relative_vertical_scale_fixed"] = const_133;
         param1["relative_vertical_scale_move"] = const_392;
         param1["relative_vertical_scale_strech"] = const_296;
         param1["on_resize_align_left"] = const_720;
         param1["on_resize_align_right"] = const_455;
         param1["on_resize_align_center"] = const_507;
         param1["on_resize_align_top"] = const_656;
         param1["on_resize_align_bottom"] = const_422;
         param1["on_resize_align_middle"] = const_492;
         param1["on_accommodate_align_left"] = const_1101;
         param1["on_accommodate_align_right"] = const_432;
         param1["on_accommodate_align_center"] = const_629;
         param1["on_accommodate_align_top"] = const_980;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_778;
         param1["route_input_events_to_parent"] = const_494;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1079;
         param1["scalable_with_mouse"] = const_1120;
         param1["reflect_horizontal_resize_to_parent"] = const_476;
         param1["reflect_vertical_resize_to_parent"] = const_534;
         param1["reflect_resize_to_parent"] = const_299;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1205;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
