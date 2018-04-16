using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(inxellSuporteService.Startup))]
namespace inxellSuporteService
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
