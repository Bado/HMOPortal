Imports System.IO
Imports System.Data.SqlClient
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Globalization
Public Class staffinformation
    Inherits System.Web.UI.Page
    Private Property sitemap As String
    Dim OPTRRNEW As String
    Public DSQL As String
    Public syscodestr As String
    Public dOPTRRNEW As String
    Dim OPTRR As String
    Dim bvar As String
    Public bankcombo As String
    Dim RETCOMBO As String
    Dim bankcode As String
    Dim salute2 As String
    Dim dept2 As String
    Dim gradelvl2 As String
    Dim pos2 As String
    Dim cat2 As String
    Dim sex2 As String
    Dim bank2 As String
    Dim country2 As String
    Dim scode2 As String
    Dim accttype2 As String
    Dim taxvar As Boolean
    Dim NHFvar As Boolean
    Dim penvar As Boolean
    Dim univar As Boolean
    Dim susvar As Boolean
    Dim Overtimevar As Boolean
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim passw As String = CType(Session.Item("pass"), String)
        If (passw = String.Empty) Then
            Response.Redirect("~/Default.aspx")
        End If
       

    End Sub
    Private Sub MesgBox(ByVal sMessage As String)
        Dim msg As String
        msg = "<script language='javascript'>"
        msg += "alert('" & sMessage & "');"
        msg += "</script>"
        Response.Write(msg)
    End Sub
    Protected Sub Searchstaff_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Searchstaff.SelectedIndexChanged
        staffid.Text = Searchstaff.SelectedValue.ToString
        loadrec()
        surname.Focus()
    End Sub
    Private Sub loadrec()
        Me.statuspoint.Text = ""
        empimgg.ImageUrl = ""
        Session("opt11") = ""

        loadcombonew()
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                DSQL = "SELECT staffid,salute,SURNAME,OTHERNAMES,dept,gradelvl,pos,cat,tel,pension,natid,email,DATEH,sex,bank,country,acctid,scode,address,accttype,picture,picpath,TaxMan,PensionMan,union1,suspen,bankbranch,Overtime,ovtpercent,branch,pfa,taxregion,StopReason,nhf FROM STAFFTAB WHERE" & " staffid = '" & Me.staffid.Text.Trim & "'"
                Dim Cd As SqlCommand = CCNN.CreateCommand
                Cd.CommandText = DSQL
                Cd.CommandType = CommandType.Text
                CCNN.Open()
                Dim r As SqlDataReader = Cd.ExecuteReader
                If r.Read = True Then
                    Me.statuspoint.Text = "Loading Please Wait......."
                    Session("opt11") = "OLD"
                    If Not r.IsDBNull(11) Then email.Text = r(11).ToString
                    If Not r.IsDBNull(2) Then surname.Text = r(2)
                    If Not r.IsDBNull(18) Then address.Text = r(18)
                    If Not r.IsDBNull(12) Then Dateh.Text = r(12)
                    If Not r.IsDBNull(8) Then tel.Text = r(8)
                    If Not r.IsDBNull(3) Then othernames.Text = r(3)
                    If Not r.IsDBNull(9) Then pension.Text = r(9)
                    If Not r.IsDBNull(10) Then natid.Text = r(10)
                    If Not r.IsDBNull(16) Then acctid.Text = r(16)
                    If Not r.IsDBNull(21) Then picpath.Text = r(21)
                    If Not r.IsDBNull(17) Then scode.Text = r(17)
                    If r(22) = "True" Then
                        TaxMan.Checked = True
                    Else
                        TaxMan.Checked = False
                    End If
                    If r(23) = "True" Then
                        PensionMan.Checked = True
                    Else
                        PensionMan.Checked = False
                    End If
                    If r(24) = "True" Then
                        union1.Checked = True
                    Else
                        union1.Checked = False
                    End If
                    If r(25) = "True" Then
                        suspen.Checked = True
                    Else
                        suspen.Checked = False
                    End If
                    If r(27) = "True" Then
                        Overtime.Checked = True
                    Else
                        Overtime.Checked = False
                    End If
                    If r(33) = "True" Then
                        NHF.Checked = True
                    Else
                        NHF.Checked = False
                    End If

                    If Not r.IsDBNull(28) Then natid.Text = r(28)
                    If Not r.IsDBNull(16) Then acctid.Text = r(16)
                    If Not r.IsDBNull(21) Then picpath.Text = r(21)
                    If Not r.IsDBNull(17) Then scode.Text = r(17)
                    If Not r.IsDBNull(28) Then ovtpercent.Text = r(28)
                    If Not r.IsDBNull(32) Then StopReason.Text = r(32)

                    If Trim(r(13)) = "MALE" Then
                        Male.Checked = True
                    End If
                    If Trim(r(13)) = "FEMALE" Then
                        female.Checked = True
                    End If

                    If Not r.IsDBNull(21) Then empimgg.ImageUrl = r(21)
                    Session("branch2") = r(29)
                    Session("pfa2") = r(30)
                    Session("taxregion2") = r(31)

                    Session("salute2") = r(1)
                    Session("accttype2") = r(19)
                    Session("dept2") = r(4)
                    Session("bankbranch2") = r(26)
                    Session("gradelvl2") = r(5)
                    Session("pos2") = r(6)
                    Session("cat2") = r(7)
                    Session("sex2") = r(13)
                    Session("bank2") = r(14)
                    Session("country2") = r(15)
                    Session("scode2") = r(17)
                    Session("bankcombo2") = r(1)
                    loadcomboold()
                    Me.statuspoint.Text = "Record Exist"
                    staffid.Enabled = False
                    newold.Text = "Update Mode....."
                Else
                    staffid.Enabled = True
                    newold.Text = "New Record Mode....."
                    Session("opt11") = "NEW"
                    Dateh.Text = Now
                    ovtpercent.Text = 0
                    loadcombonew()
                    surname.Focus()
                    statuspoint.Text = "New Record......"
                    '    surname.Focus()
                End If
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        End Try
    End Sub
    Sub UpdateRecord()
        MesgBox("Update Mode")
        If female.Checked = True Then
            Session("sexx") = "FEMALE"
        End If
        If Male.Checked = True Then
            Session("sexx") = "MALE"
        End If
        Dim sexx2 = CType(Session.Item("sexx"), String)
        'acctid.Text = sexx
        taxvar = TaxMan.Checked
        penvar = PensionMan.Checked
        univar = union1.Checked
        susvar = suspen.Checked
        Overtimevar = Overtime.Checked
        NHFvar = NHF.Checked
        '   Dim date1 As Date = Me.Dateh.Text
        '  date1.ToString("d", DateTimeFormatInfo.InvariantInfo)
        Dim sid As String = staffid.Text
        Try
            ' MesgBox(date1) ," & " Bankbranch = '" & Bankbranch.SelectedValue.ToString & "' date1.ToString("d", DateTimeFormatInfo.InvariantInfo)   ,'" & Bankbranch.SelectedValue.ToString & "','" & 0.0 & "'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ,'" & ovtpercent.Text & "','" & branch.SelectedValue & "','" & pfa.SelectedValue & "','" & taxregion.SelectedValue & "','" & StopReason.Text & "'
            Me.statuspoint.Text = "Editing Record "
            Dim sumSQL As String = "UPDATE stafftab SET" _
          & " salute = '" & salute.SelectedValue.ToString & "',  " & " surname = '" & Me.surname.Text & "',  " & " acctid = '" & Me.acctid.Text & "',  " & " Taxman = '" & taxvar & "',  " & " Suspen = '" & susvar & "',  " & " Union1 = '" & univar & "',  " & " pensionman = '" & penvar & "',  " & " othernames = '" & Me.othernames.Text & "',  " & " dept = '" & dept.SelectedValue.ToString & "',  " & " scode = '" & scode.Text & "',  " & " accttype = '" & accttype.SelectedValue.ToString & "',  " & " gradelvl = '" & gradelvl.SelectedValue.ToString & "',  " & " pos = '" & pos.SelectedValue.ToString & "',  " & " cat = '" & cat.SelectedValue.ToString & "',  " & " country = '" & country.SelectedValue.ToString & "',  " & " tel = '" & Me.tel.Text & "', " & " email = '" & Me.email.Text & "', " & " pension = '" & Me.pension.Text & "', " & " natid = '" & Me.natid.Text & "', " & " Bank = '" & Bank.SelectedValue.ToString & "', " & " sex = '" & sexx2 & "', " & " Address = '" & Me.address.Text & "', " & " picpath = '" & Me.picpath.Text & "'," & " DATEH = '" & Me.Dateh.Text & "'," & " Bankbranch = '" & Bankbranch.SelectedValue.ToString & "'," & " Overtime = '" & Overtimevar & "'," & " NHF = '" & NHFvar & "'," & " ovtpercent = '" & ovtpercent.Text & "'," & " branch = '" & branch.SelectedValue & "'," & " pfa = '" & pfa.SelectedValue & "'," & " taxregion = '" & taxregion.SelectedValue & "'," & " StopReason = '" & StopReason.Text & "' " & " WHERE" & " staffid = '" & staffid.Text.Trim & "'"

            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumSQL
                Cd2.CommandType = CommandType.Text
                '  Cd2.Parameters.AddWithValue("@dsid", staffid.Text)
                CCNN.Open()
                Cd2.ExecuteNonQuery()
                Me.statuspoint.Text = "Record Updated Successfully"
                newold.Text = "Record Updated Successfully"
                MesgBox("Record Updated Successfullly")
                '   Response.Redirect("~/staffinformation.aspx")
                '  Clearrec()
                '   Me.staffid.Text = ""
                ' staffid.Focus()
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
            staffid.Enabled = False
            bsave.Enabled = False
        End Try
        staffid.Focus()
        SAVETOPAYSTRU2()
    End Sub
    Sub InsertRecord()
        MesgBox("Insert mode")

        If (picpath.Text = String.Empty) Then
            picpath.Text = "~/Images/spics.jpg"
        End If
        If female.Checked = True Then
            Session("sexx") = "FEMALE"
        End If
        If Male.Checked = True Then
            Session("sexx") = "MALE"
        End If
        Dim sexx2 = CType(Session.Item("sexx"), String)
        taxvar = TaxMan.Checked
        penvar = PensionMan.Checked
        univar = union1.Checked
        susvar = suspen.Checked
        Overtimevar = Overtime.Checked
        NHFvar = NHF.Checked
        Me.statuspoint.Text = "Adding New Record Staff Table"
        Dim sumStr As String = "INSERT INTO stafftab(staffid,salute,SURNAME,OTHERNAMES,dept,gradelvl,pos,cat,tel,pension,natid,email,DATEH,sex,bank,country,acctid,scode,address,accttype,picpath,TaxMan,PensionMan,union1,suspen,Overtime,NHF,Bankbranch,tax,ovtpercent,branch,pfa,taxregion,StopReason)VALUES('" & Me.staffid.Text & "','" & salute.SelectedValue.ToString & "','" & Me.surname.Text & "','" & Me.othernames.Text & "','" & dept.SelectedValue.ToString & "','" & gradelvl.SelectedValue.ToString & "','" & pos.SelectedValue.ToString & "','" & cat.SelectedValue.ToString & "','" & Me.tel.Text & "','" & Me.pension.Text & "','" & Me.natid.Text & "','" & Me.email.Text & "','" & Me.Dateh.Text & "',@sexx2,'" & Bank.SelectedValue.ToString & "','" & country.SelectedValue.ToString & "','" & Me.acctid.Text & "','" & scode.Text & "','" & Me.address.Text & "','" & accttype.SelectedValue.ToString & "','" & Me.picpath.Text & "',@taxvar,@penvar,@univar,@susvar,@Overtimevar,@NHFvar,'" & Bankbranch.SelectedValue.ToString & "','" & 0.0 & "','" & ovtpercent.Text & "','" & branch.SelectedValue & "','" & pfa.SelectedValue & "','" & taxregion.SelectedValue & "','" & StopReason.Text & "')"
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumStr
                Cd2.CommandType = CommandType.Text
                Cd2.Parameters.AddWithValue("@sexx2", sexx2)
                Cd2.Parameters.AddWithValue("@taxvar", taxvar)
                Cd2.Parameters.AddWithValue("@penvar", penvar)
                Cd2.Parameters.AddWithValue("@univar", univar)
                Cd2.Parameters.AddWithValue("@susvar", susvar)
                Cd2.Parameters.AddWithValue("@Overtimevar", Overtimevar)
                Cd2.Parameters.AddWithValue("@NHFvar", NHFvar)
                CCNN.Open()
                Cd2.ExecuteNonQuery()
                If Cd2.ExecuteNonQuery = 0 Then
                    newold.Text = "Record Not Saved - Check Input"
                End If
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
        End Try
        SAVETOTODATE()
        SAVETOPAYSTRU()
        SAVETOPAYSTRU2()

    End Sub
    Sub SAVETOTODATE()
        Me.statuspoint.Text = "Adding New Record Todate Table"
        Dim sumStr2 As String = "INSERT INTO todatetab(staffid,grosstd,taxtd,freetd,net,earnings,totaldeduc,fixedtax,taxpayable,freepay,totalallow,taxgross,Yearfreepay)VALUES('" & Me.staffid.Text & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "','" & 0 & "')"
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumStr2
                Cd2.CommandType = CommandType.Text
                CCNN.Open()
                Cd2.ExecuteNonQuery()
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
        End Try
    End Sub
    Sub SAVETOPAYSTRU()
        Me.statuspoint.Text = "Adding New Record Paystructure Table"
        Dim sumStr23 As String = "INSERT INTO Paystructure(staffid,item,amount) select '" & Me.staffid.Text & "',item,'" & 0 & "' from itemsetup where itemtype = 'A' or itemtype = 'D'"
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumStr23
                Cd2.CommandType = CommandType.Text
                CCNN.Open()
                Cd2.ExecuteNonQuery()
                MesgBox("Record Saved Successfullly")
                Me.statuspoint.Text = "Record Saved Successfullly"
                newold.Text = "Record Saved Successfully"
                '   Response.Redirect("~/staffinformation.aspx")
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
            staffid.Enabled = False
            bsave.Enabled = False
        End Try
    End Sub
    Sub SAVETOPAYSTRU2()
        'groupgrade(Grade,gdescr,item,amount) 
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim DSQL As String = "Select Grade,item,amount from groupgrade WHERE" _
                                      & " Grade = '" & gradelvl.SelectedValue.Trim & "' "

                Dim Cd As SqlCommand = CCNN.CreateCommand
                Cd.CommandText = DSQL
                Cd.CommandType = CommandType.Text
                CCNN.Open()
                Dim r As SqlDataReader = Cd.ExecuteReader
                If r.HasRows Then
                    Do While r.Read()
                        SAVETOPAYSTRUNOW(r(0), r(1), r(2))
                    Loop
                    r.Close()
                End If
            End Using

        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
            ' Me.statuspoint.Text = "Processing please wait, Updating Summary"
            ' CCNN.Close()
            '  MesgBox("Process Completed Successfully")
        End Try
        'dedu()
    End Sub
    'Grade,item,amount
    Sub SAVETOPAYSTRUNOW(ByVal GradeV As String, ByVal itemV As String, ByVal amountV As String)

        Dim sumStr23 As String = "UPDATE Paystructure SET" _
                & " amount = '" & amountV & "' " & " WHERE" & " item = '" & itemV & "' and staffid = '" & staffid.Text & "'"
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumStr23
                Cd2.CommandType = CommandType.Text
                CCNN.Open()
                Cd2.ExecuteNonQuery()
                newold.Text = "Record Saved Successfully"
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally
            staffid.Enabled = False
            bsave.Enabled = False
        End Try
    End Sub
    Sub Clearrec()
        Response.Redirect("~/staffinformation.aspx")
    End Sub
    Sub deleterec()
        Dim sumSQL As String = "DELETE FROM stafftab WHERE" & " staffid = '" & Me.staffid.Text & "'"

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)

                Dim Cd2 As SqlCommand = CCNN.CreateCommand
                Cd2.CommandText = sumSQL
                Cd2.CommandType = CommandType.Text
                CCNN.Open()
                Cd2.ExecuteNonQuery()
                Clearrec()
                Me.statuspoint.Text = "Record Deleted Successfully"
                staffid.Focus()
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        End Try
        staffid.Focus()

    End Sub
    Protected Sub bsave_Click(sender As Object, e As EventArgs) Handles bsave.Click
        '    If Not IsPostBack Then
        Dim checksave As String = CType(Session.Item("opt11"), String)
        '   MesgBox(checksave)
        If (Not staffid.Text = String.Empty) Then

            If checksave = "OLD" Then
                ' MesgBox("update")
                UpdateRecord()
                Session.Remove("salute2")
                Session.Remove("accttype2")
                Session.Remove("dept2")
                Session.Remove("gradelvl2")
                Session.Remove("pos2")
                Session.Remove("cat2")
                Session.Remove("bank2")
                Session.Remove("country2")
                Session.Remove("bankbranch2")
                Session.Remove("Overtimevar")
                Session.Remove("branch2")
                Session.Remove("pfa2")
                Session.Remove("taxregion2")
            End If
            If checksave = "NEW" Then
                ' MesgBox("Insert")
                InsertRecord()
                ' MesgBox("OUT")
                Session.Remove("salute2")
                Session.Remove("accttype2")
                Session.Remove("dept2")
                Session.Remove("gradelvl2")
                Session.Remove("pos2")
                Session.Remove("cat2")
                Session.Remove("bank2")
                Session.Remove("country2")
                Session.Remove("bankbranch2")
                Session.Remove("Overtimevar")
                Session.Remove("branch2")
                Session.Remove("pfa2")
                Session.Remove("taxregion2")
            End If
        End If
        '  End If
    End Sub
    Protected Sub bdelete_Click(sender As Object, e As EventArgs) Handles bdelete.Click
        If (Not staffid.Text = String.Empty) Then
            Utilities.CreateConfirmBox(Me.bdelete, "Are you sure you want to Delete Record")
            deleterec()
        End If
    End Sub
    Protected Sub bCancel_Click(sender As Object, e As EventArgs) Handles bCancel.Click
        Utilities.CreateConfirmBox(Me.bCancel, "Are you sure you want to Clear/Reset Page")
        Clearrec()
    End Sub
    Public Function CALLCODESTAB(ByVal scoddy As String, ByVal opt As String) As String
        Using CCNN As New SqlConnection(My.Settings.CnnString)
            Dim gsqlCODE As String = "SELECT code,codename,op1 FROM systemcode WHERE" & " CODE = '" & scoddy & "'" & " and " & " op1 = '" & opt & "'"
            Dim sumSQL As String = gsqlCODE
            Dim sumCd As SqlCommand = CCNN.CreateCommand
            sumCd.CommandText = sumSQL
            sumCd.CommandType = CommandType.Text
            CCNN.Open()
            Dim sumr As SqlDataReader = sumCd.ExecuteReader
            If sumr.Read = True Then
                scoddy = sumr(1)
            End If
            syscodestr = scoddy
            sumr.Close()
        End Using
        Return scoddy
        Return opt

    End Function

    Protected Sub staffid_TextChanged(sender As Object, e As EventArgs) Handles staffid.TextChanged
        If (Not staffid.Text = String.Empty) Then
            loadrec()
            surname.Focus()
        End If
    End Sub
    Private Sub salute_TextChanged(sender As Object, e As System.EventArgs) Handles salute.TextChanged
        Session("salute2") = salute.SelectedValue.ToString
    End Sub

    Private Sub dept_TextChanged(sender As Object, e As System.EventArgs) Handles dept.TextChanged
        Session("dept2") = dept.SelectedValue.ToString
    End Sub
    Private Sub gradelvl_TextChanged(sender As Object, e As System.EventArgs) Handles gradelvl.TextChanged
        Session("gradelvl2") = gradelvl.SelectedValue.ToString
    End Sub
    Private Sub pos_TextChanged(sender As Object, e As System.EventArgs) Handles pos.TextChanged
        Session("pos2") = pos.SelectedValue.ToString
    End Sub
    Private Sub cat_TextChanged(sender As Object, e As System.EventArgs) Handles cat.TextChanged
        Session("cat2") = cat.SelectedValue.ToString
    End Sub

    Private Sub accttype_TextChanged(sender As Object, e As System.EventArgs) Handles accttype.TextChanged
        Session("accttype2") = accttype.SelectedValue.ToString
    End Sub
    Private Sub country_TextChanged(sender As Object, e As System.EventArgs) Handles country.TextChanged
        Session("country2") = country.SelectedValue.ToString
    End Sub
    Private Sub Bankbranch_TextChanged(sender As Object, e As EventArgs) Handles Bankbranch.TextChanged
        Session("bankbranch2") = Bankbranch.SelectedValue.ToString
    End Sub

    Private Sub branch_TextChanged(sender As Object, e As System.EventArgs) Handles branch.TextChanged
        Session("branch2") = branch.SelectedValue.ToString
    End Sub
    Private Sub pfa_TextChanged(sender As Object, e As System.EventArgs) Handles pfa.TextChanged
        Session("pfa2") = cat.SelectedValue.ToString
    End Sub
    Private Sub taxregion_TextChanged(sender As Object, e As EventArgs) Handles taxregion.TextChanged
        Session("taxregion2") = taxregion.SelectedValue.ToString
    End Sub



    Private Sub loadcombonew()

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)

                '   Session("branch2") = r(29)
                '   Session("pfa2") = r(30)
                '   Session("taxregion2") = r(31)
                '********  BRANCHE  
                Dim deptSQL46 As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F18" & "'"
                Dim da46 As New SqlDataAdapter(deptSQL46, CCNN)
                Dim ds46 As New DataSet
                da46.Fill(ds46, "systemcode")
                With branch
                    .DataSource = ds46.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                    '       .Items.Insert(0, "--Select--")
                End With
                '********  PFA  
                Dim deptSQL45 As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F19" & "'"
                Dim da45 As New SqlDataAdapter(deptSQL45, CCNN)
                Dim ds45 As New DataSet
                da45.Fill(ds45, "systemcode")
                With pfa
                    .DataSource = ds45.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                    '       .Items.Insert(0, "--Select--")
                End With
                '********  taxregion2  
                Dim deptSQL451 As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F20" & "'"
                Dim da451 As New SqlDataAdapter(deptSQL451, CCNN)
                Dim ds451 As New DataSet
                da451.Fill(ds451, "systemcode")
                With taxregion
                    .DataSource = ds451.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                    '       .Items.Insert(0, "--Select--")
                End With

                '********  Department  
                Dim deptSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F5" & "'"
                Dim da As New SqlDataAdapter(deptSQL, CCNN)
                Dim ds As New DataSet
                da.Fill(ds, "systemcode")
                With dept
                    .DataSource = ds.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                    '       .Items.Insert(0, "--Select--")
                End With
                '********  pos  
                Dim posSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                              & " OP1= '" & "F4" & "'"
                Dim da2 As New SqlDataAdapter(posSQL, CCNN)
                Dim ds2 As New DataSet
                da2.Fill(ds2, "systemcode")
                With pos
                    .DataSource = ds2.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
                '********  Bank  
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                             & " OP1= '" & "F9" & "'"
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With Bank
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With

                Dim ctSQL As String = "SELECT country,code FROM country"
                Dim da8 As New SqlDataAdapter(ctSQL, CCNN)
                Dim ds8 As New DataSet
                da8.Fill(ds8, "country")
                With country
                    .DataSource = ds8.Tables("country")
                    .DataTextField = "country"
                    .DataValueField = "code"
                    .DataBind()
                End With

                '********  GRADE  
                Dim GRADESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                              & " OP1= '" & "F6" & "'"
                Dim da5 As New SqlDataAdapter(GRADESQL, CCNN)
                Dim ds5 As New DataSet
                da5.Fill(ds5, "systemcode")
                With gradelvl
                    .DataSource = ds5.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
                '********  cat  
                Dim STYPESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                              & " OP1= '" & "F8" & "'"
                Dim da6 As New SqlDataAdapter(STYPESQL, CCNN)
                Dim ds6 As New DataSet
                da6.Fill(ds6, "systemcode")
                With cat
                    .DataSource = ds6.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
                '********  ,bankbranch  
                '   Dim bankbranch22 = CType(Session.Item("bankbranch2"), String)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " OP1 = '" & "F12" & "' "
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With Bankbranch
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub

    Sub loadcomboold()
        '  Retrieving from System Code

        '   MesgBox(dept22)
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                '********  Department 
                Dim dept22 = CType(Session.Item("dept2"), String)
                Dim deptSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                         & " code = '" & dept22 & "' AND OP1 = '" & "F5" & "' "
                ' Dim deptSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                '                           & " OP1 = '" & "F5" & "' "
                Dim da As New SqlDataAdapter(deptSQL, CCNN)
                Dim ds As New DataSet
                da.Fill(ds, "systemcode")
                With dept
                    .DataSource = ds.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim saluteSQL As String = "SELECT salute FROM stafftab WHERE" _
                                                  & " staffid = '" & Me.staffid.Text & "'"
                Dim sa3 As New SqlDataAdapter(saluteSQL, CCNN)
                Dim ss3 As New DataSet
                sa3.Fill(ss3, "stafftab")
                With salute
                    .DataSource = ss3.Tables("stafftab")
                    .DataTextField = "salute"
                    .DataValueField = "salute"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim saluteSQL2 As String = "SELECT accttype FROM stafftab WHERE" _
                                                     & " staffid = '" & Me.staffid.Text & "'"

                Dim sa32 As New SqlDataAdapter(saluteSQL2, CCNN)
                Dim ss32 As New DataSet
                sa32.Fill(ss32, "stafftab")
                With accttype
                    .DataSource = ss32.Tables("stafftab")
                    .DataTextField = "accttype"
                    .DataValueField = "accttype"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bank22 = CType(Session.Item("bank2"), String)
                ''  MesgBox(bank22)
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                                              & " code = '" & bank22 & "' AND OP1 = '" & "F9" & "' "
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With Bank
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim pos22 = CType(Session.Item("pos2"), String)
                Dim posSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " code = '" & pos22 & "' AND OP1 = '" & "F4" & "' "
                Dim da2 As New SqlDataAdapter(posSQL, CCNN)
                Dim ds2 As New DataSet
                da2.Fill(ds2, "systemcode")
                With pos
                    .DataSource = ds2.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim country22 = CType(Session.Item("country2"), String)
                Dim ctSQL As String = "SELECT country,code FROM country where" _
                                      & " code = '" & country22 & "'"
                Dim da8 As New SqlDataAdapter(ctSQL, CCNN)
                Dim ds8 As New DataSet
                da8.Fill(ds8, "country")
                With country
                    .DataSource = ds8.Tables("country")
                    .DataTextField = "country"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim gradelvl22 = CType(Session.Item("gradelvl2"), String)
                Dim GRADESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                              & " code = '" & gradelvl22 & "' AND OP1 = '" & "F6" & "' "
                Dim da5 As New SqlDataAdapter(GRADESQL, CCNN)
                Dim ds5 As New DataSet
                da5.Fill(ds5, "systemcode")
                With gradelvl
                    .DataSource = ds5.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim cat22 = CType(Session.Item("cat2"), String)
                Dim STYPESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                               & " code = '" & cat22 & "' AND OP1 = '" & "F8" & "' "
                Dim da6 As New SqlDataAdapter(STYPESQL, CCNN)
                Dim ds6 As New DataSet
                da6.Fill(ds6, "systemcode")
                With cat
                    .DataSource = ds6.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankbranch22 = CType(Session.Item("bankbranch2"), String)
                '  MesgBox(bankbranch22)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " code = '" & bankbranch22 & "' AND OP1 = '" & "F12" & "' "
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With Bankbranch
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try


        '   Session("branch2") = r(29)
        '   Session("pfa2") = r(30)
        '   Session("taxregion2") = r(31)
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankbranch223 = CType(Session.Item("branch2"), String)
                '  MesgBox(bankbranch22)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " code = '" & bankbranch223 & "' AND OP1 = '" & "F18" & "' "
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With branch
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankbranch224 = CType(Session.Item("pfa2"), String)
                '  MesgBox(bankbranch22)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " code = '" & bankbranch224 & "' AND OP1 = '" & "F19" & "' "
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With pfa
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim taxregion22 = CType(Session.Item("taxregion2"), String)
                '  MesgBox(bankbranch22)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " code = '" & taxregion22 & "' AND OP1 = '" & "F20" & "' "
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With taxregion
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                '********  Department  
                Dim deptSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F5" & "'"
                Dim da As New SqlDataAdapter(deptSQL, CCNN)
                Dim ds As New DataSet
                da.Fill(ds, "systemcode")
                With dept
                    .DataSource = ds.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                '********  Department  
                Dim deptSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                          & " OP1= '" & "F4" & "'"
                Dim da As New SqlDataAdapter(deptSQL, CCNN)
                Dim ds As New DataSet
                da.Fill(ds, "systemcode")
                With pos
                    .DataSource = ds.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

    End Sub


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles pfabtn.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim STYPESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                                     & " OP1= '" & "F8" & "'"
                Dim da6 As New SqlDataAdapter(STYPESQL, CCNN)
                Dim ds6 As New DataSet
                da6.Fill(ds6, "systemcode")
                With cat
                    .DataSource = ds6.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim GRADESQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                                     & " OP1= '" & "F6" & "'"
                Dim da5 As New SqlDataAdapter(GRADESQL, CCNN)
                Dim ds5 As New DataSet
                da5.Fill(ds5, "systemcode")
                With gradelvl
                    .DataSource = ds5.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try

    End Sub
    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankbranch22 = CType(Session.Item("bankbranch2"), String)
                '  MesgBox(bankbranch22)
                Dim STYPESQL4 As String = "SELECT codename,code FROM systemcode WHERE" _
                                                & " OP1 = '" & "F12" & "'"
                Dim da64 As New SqlDataAdapter(STYPESQL4, CCNN)
                Dim ds64 As New DataSet
                da64.Fill(ds64, "systemcode")
                With Bankbranch
                    .DataSource = ds64.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim country22 = CType(Session.Item("country2"), String)
                Dim ctSQL As String = "SELECT country,code FROM country"
                Dim da8 As New SqlDataAdapter(ctSQL, CCNN)
                Dim ds8 As New DataSet
                da8.Fill(ds8, "country")
                With country
                    .DataSource = ds8.Tables("country")
                    .DataTextField = "country"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub
    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        With salute
            .Items.Clear()
            .Items.Insert(0, "Mr")
            .Items.Insert(1, "Mrs")
            .Items.Insert(2, "Doc")
            .Items.Insert(3, "Prof")
            .Items.Insert(4, "Chief")
            .Items.Insert(5, "Engr")
            .Items.Insert(6, "Lawyer")
        End With
    End Sub
    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        With accttype
            .Items.Clear()
            .Items.Insert(0, "CURRENT")
            .Items.Insert(1, "SAVINGS")
        End With
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                           & " OP1= '" & "F9" & "'"
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With Bank
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub
    Protected Sub uploadpic_Click(sender As Object, e As EventArgs) Handles uploadpic.Click
        If IsPostBack Then
            If imgUpload.HasFile Then
                Try
                    Utilities.CreateConfirmBox(Me.uploadpic, _
        "Are you sure you want to Attach this Picture ?")
                    Dim filename As String = Path.GetFileName(imgUpload.FileName)
                    imgUpload.SaveAs(Server.MapPath("~/images/") & filename)
                    sitemap = "~/images/" & filename
                    picpath.Text = sitemap()
                    empimgg.ImageUrl = sitemap()
                Catch ex As Exception
                    statuspoint.Text = ex.Message
                    ' statuspoint.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message
                End Try
            End If
        End If
    End Sub


    
    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                           & " OP1= '" & "F18" & "'"
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With branch
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                           & " OP1= '" & "F20" & "'"
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With taxregion
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub

    Protected Sub cat_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cat.SelectedIndexChanged

    End Sub

    Protected Sub pfabtn0_Click(sender As Object, e As EventArgs) Handles pfabtn0.Click
        Try
            Using CCNN As New SqlConnection(My.Settings.CnnString)
                Dim bankSQL As String = "SELECT codename,code FROM systemcode WHERE" _
                                           & " OP1= '" & "F19" & "'"
                Dim da3 As New SqlDataAdapter(bankSQL, CCNN)
                Dim ds3 As New DataSet
                da3.Fill(ds3, "systemcode")
                With pfa
                    .DataSource = ds3.Tables("systemcode")
                    .DataTextField = "codename"
                    .DataValueField = "code"
                    .DataBind()
                End With
            End Using
        Catch ex As Exception
            Me.statuspoint.Text = ex.Message
        Finally

        End Try
    End Sub

    'Protected Sub bCancel0_Click(sender As Object, e As EventArgs) Handles bCancel0.Click
    '    Me.statuspoint.Text = "Adding New Record"
    '    Dim sumStr As String = "INSERT INTO kintab(staffid) VALUES('" & Me.staffid.Text & "')"

    '    Try
    '        Using CCNN As New SqlConnection(My.Settings.CnnString)
    '            Dim Cd2 As SqlCommand = CCNN.CreateCommand
    '            Cd2.CommandText = sumStr
    '            Cd2.CommandType = CommandType.Text
    '            CCNN.Open()
    '            Cd2.ExecuteNonQuery()
    '            Me.statuspoint.Text = "Record Added Successfully"
    '        End Using
    '    Catch ex As Exception
    '        Me.statuspoint.Text = ex.Message
    '    Finally
    '    End Try
    'End Sub

    Protected Sub bCancel1_Click(sender As Object, e As EventArgs) Handles bCancel1.Click

    End Sub

    Protected Sub surname_TextChanged(sender As Object, e As EventArgs) Handles surname.TextChanged

    End Sub
End Class