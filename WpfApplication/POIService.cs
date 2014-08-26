using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApplication
{
    public static class POIService
    {
        /// <summary>
        /// Made it static for ease of use. Doesn't have to be. Feel free to retrieve this data however you like.
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<PointOfInterest> GetPointsOfInterest()
        {
            return new List<PointOfInterest>()
            {
                new PointOfInterest(53.495989601842965, 8.1094296956841383, "#FF0000"),
                new PointOfInterest(53.480873480260449, 8.1087430501763258, "#00FF00"),
                new PointOfInterest(53.480873480260449, 8.13861212976617, "#FF0000"),
                new PointOfInterest(53.4988488026366, 8.139298775273982, "#0000FF"),
                new PointOfInterest(53.499869899052037, 8.1726010824028883, "#FFFF00"),
                new PointOfInterest(53.482712215244383, 8.1753476644341383, "#0000FF"),
                new PointOfInterest(53.481282094921688, 8.1993802572075758, "#FF00FF"),
                new PointOfInterest(53.497010767116741, 8.199723579961482, "#00FFFF"),
            };
        }
    }

    /// <summary>
    /// Sample Model for holding data.
    /// Latitude and Longitude are in a generic format here.
    /// 'Location' is the type that XamlMapControl uses to render.
    /// </summary>
    public class PointOfInterest
    {
        public double Latitude { get; set; }

        public double Longitude { get; set; }

        /// <summary>
        /// This is a hex value for the color. 
        /// Bonus points if you have time to add this.
        /// </summary>
        public string Color { get; set; }

        public PointOfInterest(double lat, double lng, string hexColor)
        {
            Latitude = lat;
            Longitude = lng;
            Color = hexColor;
        }
    }
}
