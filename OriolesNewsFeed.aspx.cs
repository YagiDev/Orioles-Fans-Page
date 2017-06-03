using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateRssFeed();
        }

    }

    private void PopulateRssFeed()
    {
        string RssFeedUrl = "http://m.orioles.mlb.com/partnerxml/gen/news/rss/bal.xml";
        List<Feeds> feeds = new List<Feeds>();
        try
        {
            XDocument xDoc = new XDocument();
            xDoc = XDocument.Load(RssFeedUrl);
            var items = (from x in xDoc.Descendants("item")
                         select new
                         {
                             title = x.Element("title").Value,
                             link = x.Element("link").Value,
                             pubDate = x.Element("pubDate").Value,
                             description = x.Element("description").Value,
                             guid = x.Element("guid").Value
                         });
            if (items != null)
            {
                foreach (var i in items)
                {
                    Feeds f = new Feeds
                    {
                        Title = i.title,
                        Link = i.link,
                        PublishDate = i.pubDate,
                        Description = i.description,
                        Guid = i.guid
                    };

                    feeds.Add(f);
                }
            }

            gvRss.DataSource = feeds;
            gvRss.DataBind();
        }
        catch (Exception ex)
        {
            throw;
        }
    }


}
