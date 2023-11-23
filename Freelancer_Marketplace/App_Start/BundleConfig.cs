using System.Web;
using System.Web.Optimization;

namespace Freelancer_Marketplace
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/Logincss").Include(
                "~/Content/assets/vendor/fonts/fontawesome.css",
                "~/Content/assets/vendor/fonts/tabler-icons.css",
                "~/Content/assets/vendor/fonts/flag-icons.css",
                "~/Content/assets/vendor/css/rtl/core.css",
                "~/Content/assets/vendor/css/rtl/theme-default.css",
                "~/Content/assets/css/demo.css",
                "~/Content/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css",
                "~/Content/assets/vendor/libs/node-waves/node-waves.css",
                "~/Content/assets/vendor/libs/typeahead-js/typeahead.css",
                "~/Content/assets/vendor/libs/formvalidation/dist/css/formValidation.min.css",
                "~/Content/assets/vendor/css/pages/page-auth.css"
            ));
            bundles.Add(new Bundle("~/bundles/script1").Include(
                    "~/Content/assets/vendor/js/helpers.js",
                    "~/Content/assets/vendor/js/template-customizer.js",
                    "~/Content/assets/js/config.js"));
            bundles.Add(new Bundle("~/bundles/Loginscript2").Include(
                    "~/Content/assets/vendor/libs/jquery/jquery.js",
                    "~/Content/assets/vendor/libs/popper/popper.js",
                    "~/Content/assets/vendor/js/bootstrap.js",
                    "~/Content/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js",
                    "~/Content/assets/vendor/libs/node-waves/node-waves.js",
                    "~/Content/assets/vendor/libs/hammer/hammer.js",
                    "~/Content/assets/vendor/libs/i18n/i18n.js",
                    "~/Content/assets/vendor/libs/typeahead-js/typeahead.js",
                    "~/Content/assets/vendor/js/menu.js",
                    "~/Content/assets/vendor/libs/formvalidation/dist/js/FormValidation.min.js",
                    "~/Content/assets/vendor/libs/formvalidation/dist/js/plugins/Bootstrap5.min.js",
                    "~/Content/assets/vendor/libs/formvalidation/dist/js/plugins/AutoFocus.min.js",
                    "~/Content/assets/js/main.js",
                    "~/Content/assets/js/pages-auth.js"
                    ));
            bundles.Add(new StyleBundle("~/Content/indexcss").Include(
                "~/Content/assets/vendor/fonts/fontawesome.css",
                "~/Content/assets/vendor/fonts/tabler-icons.css",
                "~/Content/assets/vendor/fonts/flag-icons.css",
                "~/Content/assets/vendor/css/rtl/core.css",
                "~/Content/assets/vendor/css/rtl/theme-default.css",
                "~/Content/assets/css/demo.css",
                "~/Content/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css",
                "~/Content/assets/vendor/libs/node-waves/node-waves.css",
                "~/Content/assets/vendor/libs/typeahead-js/typeahead.css",
                "~/Content/assets/vendor/libs/apex-charts/apex-charts.css",
                "~/Content/assets/vendor/libs/swiper/swiper.css",
                "~/Content/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css",
                "~/Content/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css",
                "~/Content/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css",
                "~/Content/assets/vendor/css/pages/cards-advance.css"
                ));
            bundles.Add(new Bundle("~/bundles/indexscript2").Include(
                    "~/Content/assets/vendor/libs/jquery/jquery.js",
                    "~/Content/assets/vendor/libs/popper/popper.js",
                    "~/Content/assets/vendor/js/bootstrap.js",
                    "~/Content/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js",
                    "~/Content/assets/vendor/libs/node-waves/node-waves.js",
                    "~/Content/assets/vendor/libs/hammer/hammer.js",
                    "~/Content/assets/vendor/libs/i18n/i18n.js",
                    "~/Content/assets/vendor/libs/typeahead-js/typeahead.js",
                    "~/Content/assets/vendor/js/menu.js",
                    "~/Content/assets/vendor/libs/apex-charts/apexcharts.js",
                    "~/Content/assets/vendor/libs/swiper/swiper.js",
                    "~/Content/assets/vendor/libs/datatables/jquery.dataTables.js",
                    "~/Content/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js",
                    "~/Content/assets/vendor/libs/datatables-responsive/datatables.responsive.js",
                    "~/Content/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.js",
                    "~/Content/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.js",
                    "~/Content/assets/vendor/libs/chartjs/chartjs.js",
                    "~/Content/assets/js/charts-chartjs.js",
                    "~/Content/assets/js/main.js",
                    "~/Content/assets/js/dashboards-analytics.js"
                    ));
        }
    }
}
