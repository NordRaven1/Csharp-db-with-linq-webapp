using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using System.Data.Linq.Mapping;

namespace DiskManagementEntities
{
    public class DiskClass
    {
        private string diskPlace;
        private string diskMedium;
        private string diskPublisher;
        private string diskAlbum;
        private string diskGenre;
        private string diskPerformer;
        private string diskLabel;
        private int diskSongs;
        private decimal diskPrice;
        private bool diskHandover;


        public int ID
        {
            get;
            set;
        }

        public string Place
        {
            get
            {
                return this.diskPlace;
            }
            set
            {
                this.diskPlace = value;
            }
        }

        public string Medium
        {
            get
            {
                return this.diskMedium;
            }
            set
            {
                this.diskMedium = value;
            }
        }

        public string Publisher
        {
            get
            {
                return this.diskPublisher;
            }
            set
            {
                this.diskPublisher = value;
            }
        }

        public string Album
        {
            get
            {
                return this.diskAlbum;
            }
            set
            {
                if (value == null)
                    this.diskAlbum = "";
                else
                    if (value.Length > 50)
                    this.diskAlbum = value.Substring(0, 50);
                else
                    this.diskAlbum = value;
            }
        }
        public string Genre
        {
            get
            {
                return this.diskGenre;
            }
            set
            {
                if (value == null)
                    this.diskGenre = "";
                else
                    if (value.Length > 70)
                    this.diskGenre = value.Substring(0, 70);
                else
                    this.diskGenre = value;
            }
        }

        public string Performer
        {
            get
            {
                return this.diskPerformer;
            }
            set
            {
                if (value == null)
                    this.diskPerformer = "";
                else
                    if (value.Length > 60)
                    this.diskPerformer = value.Substring(0, 60);
                else
                    this.diskPerformer = value;
            }
        }

        public string Label
        {
            get
            {
                return this.diskLabel;
            }
            set
            {
                if (value == null)
                    this.diskLabel = "";
                else
                    if (value.Length > 60)
                    this.diskLabel = value.Substring(0, 60);
                else
                    this.diskLabel = value;
            }
        }

        public int Songs
        {
            get
            {
                return this.diskSongs;
            }
            set
            {
                if (value < 0)
                    this.diskSongs = 0;
                else
                    this.diskSongs = value;
            }
        }

        public decimal Price
        {
            get
            {
                return this.diskPrice;
            }
            set
            {
                if (value < 0)
                    this.diskPrice = 0;
                else
                    this.diskPrice = value;
            }
        }

        public bool HandOver
        {
            get
            {
                return this.diskHandover;
            }
            set
            {
                this.diskHandover = value;
            }
        }

        public DiskClass()
        {
            
        }

        public DiskClass(string placeID, string mediumID, string publisherID, 
            string album, string genre, string performer, string label,
            int songs, decimal price, bool handover)
        {
            this.diskPlace = placeID;
            this.diskMedium = mediumID;
            this.diskPublisher = publisherID;
            this.diskAlbum = album;
            this.diskGenre = genre;
            this.diskPerformer = performer;
            this.diskLabel = label;
            this.diskSongs = songs;
            this.diskPrice = price;
            this.diskHandover = handover;
        }
    }
}
