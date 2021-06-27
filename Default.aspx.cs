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
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\antonio\source\repos\CRUDWebApplication\App_Data\EscolaBD.mdf;Integrated Security=True");
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
            SqlCommand comm = new SqlCommand("insert into alunos (Nome, Idade, Série) values ('" + TextBox2.Text + "','" + int.Parse(TextBox3.Text)+ "', '" + int.Parse(DropDownList1.Text) + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Adicionado Com sucesso');", true);

            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            
            CarregarAlunos();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete from alunos where AlunoID = '" + int.Parse(TextBox4.Text) + "' ", con);
            comm.ExecuteNonQuery();
            con.Close();
            TextBox4.Text = string.Empty;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deletado Com sucesso');", true);

            CarregarAlunos();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update alunos set Nome = '" + TextBox6.Text + "', idade = '" + int.Parse(TextBox7.Text) + "' , Série = '" + int.Parse(DropDownList2.Text) + "' where AlunoID = '" + int.Parse(TextBox5.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            DropDownList2.SelectedIndex = 0;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deletado Com sucesso');", true);

            CarregarAlunos();
        }
    }
}