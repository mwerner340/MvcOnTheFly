using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCFLY.Startup))]
namespace MVCFLY
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
