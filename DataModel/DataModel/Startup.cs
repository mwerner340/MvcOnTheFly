using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DataModel.Startup))]
namespace DataModel
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
