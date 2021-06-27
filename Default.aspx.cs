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
            SqlCommand comm = new SqlCommand("select a.alunoid 'ID do Aluno(a)', a.nome 'Nome', a.idade 'Idade', a.serie 'Série' from alunos a", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("insert into alunos (nome, idade, serie) values ('" + TextBox2.Text + "','" + int.Parse(TextBox3.Text)+ "', '" + int.Parse(DropDownList1.Text) + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Aluno adicionado com sucesso');", true);

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
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Aluno(a) deletado Com sucesso');", true);

            CarregarAlunos();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update alunos set Nome = '" + TextBox6.Text + "', idade = '" + int.Parse(TextBox7.Text) + "' , serie = '" + int.Parse(DropDownList2.Text) + "' where AlunoID = '" + int.Parse(TextBox5.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            DropDownList2.SelectedIndex = 0;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Aluno(a) alterado com sucesso');", true);

            CarregarAlunos();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlCommand comm = new SqlCommand();

            //Adiciona nota de Matematica se o campo estiver preenchido
            if (TextBox9.Text != null)
            {
                con.Open();
                comm = new SqlCommand("update notas set nota = '" + int.Parse(TextBox9.Text) + "'  where disciplinaid = 1 ", con);
                comm.ExecuteNonQuery();
                con.Close();
            }

            //Adiciona Nota de portugues se o campo estiver preenchido
            if (TextBox10.Text != null)
            {
                con.Open();
                comm = new SqlCommand("update notas set nota = '" + int.Parse(TextBox10.Text) + "'  where disciplinaid = 2 ", con);
                comm.ExecuteNonQuery();
                con.Close();
            }
            
            //Adiciona Nota de Ciências se o campo estiver preenchido
            if (TextBox11.Text != null)
            {
                con.Open();
                comm = new SqlCommand("update notas set nota = '" + int.Parse(TextBox11.Text) + "'  where disciplinaid = 3 ", con);
                comm.ExecuteNonQuery();
                con.Close();
            }

            //Adiciona Nota de Artes se o campo estiver preenchido
            if (TextBox12.Text != null)
            {
                con.Open();
                comm = new SqlCommand("update notas set nota = '" + int.Parse(TextBox12.Text) + "'  where disciplinaid = 4 ", con);
                comm.ExecuteNonQuery();
                con.Close();
            }

            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox12.Text = string.Empty;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Notas Adicionadas com sucesso');", true);
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select  a.Nome 'Aluno', d.disciplina 'Matemática', n.nota 'Nota' from alunos a, notas n, disciplinas d where a.alunoid = n.alunoid and n.disciplinaid = d.disciplinaid and a.alunoid = '" + int.Parse(TextBox13.Text) + "' ", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

            TextBox13.Text = string.Empty;
        }
    }
}