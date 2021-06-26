using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDWebApplication
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\antonio\Documents\projetofinal.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarAlunos();
            }

        }

        void CarregarAlunos()
        {
            SqlCommand comm = new SqlCommand("select * from alunos", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update alunos set Português = '"+ int.Parse(TextBox2.Text) + "', Matemática = '" + int.Parse(TextBox3.Text) + "',  Ciências = '" + int.Parse(TextBox4.Text) + "', Artes = '" + int.Parse(TextBox5.Text) + "' where id = '" + int.Parse(TextBox1.Text)+ "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Adicionado Com sucesso');", true);
            CarregarAlunos();

        }

        
    }
}