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
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\antonio\source\repos\CRUDWebApplication\App_Data\AlunosBD.mdf;Integrated Security=True");
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
        void LimparCampos()
        {
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("insert into alunos (nome, idade, serie, portugues, matematica, ciencias, artes) values ('" + TextBox6.Text + "', '" + int.Parse(TextBox7.Text) + "', '" + int.Parse(TextBox8.Text) + "', '" + int.Parse(TextBox2.Text) + "', '" + int.Parse(TextBox3.Text) + "', '" + int.Parse(TextBox4.Text) + "', '" + int.Parse(TextBox5.Text) + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Adicionado Com sucesso');", true);
            LimparCampos();
            CarregarAlunos();

        }

        protected void linkDelete_Click(object sender, EventArgs e)
        {
            int alunoID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            
            con.Open();
            SqlCommand comm = new SqlCommand("delete from alunos where alunoid = '"+ alunoID +"' ", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Aluno deletado com sucesso');", true);
            LimparCampos();
            CarregarAlunos();
        }
    }
}