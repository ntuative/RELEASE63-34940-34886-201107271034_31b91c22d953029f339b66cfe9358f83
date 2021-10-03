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
         param1["null"] = const_188;
         param1["bound_to_parent_rect"] = const_103;
         param1["child_window"] = const_1274;
         param1["embedded_controller"] = const_1421;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_952;
         param1["mouse_dragging_target"] = const_302;
         param1["mouse_dragging_trigger"] = const_429;
         param1["mouse_scaling_target"] = const_335;
         param1["mouse_scaling_trigger"] = const_582;
         param1["horizontal_mouse_scaling_trigger"] = const_279;
         param1["vertical_mouse_scaling_trigger"] = const_299;
         param1["observe_parent_input_events"] = const_1193;
         param1["optimize_region_to_layout_size"] = const_529;
         param1["parent_window"] = const_1204;
         param1["relative_horizontal_scale_center"] = const_209;
         param1["relative_horizontal_scale_fixed"] = const_163;
         param1["relative_horizontal_scale_move"] = const_325;
         param1["relative_horizontal_scale_strech"] = const_428;
         param1["relative_scale_center"] = const_1385;
         param1["relative_scale_fixed"] = const_939;
         param1["relative_scale_move"] = const_1407;
         param1["relative_scale_strech"] = const_1392;
         param1["relative_vertical_scale_center"] = const_215;
         param1["relative_vertical_scale_fixed"] = const_146;
         param1["relative_vertical_scale_move"] = const_266;
         param1["relative_vertical_scale_strech"] = const_252;
         param1["on_resize_align_left"] = const_859;
         param1["on_resize_align_right"] = const_611;
         param1["on_resize_align_center"] = const_534;
         param1["on_resize_align_top"] = const_848;
         param1["on_resize_align_bottom"] = const_530;
         param1["on_resize_align_middle"] = const_647;
         param1["on_accommodate_align_left"] = const_1236;
         param1["on_accommodate_align_right"] = const_646;
         param1["on_accommodate_align_center"] = const_776;
         param1["on_accommodate_align_top"] = const_1231;
         param1["on_accommodate_align_bottom"] = const_595;
         param1["on_accommodate_align_middle"] = const_950;
         param1["route_input_events_to_parent"] = const_517;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1245;
         param1["scalable_with_mouse"] = const_1277;
         param1["reflect_horizontal_resize_to_parent"] = const_494;
         param1["reflect_vertical_resize_to_parent"] = const_526;
         param1["reflect_resize_to_parent"] = const_370;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1422;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
