using Evolve.Portals.Framework;

namespace templatedemo.nestedtemplates
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Zusammenfassung f�r maintemplate.
	/// </summary>
	public class maintemplate : PortalTemplate
	{
    protected Evolve.Portals.Framework.RegionPlaceHolder HeaderPlaceHolder;

		private void Page_Load(object sender, System.EventArgs e)
		{
			// Hier Benutzercode zur Seiteninitialisierung einf�gen
		}

		#region Vom Web Form-Designer generierter Code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: Dieser Aufruf ist f�r den ASP.NET Web Form-Designer erforderlich.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		Erforderliche Methode f�r die Designerunterst�tzung
		///		Der Inhalt der Methode darf nicht mit dem Code-Editor ge�ndert werden.
		/// </summary>
		private void InitializeComponent()
		{
      this.Load += new System.EventHandler(this.Page_Load);

    }
		#endregion
	}
}
