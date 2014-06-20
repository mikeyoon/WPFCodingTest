using MapControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApplication
{
    public class LocationsViewModel
    {
        public IEnumerable<Location> Locations
        {
            get;
            set;
        }

        public LocationsViewModel()
        {
            Locations = POIService.GetPointsOfInterest()
                                  .Select(p => new Location(p.Latitude, p.Longitude));

        }
    }
}
