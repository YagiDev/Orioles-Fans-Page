using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSites.Startup))]
namespace WebSites
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
