   M S B A M L   `   `   `  ����J  FMapControl.WPF, Version=1.3.10.0, Culture=neutral, PublicKeyToken=null?0clr-namespace:MapControl;assembly=MapControl.WPF
MapControl  5   	   J FWpfApplication, Version=1.3.10.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfApplicationWpfApplication 5   	      WpfApplication.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @map0clr-namespace:MapControl;assembly=MapControl.WPF     5   	   .localclr-namespace:WpfApplication     5   	     � Title$,  &XAML MapControl - WPF Test Application��5   	   $	��600��68   $	��800��6E    � DataContext 5   	   �� *App.LocationsViewModel+ � 	Resources 5      $   MapControl.TileLayerCollection   
TileLayers   MapControl.TileLayer   
SourceName   Description   
Background   
Foreground   
TileSource$   MapControl.TileSourceConverter   MaxZoomLevel  SeamarksTileLayer	   MinZoomLevel  TileLayersViewSource
 �� Source2  ,WpfApplication.LocationToVisibilityConverter ! LocationToVisibilityConverter  PolylineItemTemplate   MapControl.MapPolyline   	Locations  PolylineItemStyle �� 
TargetType   MapControl.MapItem �� Property �� Value �� 
TargetType)  #WpfApplication.SampleItemCollection  	Polylines��%x
  &	        &	     &	 �    7   &	 �    &	 �    &	 `	    &	 
      5	   
     5
      $ Google Images��6   $! Google Maps - © {y} Google��67    �	#FF3F3F3F
 �����$9 3http://khm{i}.google.com/kh/v=135&x={x}&y={y}&z={z} 5      $ 20��6i     5      $ Google Maps��6   $! Google Maps - © {y} Google��65   $2 ,http://mt{i}.google.com/vt/x={x}&y={y}&z={z} 5      $ 20��6^     5      $ OpenStreetMap��6   $1 +© {y} OpenStreetMap Contributors, CC-BY-SA��67   $7 1http://{c}.tile.openstreetmap.org/{z}/{x}/{y}.png 5        5      $ OpenCycleMap��6   $M GOpenCycleMap - © {y} Andy Allen & OpenStreetMap Contributors, CC-BY-SA��66   $< 6http://{c}.tile.opencyclemap.org/cycle/{z}/{x}/{y}.png 5        5      $ OCM Transport��6   $W QOpenCycleMap Transport - © {y} Andy Allen & OpenStreetMap Contributors, CC-BY-SA��67   $A ;http://{c}.tile2.opencyclemap.org/transport/{z}/{x}/{y}.png 5        5      $ OCM Landscape��6   $W QOpenCycleMap Landscape - © {y} Andy Allen & OpenStreetMap Contributors, CC-BY-SA��67   $A ;http://{c}.tile3.opencyclemap.org/landscape/{z}/{x}/{y}.png 5        5      $ MapQuest OSM��6   $A ;MapQuest OSM - © {y} MapQuest & OpenStreetMap Contributors��66   $? 9http://otile{n}.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png 5        5      $ 	Bing Maps��6   $. (Bing Maps - © {y} Microsoft Corporation��63   $E ?http://ecn.t{i}.tiles.virtualearth.net/tiles/r{q}.png?g=0&stl=h 5      $ 20��6m     5      $ Bing Images��6   $. (Bing Maps - © {y} Microsoft Corporation��65    �	#FF3F3F3F
 �����$@ :http://ecn.t{i}.tiles.virtualearth.net/tiles/a{q}.jpeg?g=0 5      $ 20��6d     5      $ Bing Hybrid��6   $. (Bing Maps - © {y} Microsoft Corporation��65    �	#FF3F3F3F
 �����$F @http://ecn.t{i}.tiles.virtualearth.net/tiles/h{q}.jpeg?g=0&stl=h 5      $ 20��6n     5!      $ OSM Local Files��6   $1 +© {y} OpenStreetMap Contributors, CC-BY-SA��69   $G Afile:///C:/Users/jwortley/Documents/Airware/Cache/{z}/{x}/{y}.jpg 5"      5#        5$   
   $ Seamarks��62   $. (© {y} OpenSeaMap Contributors, CC-BY-SA��6H   $9 3http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png 5%      $	 10��6Y   $ 18��6k   �� 5&   
   8
   6<     5'   
   6.   �� 5(   
   .R�5)        
���  ��$��3��6K    6   �� *	Locations+6K   5*      �� 5+   
   "  6*   .�5,      ��  � �� 5-      �� 5.      "  6&   .R�5/        
���  ��$��3��6W    6*   �� *	Locations+6W   50      52      53        55   
   6%   56      .��57      �  � RowDefinitions 58   
   �� 59      �� 5:      $
��Auto �6   .+�5<   
      MapControl.Map  -   5          Name$	 map��5<      $��2q�6   	   MapControl.MapBase 	  Center"
   MapControl.LocationConverter$ 53.5,8.2
 6*    	  	ZoomLevel$ 11Q�6<    	  MaxZoomLevel$ 20Q�6K    	  	TileLayer 5=      ��  �� Source# [  �� Path$ CurrentItem�.+�5C          MapControl.MapItemsControl  #��[ 6"   #��[ 5D   "   �� 5J      $
��Left=�6   $��Bottom=�63   $��4q�6N   $��10(�6Y   ��5K      �� *TileLayer.Description+ �� ElementName$	 map��5L      � 5M   
   $��1��6    � ColumnDefinitions 5N      �� 5O      �� 5P      $
��Auto �6#   .+�5R      �� ��6   �� *	Refresh+.��61   	Refresh6:   �� 5S      -   5         ��Name$ mouseLocation��5S      $��5q�6/   $��Bottom=�6:   $��Segoe UI Mono)�6U   �� 5T      $��1��6    �� Orientation$ 
Horizontal=�6)   $��Right=�6B   .+�5U      �� $��5q�6   .+�5V      �� $��
Zoom Level��6    $��0,0,0,2q�62   $��Center=�6C   
�������$��10(�6r   �� 5W       � ToolTip$ 
Zoom Level��6   $	��100��62   $��Center=�6>    � SmallChange$
 0.01Q�6Y    � Minimum 5X      �� *MinZoomLevel+$	 map�� � Maximum 5Y      �� *MaxZoomLevel+$	 map��  � Value  5Z      �� *TargetZoomLevel+$	 map��5[      �� 5\      $��5q�6   .+�5]      �� $��Heading��6    $��0,0,0,2q�6/   $��Center=�6@   
�������$��10(�6o   �� 5^      $ Heading��6   $	��100��6/   $��Center=�6;   $ 5Q�6V   ! � LargeChange$! 45Q�6f   $ 0Q�5_      $	 360Q�6)     67   �� *TargetHeading+$	 map��5`      �� 5a      $��5q�6   .+�5b      �� $��Image Opacity��6    $��0,0,0,2q�65   $��Center=�6F   
�������$��10(�6u   �� 5c      $ Image Opacity��6   $	��100��65   $��Center=�6A   $ 0Q�5d      $ 1Q�6)     65   �� *	Opacity+$ mapImage��5e      �� 5f      -   5        $ Seamarks Overlay��5f      $��7q�66   $��Bottom=�6A   $��Seamarks��6\   6o   �� 5g      $ 
Tile Layer��6   $��5q�60   $��Bottom=�6;   " �� DisplayMemberPath$" 
SourceName��6V   # �� SelectedIndex$# 0��5h      ��6-   �� # [ 5i      5j      5k      5l      