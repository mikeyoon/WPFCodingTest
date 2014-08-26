﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using Caching;
using MapControl;

namespace WpfApplication
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            switch (Properties.Settings.Default.TileCache)
            {
                case "FileDbCache":
                    TileImageLoader.Cache = new FileDbCache(TileImageLoader.DefaultCacheName, TileImageLoader.DefaultCacheDirectory);
                    break;
                case "ImageFileCache":
                    TileImageLoader.Cache = new ImageFileCache(TileImageLoader.DefaultCacheName, TileImageLoader.DefaultCacheDirectory);
                    break;
                default:
                    break;
            }

            InitializeComponent();

            // Static method of adding data. ViewModels are better :)
            var polylines = (ICollection<object>)Resources["Polylines"];
            polylines.Add(
                new SamplePolyline
                {
                    Locations = LocationCollection.Parse("53.5140,8.1451 53.5123,8.1506 53.5156,8.1623 53.5276,8.1757 53.5491,8.1852 53.5495,8.1877 53.5426,8.1993 53.5184,8.2219 53.5182,8.2386 53.5195,8.2387")
                });
            polylines.Add(
                new SamplePolyline
                {
                    Locations = LocationCollection.Parse("53.5978,8.1212 53.6018,8.1494 53.5859,8.1554 53.5852,8.1531 53.5841,8.1539 53.5802,8.1392 53.5826,8.1309 53.5867,8.1317 53.5978,8.1212")
                });
        }

        private void MapMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                map.ZoomMap(e.GetPosition(map), Math.Floor(map.ZoomLevel + 1.5));
                //map.TargetCenter = map.ViewportPointToLocation(e.GetPosition(map));
            }
        }

        private void MapMouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                map.ZoomMap(e.GetPosition(map), Math.Ceiling(map.ZoomLevel - 1.5));
            }
        }

        private void MapMouseLeave(object sender, MouseEventArgs e)
        {
            mouseLocation.Text = string.Empty;
        }

        private void MapMouseMove(object sender, MouseEventArgs e)
        {
            var location = map.ViewportPointToLocation(e.GetPosition(map));
            var longitude = Location.NormalizeLongitude(location.Longitude);
            var latString = location.Latitude < 0 ?
                string.Format(CultureInfo.InvariantCulture, "S  {0:00.00000}", -location.Latitude) :
                string.Format(CultureInfo.InvariantCulture, "N  {0:00.00000}", location.Latitude);
            var lonString = longitude < 0 ?
                string.Format(CultureInfo.InvariantCulture, "W {0:000.00000}", -longitude) :
                string.Format(CultureInfo.InvariantCulture, "E {0:000.00000}", longitude);
            mouseLocation.Text = latString + "\n" + lonString;
        }

        private void MapManipulationInertiaStarting(object sender, ManipulationInertiaStartingEventArgs e)
        {
            e.TranslationBehavior.DesiredDeceleration = 0.001;
        }

        private void SeamarksClick(object sender, RoutedEventArgs e)
        {
            var seamarks = (TileLayer)Resources["SeamarksTileLayer"];
            var checkBox = (CheckBox)sender;

            if ((bool)checkBox.IsChecked)
            {
                map.TileLayers.Add(seamarks);
            }
            else
            {
                map.TileLayers.Remove(seamarks);
            }
        }
    }
}
