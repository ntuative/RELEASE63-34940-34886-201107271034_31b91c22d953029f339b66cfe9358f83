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
         param1["background"] = const_1008;
         param1["badge"] = const_860;
         param1["bitmap"] = const_456;
         param1["border"] = const_804;
         param1["border_notify"] = const_1836;
         param1["bubble"] = const_779;
         param1["bubble_pointer_up"] = const_1255;
         param1["bubble_pointer_right"] = const_1267;
         param1["bubble_pointer_down"] = const_1251;
         param1["bubble_pointer_left"] = const_1322;
         param1["button"] = const_649;
         param1["button_thick"] = const_1026;
         param1["button_icon"] = const_1973;
         param1["button_group_left"] = const_854;
         param1["button_group_center"] = const_799;
         param1["button_group_right"] = const_1036;
         param1["canvas"] = const_1019;
         param1["checkbox"] = const_897;
         param1["closebutton"] = const_1256;
         param1["container"] = const_402;
         param1["container_button"] = const_754;
         param1["display_object_wrapper"] = const_871;
         param1["dropmenu"] = const_507;
         param1["dropmenu_item"] = const_668;
         param1["frame"] = const_417;
         param1["frame_notify"] = const_2043;
         param1["header"] = const_784;
         param1["html"] = const_1368;
         param1["icon"] = const_1396;
         param1["itemgrid"] = const_1205;
         param1["itemgrid_horizontal"] = const_626;
         param1["itemgrid_vertical"] = const_963;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_451;
         param1["itemlist_vertical"] = const_448;
         param1["label"] = const_875;
         param1["maximizebox"] = const_2036;
         param1["menu"] = const_1966;
         param1["menu_item"] = const_1796;
         param1["submenu"] = const_1409;
         param1["minimizebox"] = const_1928;
         param1["notify"] = const_1954;
         param1["null"] = const_825;
         param1["password"] = const_926;
         param1["radiobutton"] = const_929;
         param1["region"] = const_365;
         param1["restorebox"] = const_2007;
         param1["scaler"] = const_613;
         param1["scaler_horizontal"] = const_2050;
         param1["scaler_vertical"] = const_1810;
         param1["scrollbar_horizontal"] = const_581;
         param1["scrollbar_vertical"] = const_793;
         param1["scrollbar_slider_button_up"] = const_1310;
         param1["scrollbar_slider_button_down"] = const_1350;
         param1["scrollbar_slider_button_left"] = const_1276;
         param1["scrollbar_slider_button_right"] = const_1233;
         param1["scrollbar_slider_bar_horizontal"] = const_1290;
         param1["scrollbar_slider_bar_vertical"] = const_1258;
         param1["scrollbar_slider_track_horizontal"] = const_1394;
         param1["scrollbar_slider_track_vertical"] = const_1336;
         param1["scrollable_itemlist"] = const_1768;
         param1["scrollable_itemlist_vertical"] = const_670;
         param1["scrollable_itemlist_horizontal"] = const_1278;
         param1["selector"] = const_1013;
         param1["selector_list"] = const_1003;
         param1["submenu"] = const_1409;
         param1["tab_button"] = const_830;
         param1["tab_container_button"] = const_1375;
         param1["tab_context"] = const_422;
         param1["tab_content"] = const_1187;
         param1["tab_selector"] = const_866;
         param1["text"] = const_1004;
         param1["input"] = const_1040;
         param1["toolbar"] = const_1792;
         param1["tooltip"] = const_398;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
