﻿// XAML Map Control - http://xamlmapcontrol.codeplex.com/
// Copyright © Clemens Fischer 2012-2013
// Licensed under the Microsoft Public License (Ms-PL)

#if NETFX_CORE
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
#else
using System.Windows;
using System.Windows.Controls;
#endif

namespace MapControl
{
    /// <summary>
    /// Manages a collection of selectable items on a Map. Uses MapItem as item container class.
    /// </summary>
    public class MapItemsControl : ListBox
    {
        public MapItemsControl()
        {
            DefaultStyleKey = typeof(MapItemsControl);
            MapPanel.AddParentMapHandlers(this);
        }

        protected override DependencyObject GetContainerForItemOverride()
        {
            return new MapItem();
        }
    }
}
