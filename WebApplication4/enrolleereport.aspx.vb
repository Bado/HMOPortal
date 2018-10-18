Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Imports System.Web.UI.HtmlControls
Imports System.IO
Imports System.Text
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html.simpleparser

Public Class enrolleereport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim passw As String = CType(Session.Item("pass"), String)
        If (passw = String.Empty) Then
            Response.Redirect("~/Default.aspx")
        End If

        If Not Page.IsPostBack Then
            Session("gstring1") = "Select enrolleeid,Surname,Firstname,othernames,dofb,tel,email,dregister,sdate,edate,active,NHIS,ogaid,Hcpid,drelated as Dependant,sectortype,ugplan FROM enrolleetab"
            ' Dim gstring2 As String = CType(Session.Item("gstring1"), String)
            BindEmpGrid()
        End If
    End Sub
   
    Protected Sub BindEmpGrid()
        Dim gstring2 As String = CType(Session.Item("gstring1"), String)
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim cmd As New SqlCommand(gstring2, CCNN)
                Dim dt As New DataTable()
                Dim adp As New SqlDataAdapter(cmd)
                adp.Fill(dt)
                authocodegrid.DataSource = dt
                authocodegrid.DataBind()
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        End Try ',,,,,,,,,,,,,,,,,, 

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If all.Checked = True Then
                Session("gstring1") = "Select enrolleeid,Surname,Firstname,othernames,dofb,tel,email,dregister,sdate,edate,active,NHIS,ogaid,Hcpid,drelated as Dependant,sectortype,ugplan FROM enrolleetab"
            Else
                Session("gstring1") = "Select enrolleeid,Surname,Firstname,othernames,dofb,tel,email,dregister,sdate,edate,active,NHIS,ogaid,Hcpid,drelated as Dependant,sectortype,ugplan FROM enrolleetab where ogaid ='" & RTrim(hcplookup.SelectedValue) & "'"
            End If



            Using sw As New StringWriter()
                Using hw As New HtmlTextWriter(sw)
                    'To Export all pages
                    authocodegrid.AllowPaging = False
                    Me.BindEmpGrid()

                    authocodegrid.RenderControl(hw)
                    Dim sr As New StringReader(sw.ToString())
                    Dim pdfDoc As New Document(PageSize.A2, 10.0F, 10.0F, 10.0F, 0.0F)
                    Dim htmlparser As New HTMLWorker(pdfDoc)
                    PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
                    pdfDoc.Open()
                    htmlparser.Parse(sr)
                    pdfDoc.Close()

                    Response.ContentType = "application/pdf"
                    Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf")
                    Response.Cache.SetCacheability(HttpCacheability.NoCache)
                    Response.Write(pdfDoc)
                    Response.[End]()
                End Using
            End Using
        Catch ex As Exception
        End Try
    End Sub



    Protected Sub hcplookup_SelectedIndexChanged(sender As Object, e As EventArgs) Handles hcplookup.SelectedIndexChanged
       
    End Sub
End Class