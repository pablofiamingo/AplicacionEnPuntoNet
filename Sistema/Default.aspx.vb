Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports System.Globalization
Imports System.Net.Mail


Public Class _Default
    Inherits System.Web.UI.Page

    Public x As Integer
    Public connectionstring As String = ConfigurationManager.ConnectionStrings(ConfigurationManager.AppSettings("conexion")).ToString()


    Public EmailActivo As String = ConfigurationManager.AppSettings("EmailActivo")
    Public Email As String = ConfigurationManager.AppSettings(EmailActivo)
    Public EmailPass As String = ConfigurationManager.AppSettings(EmailActivo & "Pass")

    Dim con As New SqlConnection(connectionstring)

    Function EnviarMail(ByVal EmailDestino As String, ByVal Subjet As String, ByVal Mensaje As String) As String
        Dim Resultado As String = "OK"
        Dim SmtpServer As New SmtpClient()
        Dim mail As New MailMessage()
        Try
            mail = New MailMessage()

            mail.From = New MailAddress(Email, "LJT Construcciones")
            mail.To.Add(EmailDestino)
            mail.Subject = Subjet
            mail.Body = Mensaje
            mail.IsBodyHtml = False
            mail.Priority = MailPriority.Normal

            If EmailActivo = "EmailGmail" Then
                SmtpServer.Credentials = New Net.NetworkCredential(Email, EmailPass)
                SmtpServer.Host = "smtp.gmail.com"
                SmtpServer.Port = 587
                SmtpServer.EnableSsl = True
            Else
                SmtpServer.Credentials = New Net.NetworkCredential(Email, EmailPass)
                SmtpServer.Host = "dtcwin033.ferozo.com"
                SmtpServer.Port = 465
                SmtpServer.EnableSsl = True
            End If

            SmtpServer.Send(mail)
        Catch 'x As Exception
            Resultado = Err.Description
        End Try
        mail.Dispose()
        Return Resultado
    End Function

    Protected Sub bPortada_Click(sender As Object, e As ImageClickEventArgs) Handles bPortada.Click
        pPortada.Visible = False
        pLoginMenu.Visible = True
    End Sub

    Protected Sub bVolverLogin_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLogin.Click
        pLogin.Visible = False
        pPortada.Visible = True
    End Sub

    Protected Sub bRegistrarseVolverLoginU_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarseVolverLoginU.Click
        pLoginMenu.Visible = False
        pPortada.Visible = True

    End Sub

    Protected Sub bRegistrarse_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarse.Click
        pRegistrarse.Visible = True
        pLoginMenu.Visible = False
    End Sub

    Protected Sub bRegistrarseU_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarseU.Click
        Dim ok As Boolean = True

        limpiarErroresRegistroU()

        tNombreU.Text = tNombreU.Text.Trim.ToUpper
        If comprobar(tNombreU.Text) = False Then
            ArreglarCampo(tNombreU)
            ok = False
            lENombreU.Text = "El nombre contenía carácteres inválidos. Fueron removidos."
            lENombreU.Visible = True
        End If

        tApellidoU.Text = tApellidoU.Text.Trim.ToUpper
        If comprobar(tApellidoU.Text) = False Then
            ArreglarCampo(tApellidoU)
            ok = False
            lEApellidoU.Text = "El apellido contenía carácteres inválidos. Fueron removidos."
            lEApellidoU.Visible = True
        End If

        tDocU.Text = tDocU.Text.Trim
        If comprobar(tDocU.Text) = False Or Not IsNumeric(tDocU.Text) Then
            soloNumeros(tDocU)
            ok = False
            lEDocU.Text = "El documento contenía carácteres inválidos. Fueron removidos."
        End If

        ArreglarCampo(tEmailU)
        If ValidateEmail(tEmailU.Text) = False Then
            ok = False
            lEEmailU.Text = "El email ingresado no es válido."
            lEEmailU.Visible = True
        End If

        tLocalidadU.Text = tLocalidadU.Text.Trim().ToUpper
        If comprobar(tLocalidadU.Text) = False Then
            ArreglarCampo(tLocalidadU)
            ok = False
            lELocalidadU.Text = "La localidad contenía carácteres inválidos. Fueron removidos."
            lELocalidadU.Visible = True
        End If

        tDireccionU.Text = tDireccionU.Text.Trim().ToUpper
        If comprobar(tDireccionU.Text) = False Then
            ArreglarCampo(tDireccionU)
            ok = False
            lEDireccionU.Text = "La dirección contenia caracteres inválidos. Fueron removidos."
            lEDireccionU.Visible = True
        End If

        tTelefonosU.Text = tTelefonosU.Text.Trim().ToUpper
        If comprobar(tTelefonosU.Text) = False Then
            ArreglarCampo(tTelefonosU)
            ok = False
            lETelefonosU.Text = "El teléfono contenia caracteres inválidos. Fueron removidos."
            lETelefonosU.Visible = True
        End If

        Dim FechaNacimiento As Date
        ControlDeNacimiento(tF_Nac, ok, lEFNac, lEdad, True, FechaNacimiento)

        tUsuarioU.Text = tUsuarioU.Text.Trim.ToUpper
        If comprobar(tUsuarioU.Text) = False Or tUsuarioU.Text.IndexOf(" ") > -1 Then
            tUsuarioU.Text = tUsuarioU.Text.Replace(" ", "")
            ArreglarCampo(tUsuarioU)
            ok = False
            lEUsuarioU.Text = "El usuario contenía caracteres inválidos, fueron quitados."
            lEUsuarioU.Visible = True
        End If
        If tUsuarioU.Text.Length < 5 Then
            ok = False
            lEUsuarioU.Text = "El usuario debe tener de 5 a 10 caracteres, letras y/o números."
            lEUsuarioU.Visible = True
        End If

        tPassU.Text = tPassU.Text.Trim
        If comprobar(tPassU.Text) = False Or tPassU.Text.IndexOf(" ") > -1 Then
            tPassU.Text = tPassU.Text.Replace(" ", "")
            ArreglarCampo(tPassU)
            ok = False
            lEPassU.Text = "La clave contenía caracteres inválidos. Pruebe con letras y números."
            lEPassU.Visible = True
        End If
        If tPassU.Text.Length < 5 Then
            ok = False
            lEPassU.Text = "La clave debe tener de 5 a 10 caracteres, letras y/o números."
            lEPassU.Visible = True
        End If

        tPass2U.Text = tPass2U.Text.Trim()
        If comprobar(tPass2U.Text) = False Or tPass2U.Text.IndexOf(" ") > -1 Then
            tPass2U.Text = tPass2U.Text.Replace(" ", "")
            ArreglarCampo(tPass2U)
            ok = False
            lEPass2U.Text = "La segunda clave contenía caracteres inválidos. Pruebe con letras y números."
            lEPass2U.Visible = True
        End If

        If ok = False Then
            lErroresU.Text = "Revise los errores, por favor, y luego reintente."
            lErroresU.Visible = True
            Exit Sub
        End If

        If tPass2U.Text <> tPassU.Text Then
            ok = False
            lEPass2U.Text = "Las 2 claves son diferentes."
            lEPass2U.Visible = True
        End If



        Session("Usuario") = tUsuarioU.Text
        Session("Password") = tPassU.Text
        Session("TipoDeDocumento") = dTDocU.SelectedValue.Trim
        Session("Documento") = tDocU.Text.Trim
        If YaExisteSQL("select idUsuario from Usuarios where usuario='" & Session("Usuario") & "'") Then
            ok = False
            lEUsuarioU.Text = "El usuario elegido ya existe. Pruebe con otro."
            lEUsuarioU.Visible = True
        End If
        If YaExisteSQL("select idUsuario from usuarios where doc='" & Session("Documento") & "' and tdoc='" & Session("TipoDeDocumento") & "'") Then
            ok = False
            lEDocU.Text = "Ya existe el " & Session("TipoDeDocumento") & " " & Session("Documento") & "."
            lEDocU.Visible = True
        End If

        If ok = False Then
            lErroresU.Text = "Solo se permite una inscripción por persona."
            lErroresU.Visible = True
            Exit Sub
        End If

        Session("Usuario") = tUsuarioU.Text.ToLower
        Session("Password") = tPassU.Text
        Session("TipoDeDocumento") = dTDocU.SelectedValue.Trim
        Session("Documento") = tDocU.Text.Trim
        Session("ApellidoYNombre") = tNombreU.Text.Trim & " " & tApellidoU.Text.Trim
        Session("Email") = tEmailU.Text.Trim

        limpiarErroresRegistroU()

        'If SQL_Accion("insert into Usuarios (Apellido, Nombre, tDoc, Doc, Usuario, Pass, Email, idProv, Localidad, Direccion, Telefonos, fNacimiento) values('" & tApellidoU.Text.Trim & "','" & tNombreU.Text.Trim & "', '" & Session("TipoDeDocumento") & "', '" & Session("Documento") & "', '" & Session("Usuario") & "', '" & Session("Password") & "', '" & Session("Email") & "'," & didProvU.SelectedValue & ", '" & tLocalidadU.Text.Trim & "', '" & tDireccionU.Text.Trim & "', '" & tTelefonosU.Text.Trim & "', '" & FechaNacimiento.ToString("yyyy-MM-dd") & "')") = False Then
        '    lErroresU.Text = "Se ha producido un error al querer guardar los datos."
        '    lErroresU.Visible = True
        '    Exit Sub
        'End If

        'Session("idUsuario") = VNum(LeeUnCampo("select top 1 idUsuario from usuarios where Usuario='" & Session("Usuario") & "' and Pass='" & Session("Password") & "' ", "idUsuario"))
        'lBienvenido.Text = "Bienvenido " & Session("ApellidoYNombre") & "!"

        'Dim mensaje As String, xusuario As String = Session("ApellidoYNombre"), en As String = Chr(13) & Chr(10)
        'mensaje = "Bienvenido " & xusuario & " a la plataforma de pedidos de LJT." & en & en & "Te damos una cordial bienvenida a la comunidad de LJT" & en & en &
        '    "Tu usuario es " & """" & Session("Usuario") & """" & en & en &
        '    "Tu clave es " & """" & Session("Password") & """" & en & en & "Ya podes loguearte para ver tus datos." & en & en
        'Dim EmasilOK As String = EnviarMail(Session("EMail"), "Bienvenido a LJT!!!", mensaje)
        'limpiarRegistroU()
        'pRegistrarse.Visible = False
        'pBienvenido.Visible = True
        'bRegistrarseVolverLoginU.Focus()


        Session("sqlIngreso") = "insert into Usuarios (Apellido,Nombre, tDoc, Doc, Usuario,Pass,Email, idProv,Localidad, Direccion,Telefonos,fNacimiento) values('" & tApellidoU.Text.Trim & "','" & tNombreU.Text.Trim & "','" & Session("TipoDocumento") &
            "','" & Session("Documento") & "','" & Session("Usuario") & "','" & Session("Password") & "','" & Session("Email") & "','" & didProvU.SelectedValue & "','" & tLocalidadU.Text.Trim & "','" & tDireccionU.Text.Trim & "','" & tTelefonosU.Text.Trim & "','" & FechaNacimiento.ToString("yyy-MM-dd") & "')"
        Dim codigo As String = CreaCodigo(4)
        Session("Codigo") = codigo
        Dim en As String = Chr(13) & Chr(10), mensaje As String = "Saludos " & Session("ApellidoYNombre") & "." & en & en & "Te escribimos desde LJT, en respuesta a tu solicitud de registro como nuevo usuario de nuestra aplicación." & en & en &
            "Por favor, ingresá el código: " & codigo & " en el cuadro de texto de la aplicación web, y presioná Validar. Esto completará tu registro como nuevo usuario de LJT. " & en & en &
            "Felicitaciones!" & en & "El equipo de LJT." & en & en & en & en & "(Por favor, no responda este mail, es automático... Muchas gracias.)" & en & en
        Dim ok2 As String = EnviarMail(Session("Email"), "LJT - Registro como usuario", mensaje)

        tValidar.Text = ""
        lCodigo.Visible = False
        pRegistrarse.Visible = False
        pVerificaMail.Visible = True

    End Sub

    Protected Sub bRegistrarseUO_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarseUO.Click
        pLoginMenu.Visible = True
        pRegistrarse.Visible = False
    End Sub

    Protected Sub bVolver_Click(sender As Object, e As ImageClickEventArgs) Handles bVolver.Click
        pBienvenido.Visible = False
        pLogin.Visible = True
    End Sub

    Sub ArreglarCampo(ByRef campo As TextBox)
        campo.Text = campo.Text.Trim.Replace("'", "").Replace("""", "").Replace("*", "").Replace("+", "").Replace("-", "").Replace("/", "").Replace(":", "").Replace("`", "").Replace("<", "").Replace(">", "").Replace("=", "").Replace("&", "")
    End Sub

    Function comprobar(ByVal user As String) As Boolean
        If user Is System.DBNull.Value Then
            Return False
        Else
            Dim aux As Boolean = True
            Dim listanegra, x As String
            listanegra = "'*+-/<>:;&`" & """"
            If user <> "" Then
                For Each x In user
                    If aux = True Then
                        If InStr(1, listanegra, x) > 0 Then
                            aux = False
                        Else
                            aux = True
                        End If
                    Else
                        Return False
                    End If
                Next
                If aux = True Then
                    Return True
                End If
            Else
                Return False
            End If
        End If
    End Function

    Sub limpiarErroresRegistroU()
        lErroresU.Text = ""
        lErroresU.Visible = False
        lEFNac.Visible = False
        lEFNac.Text = ""
        lENombreU.Text = ""
        lEApellidoU.Text = ""
        lEDocU.Text = ""
        lEDireccionU.Text = ""
        lEEmailU.Text = ""
        lELocalidadU.Text = ""
        lEPass2U.Text = ""
        lEPassU.Text = ""
        lETelefonosU.Text = ""
        lEUsuarioU.Text = ""
        lEFNac.Visible = False
        lEEmailU.Visible = False
        lENombreU.Visible = False
        lEApellidoU.Visible = False
        lEDocU.Visible = False
        lEDireccionU.Visible = False
        lELocalidadU.Visible = False
        lEPass2U.Visible = False
        lEPassU.Visible = False
        lETelefonosU.Visible = False
        lEUsuarioU.Visible = False
    End Sub

    Sub limpiarRegistroU()
        limpiarErroresRegistroU()
        pRegistrarse.Visible = False

        tNombreU.Text = ""
        tLocalidadU.Text = ""
        tPassU.Text = ""
        tTelefonosU.Text = ""
        tUsuarioU.Text = ""
        tF_Nac.Text = ""
        tEmailU.Text = ""
        dTDocU.SelectedIndex = 0
        didProvU.SelectedIndex = 0
        tDocU.Text = ""
        tDireccionU.Text = ""
        tPass2U.Text = ""
        tApellidoU.Text = ""
    End Sub

    Public Function ValidateEmail(ByVal email As String) As Boolean
        Dim emailRegex As New System.Text.RegularExpressions.Regex("^(?<user>[^@]+)@(?<host>.+)$")
        Dim emailMatch As System.Text.RegularExpressions.Match = emailRegex.Match(email)
        Return emailMatch.Success
    End Function

    Sub soloNumeros(ByRef campo As TextBox)
        Dim cam As String = campo.Text.Trim, salida As String = "", c As String
        For Each c In cam
            If IsNumeric(c) Then salida &= c

        Next
        campo.Text = salida

    End Sub

    'Convierte texto en decimales
    Function VNum(ByVal NTexto As String) As Decimal
        Return CDec(Val(NTexto.Trim.Replace(",", ".")))
    End Function


    'Convierte números a formato SQL
    Function NumSQL(ByVal numero As String) As String
        Return CStr(VNum(numero)).Trim.Replace(",", ".")
    End Function


    'Rellena conn 0s adelante
    Function RellenaNum(ByVal numero As Integer, ByVal cantidad As Integer) As String
        Dim snum As String = CStr(numero).Trim
        Return ("00000000000000000000").Substring(0, cantidad - snum.Length) & snum
    End Function


    'Convierte fecha a formato SLQ
    Function FechaSQL(ByVal fecha As Date) As String
        Return "'" & RellenaNum(Year(fecha), 4) & RellenaNum(Month(fecha), 2) & RellenaNum(Day(fecha), 2) & "'"
    End Function


    'Recibe date y convierte a String
    Public Function AñoMes(ByVal fecha As Date) As String
        Return RellenaNum(Year(fecha), 4) & "-" & RellenaNum(Month(fecha), 2)
    End Function

    'Verifica string (que sea un string válido)
    Public Function VStr(ByVal cosa As Object) As String
        If IsDBNull(cosa) Then Return "" Else Return CStr(cosa)
    End Function


    'Resta la fecha de nac a la de hoy y calcula la edad
    Function CalcularEdad(ByVal FechaNac As Date) As Integer
        Dim edad As Integer = DateTime.Today.AddTicks(-FechaNac.Ticks).Year - 1
        Return edad
    End Function

    'Validación del campo fecha
    Sub ControlDeNacimiento(xtF_nac As TextBox, ByRef ok As Boolean, ByRef xlEFNac As Label, ByRef xlEdad As Label, ByVal Valida18 As Boolean, ByRef FechaNacimiento As Date)
        ArreglarCampo(xtF_nac)
        xlEdad.Visible = False
        If xtF_nac.Text.Length < 6 Then
            ok = False
            xlEFNac.Text &= "El campo fecha de nacimiento debe tener 6 números"
            xlEdad.Text = "0"
            xlEFNac.Visible = True
        Else
            Dim FechaX As String = xtF_nac.Text
            Dim AñoX As Integer = VNum(FechaX.Substring(4, 2))
            If AñoX + 2000 > Date.Today.Year Then AñoX += 1900 Else AñoX += 2000
            FechaX = AñoX.ToString.Trim & "-" & FechaX.Substring(2, 2) & "-" & FechaX.Substring(0, 2)
            If Not IsDate(FechaX) Then
                ok = False
                xlEFNac.Text &= "El campo fecha de nacimiento es una fecha inválida."
                xlEdad.Text = "0"
                xlEFNac.Visible = True
            Else
                Dim dFechax As Date
                dFechax = CDate(FechaX)
                FechaNacimiento = dFechax
                If dFechax > Date.Today Then
                    ok = False
                    xlEFNac.Text &= "Nació en el futuro...."
                    xlEdad.Text = "0"
                    xlEFNac.Visible = True
                Else
                    Dim Edad As Integer = CalcularEdad(dFechax)
                    xlEdad.Text = Edad

                    If Edad < 18 Then
                        ok = False
                        xlEFNac.Text &= "Debe ser mayor de edad(18 años)."
                        xlEdad.Text = "0"
                        xlEFNac.Visible = True
                    End If
                End If
            End If
        End If
    End Sub


    Public Function SQL_Accion(ByVal Sql_de_accion As String) As Boolean
        Dim adapter As New SqlDataAdapter, salida As Boolean = True
        Try
            If con.State = ConnectionState.Closed Then con.Open()
            If Sql_de_accion.ToUpper.IndexOf("INSERT") Then
                adapter.InsertCommand = New SqlCommand(Sql_de_accion, con)
                adapter.InsertCommand.ExecuteNonQuery()
            Else
                If Sql_de_accion.ToUpper.IndexOf("UPDATE") Then
                    adapter.UpdateCommand = New SqlCommand(Sql_de_accion, con)
                    adapter.UpdateCommand.ExecuteNonQuery()
                Else
                    If Sql_de_accion.ToUpper.IndexOf("DELETE") Then
                        adapter.DeleteCommand = New SqlCommand(Sql_de_accion, con)
                        adapter.DeleteCommand.ExecuteNonQuery()
                    Else
                        salida = False
                    End If
                End If
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            salida = False
        End Try
        Return salida
    End Function

    Function LeeUnCampo(ByVal sql As String, ByVal campo As String) As Object
        Dim da1 As New SqlDataAdapter(sql, con)
        Dim ds1 As New DataSet
        Try
            If con.State = ConnectionState.Closed Then con.Open()
            da1.Fill(ds1, "datos")
            If ds1.Tables("datos").Rows.Count < 1 Then
                Return "**NADA**"
            Else
                Return ds1.Tables("datos").Rows(0)(campo)
            End If
        Catch
            Return "**ERROR**"
        End Try
    End Function

    Public Function YaExisteSQL(ByVal sql As String) As Boolean

        Dim da1 As New SqlDataAdapter(sql, con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "afidesc")
        If ds1.Tables("afidesc").Rows.Count < 1 Then
            Return False
        Else
            Return True
        End If

    End Function

    Protected Sub bEntrar_Click(sender As Object, e As ImageClickEventArgs) Handles bEntrar.Click
        Session("QueEs") = "Usuarios"
        Loguea()
    End Sub



    Sub Loguea()
        Dim usu As String = tUsuario.Text.Trim.ToUpper, pass As String = tClave.Text.Trim
        If comprobar(tUsuario.Text.Trim) = False Or comprobar(tClave.Text.Trim) = False Then
            lErrorLogin.Text = "El usuario o la clave son incorrectos. Revise por favor."
            lErrorLogin.Visible = True
            Exit Sub
        End If

        Dim da1 As New SqlDataAdapter("select * from " & Session("QueEs") & " where upper(ltrim(rtrim(usuario)))='" & usu _
                                      & "' and ltrim(rtrim(pass))='" & pass & "'", con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "Login")
        If ds1.Tables("Login").Rows.Count = 0 Then
            lErrorLogin.Text = "El usuario o la clave son incorrectos. Revise por favor."
            lErrorLogin.Visible = True
            Exit Sub
        End If

        Select Case Session("QueEs")
            Case "Usuarios"
                Session("idUsuario") = ds1.Tables("Login").Rows(0)("idUsuario")
                Session("Usuario") = usu
                Session("Password") = pass
                Session("TipoDocumento") = ds1.Tables("Login").Rows(0)("tDoc")
                Session("Documento") = ds1.Tables("Login").Rows(0)("Doc").ToString.Trim
                Session("ApellidoYNombre") = ds1.Tables("Login").Rows(0)("Nombre").ToString.Trim & " " &
                    ds1.Tables("Login").Rows(0)("Apellido").ToString.Trim
                Session("Email") = ds1.Tables("Login").Rows(0)("Email").ToString.Trim
                Session("idprov") = ds1.Tables("Login").Rows(0)("idprov").ToString.Trim
                Session("Localidad") = ds1.Tables("Login").Rows(0)("Localidad").ToString.Trim
                Session("Direccion") = ds1.Tables("Login").Rows(0)("Direccion").ToString.Trim
                Session("Telefonos") = ds1.Tables("Login").Rows(0)("Telefonos").ToString.Trim
                lBienvenidoAreaU.Text = "Bienvenid@ " & Session("ApellidoYNombre") & ", a tu área de usuario."
                limpiarRegistroU()
                pLogin.Visible = False
                pAreaUsuario.Visible = True


            Case "Administradores"
                ' Session("idUsuario") = ds1.Tables("Login").Rows(0)("idUsuario")
                'Session("Usuario") = usu
                'Session("Password") = pass
                'Session("TipoDocumento") = ds1.Tables("Login").Rows(0)("tDoc")
                'Session("Documento") = ds1.Tables("Login").Rows(0)("Doc").ToString.Trim
                'Session("ApellidoYNombre") = ds1.Tables("Login").Rows(0)("Nombre").ToString.Trim & " " &
                'ds1.Tables("Login").Rows(0)("Apellido").ToString.Trim
                'Session("Email") = ds1.Tables("Login").Rows(0)("Email").ToString.Trim
                'Session("idprov") = ds1.Tables("Login").Rows(0)("idprov").ToString.Trim
                'Session("Localidad") = ds1.Tables("Login").Rows(0)("Localidad").ToString.Trim
                'Session("Direccion") = ds1.Tables("Login").Rows(0)("Direccion").ToString.Trim
                'Session("Telefonos") = ds1.Tables("Login").Rows(0)("Telefonos").ToString.Trim
                'lBienvenidoAreaU.Text = "Bienvenid@ " & Session("ApellidoYNombre") & ", a tu área de administrador."
                limpiarRegistroU()
                pLogin.Visible = False
                pAreaAdministrador.Visible = True
                bABMProductos.Visible = True
        End Select
    End Sub

    Protected Sub bALogin_Click(sender As Object, e As ImageClickEventArgs) Handles bALogin.Click
        pLoginMenu.Visible = False
        pLogin.Visible = True
    End Sub

    Protected Sub bAhoraQueHago_Click(sender As Object, e As ImageClickEventArgs) Handles bAhoraQueHago.Click
        pAreaUsuario.Visible = False
        pAhoraQueHago.Visible = True
    End Sub

    Sub LimpiarLogin()
        lErrorLogin.Text = ""
        lErrorLogin.Visible = False
        tUsuario.Text = ""
        tClave.Text = ""
        pRegistrarse.Visible = False
    End Sub

    Protected Sub bVolverLoginU1_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLoginU1.Click, bVolverLoginAdmin.Click
        LimpiarLogin()
        limpiarRegistroU()
        lReenviarClave.Text = "" : lReenviarClave.Visible = False
        pLogin.Visible = True
        pAreaAdministrador.Visible = False
        pAreaUsuario.Visible = False
        tUsuario.Text = Session("Usuario")
        tClave.Text = Session("Password")
    End Sub

    Protected Sub bVolverLoginU2_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverLoginU2.Click

        pAhoraQueHago.Visible = False
        pAreaUsuario.Visible = True

    End Sub

    Protected Sub bCancelarModificar_Click(sender As Object, e As ImageClickEventArgs) Handles bCancelarModificar.Click
        pCambiarDatosPersonales.Visible = False
        pAreaUsuario.Visible = True
    End Sub

    Protected Sub bvolverAreaUsuario_Click(sender As Object, e As ImageClickEventArgs) Handles bvolverAreaUsuario.Click
        pCambiosGuardados.Visible = False
        pAreaUsuario.Visible = True
    End Sub



    Protected Sub bRecuperarClave_Click(sender As Object, e As ImageClickEventArgs) Handles bRecuperarClave.Click
        Dim usu As String = tUsuario.Text.Trim.ToUpper, email As String, xusuario As String, mensaje As String, pass As String
        Dim en As String = Chr(13) & Chr(10)
        If comprobar(usu) = False Then
            lReenviarClave.Text = "*** El usuario es incorrecto. Revisa por favor. ***"
            lReenviarClave.Visible = True
            Exit Sub
        End If

        Dim da2 As New SqlDataAdapter("select ltrim(rtrim(nombre)) + ' ' + ltrim(rtrim(apellido)) as usuario, pass," & "email from usuarios where upper(ltrim(rtrim(usuario)))='" & usu & "'", con)
        Dim ds2 As New DataSet
        da2.Fill(ds2, "Login")
        If ds2.Tables("Login").Rows.Count = 0 Then
            lReenviarClave.Text = "*** El usuario es incorrecto. Revisa por favor. ***"
            lReenviarClave.Visible = True
            Exit Sub
        End If

        email = ds2.Tables("Login").Rows(0)("email").ToString.Trim.ToLower
        pass = ds2.Tables("Login").Rows(0)("pass").ToString.Trim.ToLower
        xusuario = ds2.Tables("Login").Rows(0)("usuario").ToString.Trim

        mensaje = "Hola " & "." & en & en & "Le escribimos desde LJT, respondiendo a su pedido de recuperación de clave," & en & en & "Su usuario es " & """" & usu & """" & en & "Su clave es " & """" & pass & """" & en & en & "Ya podés volver a entrar y armar tus pedidos!" & en & "Un gran saludo desde LJT!" & en & en & en & en & "(Por favor no respondas a este email, es automático... Gracias!)" & en & en

        Dim ok As String = EnviarMail(email, "LJT Construcciones - Clave Recuperada", mensaje)
        If ok = "OK" Then
            lReenviarClave.Text = "*** Ya te enviamos un mail con la clave! ***"
        Else
            lReenviarClave.Text = "*** Hubo un error al querer enviar el mail... ***"
        End If
        lReenviarClave.Visible = True
    End Sub



    Protected Sub bModificarDatos_Click(sender As Object, e As ImageClickEventArgs) Handles bModificarDatos.Click
        pAreaUsuario.Visible = False
        pCambiarDatosPersonales.Visible = True
    End Sub


    Protected Sub bCambiarDatos_Click(sender As Object, e As ImageClickEventArgs) Handles bCambiarDatos.Click

    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles bNuevoPedido.Click
        Dim en As String = "</BR>"
        lInstrucciones.Text = "INSTRUCCIONES:" & en & en & "1) Elija el material que desea solicitar a la fábrica., y se verá el elegido en 'Agregar:'." & en & "2) Indique la cantidad. " & en & "3) Oprima el botón 'Agregar a la lista'. El ítem elegido y la cantidad se verán en la lista inferior. Si quiere sacar algún ítem (lo quita completo), sólo presione sobre el ítem en la lista para seleccionarlo y oprima 'Quitar'. Si agrega un ítem que ya estaba en la lista, se suman las cantidades. " & en & "4) Cuando haya terminado oprima 'Enviar el Pedido'. Todos los ítems figurarán como 'Solicitado', y desde 'Revisar estado de los Pedidos', podrá ver si cambiaron a 'Despachando' o 'Enviado'. Desde allí podrá anular los pedidos que aun estén en 'Solicitado'."
        lInstrucciones.Visible = False
        bInstrucciones.Text = "Abrir Instrucciones"

        pPedidos.Visible = False
        lCosaAgregar.Text = ""
        CargarMateriales()

        bQuitarTodos.Visible = False
        bSolicitarPedido.Visible = False
        lErrorPedido.Text = ""

        If IsNothing(Session("idUsuario")) Then
            pLogin.Visible = True
            Exit Sub
        End If
        SQL_Accion("delete web_pedidos_temporal where num_cli=" & Session("idUsuario"))
        CargaTemporal()
        pNuevoPedido.Visible = True
    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Cargahistorico()
    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        pAreaUsuario.Visible = True
        pPedidos.Visible = False
    End Sub

    Protected Sub bAgregarALista_Click(sender As Object, e As ImageClickEventArgs) Handles bAgregarALista.Click
        Dim x As Integer = 0, c As String, numero As Integer = 0
        Dim cosa As String = lCosaAgregar.Text.Trim
        If cosa = "----------" Then Exit Sub

        Dim Cantidad As Integer = VNum(tCantLatas.SelectedValue.ToString)

        If Cantidad <= 0 Then Exit Sub
        lErrorPedido.Text = ""

        Dim da2 As New SqlDataAdapter("select cantidad from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " and ltrim(rtrim(item))='" & cosa & "'", con)
        Dim ds2 As New DataSet
        da2.Fill(ds2, "dato")
        If ds2.Tables("dato").Rows.Count > 0 Then
            Cantidad += VNum(ds2.Tables("dato").Rows(0)("cantidad"))
            If SQL_Accion("update web_pedidos_temporal set cantidad=" & Cantidad & " where num_cli=" & Session("idUsuario") & " and ltrim(rtrim(item))='" & cosa & "'") = False Then
                lErrorPedido.Text = "No se puede modificar el item elegido. Intente más tarde."
                Exit Sub
            End If
        Else
            If SQL_Accion("insert into web_pedidos_temporal (num_cli, item, cantidad) values (" & Session("idUsuario") & ", '" & cosa & "', " & Cantidad & ")") = False Then
                lErrorPedido.Text = "No se puede agregar el item a la lista. Intente más tarde."
                Exit Sub
            End If
        End If
        tCantLatas.SelectedIndex = 0
        CargaTemporal()
    End Sub

    Protected Sub bQuitarTodos_Click(sender As Object, e As ImageClickEventArgs) Handles bQuitarTodos.Click
        If SQL_Accion("delete web_pedidos_temporal where num_cli=" & VNum(Session("idUsuario"))) = False Then
            lErrorPedido.Text = "No puedo quitar a todos los items del a lista. Intente más tarde."
            Exit Sub
        End If
        CargaTemporal()
    End Sub

    Protected Sub bSolicitarPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bSolicitarPedido.Click
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim npedido As Integer = 0, vItem As String = "", vTipo As String = "", vCantidad As Integer = 0, cosa As String
        Dim linea As String = "", en As String = Chr(13) & Chr(10)
        lErrorPedido.Text = ""
        If SQL_Accion("insert into web_pedidos (num_cli) values (" & Session("idUsuario") & ")") = True Then
            Dim da2 As New SqlDataAdapter("select top 1 npedido from web_pedidos where num_cli=" & Session("idUsuario") & "order by npedido desc", con)
            Dim ds2 As New DataSet
            da2.Fill(ds2, "dato")
            If ds2.Tables("dato").Rows.Count > 0 Then
                npedido = ds2.Tables("dato").Rows(0)("npedido")
                If SQL_Accion("insert into web_pedidos_detalle ( item, cantidad, npedido ) " & "select web_pedidos_temporal.item, web_pedidos_temporal.cantidad," & npedido & " as npedido from web_pedidos_temporal where num_cli=" & idU) = True Then
                    lPedidoCreado.Text = "El pedido Nº " & npedido & ", fue creado correctamente."
                    pNuevoPedido.Visible = False
                    pPedidoCreado.Visible = True
                    Dim da3 As New SqlDataAdapter("select * from WEB_Pedidos_Temporal", con)
                    Dim ds3 As New DataSet()
                    da3.Fill(ds3, "usuario")
                    Dim da4 As New SqlDataAdapter("select Email from Administradores", con)
                    Dim ds4 As New DataSet()
                    da4.Fill(ds4, "emailAdmin")
                    Dim xusuario As String = Session("usuario").ToString()
                    Dim mensaje As String = "El usuario " + xusuario + "Realizó un pedido con los siguientes productos:"
                    For i = 0 To ds3.Tables("usuario").Rows.Count - 1
                        Dim item As String = ds3.Tables("usuario").Rows(i)("Item").ToString()
                        Dim cantidad As String = ds3.Tables("usuario").Rows(i)("Cantidad").ToString()
                        mensaje += item + " con una cantidad de: " & cantidad
                    Next i
                    For i = 0 To ds4.Tables("emailAdmin").Rows.Count - 1
                        Dim Email As String = ds4.Tables("emailAdmin").Rows(i)("Email").ToString()
                        Dim ok As String = EnviarMail(Email, "Nuevo Pedido", mensaje)
                    Next i
                    If SQL_Accion("delete web_pedidos_temporal where num_cli=" & idU) = False Then
                    End If
                Else
                    lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío o con carga parcial. Anúlelo e intente más tarde"
                    Exit Sub
                End If
                Exit Sub
            Else
                lErrorPedido.Text = "Hubo un error al intentar guardar el detalle del pedido " & npedido & ", que quedó vacío. Anúlelo e intente más tarde"
                Exit Sub
            End If
        Else
            lErrorPedido.Text = "Hubo un error al intentar guardar el pedido. Intente más tarde"
        End If
    End Sub




    Protected Sub bCancelarPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bCancelarPedido.Click
        If SQL_Accion("delete web_pedidos_temporal where num_cli=" & VNum(Session("idUsuario"))) = False Then
        End If
        pNuevoPedido.Visible = False
        pPedidos.Visible = True
    End Sub

    Protected Sub ImageButton7_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton7.Click
        pPedidoCreado.Visible = False
        pPedidos.Visible = True
    End Sub


    Sub CargarMateriales()
        Dim x As Integer = 0, cosa As String
        Dim da2 As New SqlDataAdapter("select * from web_materiales order by nombre", con)
        Dim ds2 As New DataSet
        dProductos.Items.Clear()
        da2.Fill(ds2, "dato")
        If ds2.Tables("dato").Rows.Count = 0 Then
            dProductos.Items.Add("*** No hay materiales disponibles en éste momento... ***")
            Exit Sub
        End If
        For x = 0 To ds2.Tables("dato").Rows.Count - 1
            cosa = ds2.Tables("dato").Rows(x)("nombre").ToString.Trim

            dProductos.Items.Add(cosa)
        Next
        dProductos.SelectedIndex = 0
        lCosaAgregar.Text = dProductos.SelectedItem.ToString
        lQueEs.Text = "Material"
    End Sub

    Sub CargaTemporal()
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim consulta As String = "select item, cantidad from web_pedidos_temporal where num_cli=" & Session("idUsuario") & " order by item"
        Dim da1 As New SqlDataAdapter(consulta, con)

        Dim ds1 As New DataSet
        da1.Fill(ds1, "histo")
        gListaPedido.DataSource = ds1.Tables("histo")
        gListaPedido.DataBind()
        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico.Text = ""
            gListaPedido.Visible = False
            bSolicitarPedido.Visible = False
            bQuitarTodos.Visible = False
            lErrorPedido.Visible = False
        Else
            gListaPedido.Visible = True
            bSolicitarPedido.Visible = True
            bQuitarTodos.Visible = True
            lErrorPedido.Visible = True
        End If

    End Sub

    Protected Sub bInstrucciones_Click(sender As Object, e As EventArgs) Handles bInstrucciones.Click
        If bInstrucciones.Text = "Abrir instrucciones" Then
            bInstrucciones.Text = "Cerrar Instrucciones"
            lInstrucciones.Visible = True
        Else
            bInstrucciones.Text = "Abrir Instrucciones"
            lInstrucciones.Visible = False
        End If
    End Sub

    Protected Sub dMateriales_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dProductos.SelectedIndexChanged
        lCosaAgregar.Text = dProductos.SelectedItem.ToString
        lQueEs.Text = "Material"
    End Sub

    Protected Sub gListaPedido_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gListaPedido.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gListaPedido.Rows(index)
        Dim Item As String = row.Cells(1).Text, en As String = Chr(13) & Chr(10)
        Dim consulta As String = "delete web_pedidos_temporal where ltrim(rtrim(item))='" & Item & "' and num_cli=" & VNum(Session("idUsuario"))
        lErrorPedido.Text = ""
        If (e.CommandName = "Quitar") Then
            If SQL_Accion(consulta) = False Then
                lErrorPedido.Text = "No puedo quitar a todos los items del a lista. Intente más tarde."
                Exit Sub
            End If
            CargaTemporal()
        End If
    End Sub

    Protected Sub bEntrarAdmin_Click(sender As Object, e As ImageClickEventArgs) Handles bEntrarAdmin.Click
        Session("QueEs") = "Administradores"
        Loguea()
    End Sub

    Protected Sub ImageButton14_Click(sender As Object, e As ImageClickEventArgs) Handles bRegistrarse.Click

    End Sub

    Protected Sub bCargarABM_Click(sender As Object, e As EventArgs) Handles bCargarABM.Click
        pABMProductos.Visible = False
        pCargarProducto.Visible = True
    End Sub

    Protected Sub bModificarABM_Click(sender As Object, e As EventArgs) Handles bModificarABM.Click
        pModificarProd.Visible = True
        pABMProductos.Visible = False
        CargarMateriales()
    End Sub

    Protected Sub bEliminarABM_Click(sender As Object, e As EventArgs) Handles bEliminarABM.Click
        pEliminarProd.Visible = True
        pABMProductos.Visible = False
        CargarMateriales()
    End Sub
    Protected Sub bTerminarVolverVerPedido0_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarVolverVerPedido0.Click
        pAreaUsuario.Visible = True
        pABMProductos.Visible = False
    End Sub

    Protected Sub bTerminarVolverVerPedido1_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarVolverVerPedido1.Click
        pCargarProducto.Visible = False
        pABMProductos.Visible = True
    End Sub

    Protected Sub bAgregarProd_Click(sender As Object, e As ImageClickEventArgs) Handles bAgregarProd.Click

        Dim ok As Boolean = True

        tNProd.Text = tNProd.Text.Trim.ToUpper
        If comprobar(tNProd.Text) = False Then
            ArreglarCampo(tNProd)
            ok = False
            lErrorNProd.Text = "El nombre contenía carácteres inválidos."
            lErrorNProd.Visible = True
        End If

        tPrecioProd.Text = tPrecioProd.Text.Trim
        If comprobar(tPrecioProd.Text) = False Then
            ArreglarCampo(tPrecioProd)
            ok = False
            lErrorPrecioProd.Text = "El precio contenía carácteres inválidos."
            lErrorPrecioProd.Visible = True
        End If

        tStockProd.Text = tStockProd.Text.Trim
        If comprobar(tStockProd.Text) = False Or Not IsNumeric(tStockProd.Text) Then
            soloNumeros(tStockProd)
            ok = False
            lErrorStockProd.Text = "El stock contenía carácteres inválidos. Ingrese solo números."
        End If

        If YaExisteSQL("select CodM from Web_Materiales where Nombre='" & tNProd.Text.Trim & "'") Then
            ok = False
            lErrorProdEx.Text = "El producto ya existe. Pruebe modificándolo en la sección 'Modificar producto'"
            lErrorProdEx.Visible = True
        End If

        If ok = False Then
            Exit Sub
        End If

        If SQL_Accion("insert into Web_Materiales (Nombre, PrecioSinIva, Stock) values('" & tNProd.Text.Trim & "','" & tPrecioProd.Text.Trim & "', '" & tStockProd.Text.Trim & "')") = False Then
            lErrorProdEx.Text = "Se ha producido un error al querer guardar los datos."
            lErrorProdEx.Visible = True
            Exit Sub
        Else
            lProdAgregado.Visible = True
        End If
        limpiarRegistroU()
    End Sub


    Protected Sub bBuscarProd_Click(sender As Object, e As EventArgs) Handles bBuscarProd.Click
        Dim query1 As String = "Select codm, nombre, preciosiniva, stock from web_materiales where nombre='" & dProductos0.SelectedValue.Trim & "' order by nombre"
        Dim da1 As New SqlDataAdapter(query1, con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "Produs")

        If ds1.Tables("Produs").Rows.Count = 0 Then
            Label4.Visible = False
            Label111.Visible = False
            Label6.Visible = False
            TextBox2.Visible = False
            TextBox4.Visible = False
            TextBox3.Visible = False
        Else
            Label4.Visible = True
            Label111.Visible = True
            Label6.Visible = True
            TextBox2.Visible = True
            TextBox2.Text = ds1.Tables("Produs").Rows(0)("nombre")
            TextBox4.Visible = True
            TextBox4.Text = ds1.Tables("Produs").Rows(0)("preciosiniva")
            TextBox3.Visible = True
            TextBox3.Text = ds1.Tables("Produs").Rows(0)("stock")
            Session("codPm") = ds1.Tables("Produs").Rows(0)("codm")
        End If
    End Sub

    Protected Sub bVolverModificar_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverModificar.Click
        pModificarProd.Visible = False
        pABMProductos.Visible = True
    End Sub

    Protected Sub bModificarProducto_Click(sender As Object, e As ImageClickEventArgs) Handles bModificarProducto.Click
        Dim ok As Boolean = True

        TextBox2.Text = TextBox2.Text.Trim
        If comprobar(TextBox2.Text) = False Then
            ArreglarCampo(TextBox2)
            ok = False
            Label5.Text = "El nombre contenía carácteres no permitidos."
            Label5.Visible = True
        End If

        TextBox4.Text = TextBox4.Text.Trim
        If comprobar(TextBox4.Text) = False Then
            ArreglarCampo(TextBox4)
            ok = False
            Label112.Text = "El precio contenía carácteres no permitidos."
            Label112.Visible = True
        End If

        TextBox3.Text = TextBox3.Text.Trim
        If comprobar(TextBox3.Text) = False Or Not IsNumeric(TextBox3.Text) Then
            soloNumeros(TextBox3)
            ok = False
            Label7.Text = "El stock contenía caracteres no permitidos. Ingrese solo números."
            Label7.Visible = True
        End If

        If ok = False Then Exit Sub

        If SQL_Accion("update web_materiales set nombre='" & TextBox2.Text.Trim & "', preciosiniva='" & TextBox4.Text.Trim & "', stock=" & TextBox3.Text.Trim & " where codm=" & Session("CodPm")) = False Then
            lErrorModificarProd.Text = "No se pudo modificar el ítem, inténtelo de nuevo."
            lErrorModificarProd.Visible = True
            Exit Sub
        Else
            lProdModificado.Visible = True
            lProdModificado.Visible = False
        End If
    End Sub

    Protected Sub bSeleccionarProd_Click(sender As Object, e As EventArgs) Handles bSeleccionarProd.Click
        lProductoEliminado.Visible = False
        Dim query2 As String = "Select codm, nombre, preciosiniva, stock from web_materiales where nombre='" & dProductosEliminar.SelectedValue & "' order by producto"
        Dim da1 As New SqlDataAdapter(query2, con)

        Dim ds1 As New DataSet
        da1.Fill(ds1, "Produs")

        If ds1.Tables("Produs").Rows.Count > 0 Then
            tNombreElim.Text = ds1.Tables("Produs").Rows(0)("nombre")
            tPrecioElim.Text = ds1.Tables("Produs").Rows(0)("preciosiniva")
            tStockElim.Text = ds1.Tables("Produs").Rows(0)("stock")
            Session("CodPe") = ds1.Tables("Produs").Rows(0)("codm")
        End If
    End Sub

    Protected Sub bEliminarNo_Click(sender As Object, e As EventArgs) Handles bEliminarNo.Click
        lEliminarSeguro.Visible = False
        bEliminarNo.Visible = False
        bEliminarSi.Visible = False
    End Sub

    Protected Sub bEliminarSi_Click(sender As Object, e As EventArgs) Handles bEliminarSi.Click
        If SQL_Accion("delete from web_materiales where codm=" & Session("CodPe")) = False Then
            lErrorEliminar.Text = "No se pudo eliminar el ítem elegido, pruebe nuevamente."
            lErrorEliminar.Visible = True
            Exit Sub
        Else
            lProductoEliminado.Visible = True
            lErrorEliminar.Visible = False
            lEliminarSeguro.Visible = False
            bEliminarNo.Visible = False
            bEliminarSi.Visible = False
            tNombreElim.Text = ""
            tPrecioElim.Text = ""
            tStockElim.Text = ""
            dProductosEliminar.Items.Clear()
            CargarMateriales()
        End If
    End Sub

    Protected Sub bVolverEliminar_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverEliminar.Click
        pEliminarProd.Visible = False
        pABMProductos.Visible = True
    End Sub

    Protected Sub bEliminarProd_Click(sender As Object, e As EventArgs) Handles bEliminarProd.Click
        lEliminarSeguro.Visible = True
        bEliminarNo.Visible = True
        bEliminarSi.Visible = True
    End Sub

    Protected Sub bABMProductos_Click(sender As Object, e As EventArgs) Handles bABMProductos.Click
        pAreaAdministrador.Visible = False
        pABMProductos.Visible = True
    End Sub

    Protected Sub bPedidos_Click(sender As Object, e As ImageClickEventArgs) Handles bPedidos.Click
        pAreaUsuario.Visible = False
        pPedidos.Visible = True
    End Sub



    Sub Cargahistorico()
        lErrorHistorico.Text = ""
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim da1 As New SqlDataAdapter("select Npedido, fecha,estado from web_pedidos where num_cli=" & idU & " and estado <>'Enviado' order by npedido desc", con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "histo")
        gHistorico.DataSource = ds1.Tables("histo")
        gHistorico.DataBind()
        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico.Text = "No hay pedidos anteriores o hubo error al cargarlos. Reintente mas tarde."
            gHistorico.Visible = False
        Else
            gHistorico.Visible = True
        End If

        pPedidos.Visible = False
        pHistorico.Visible = True
    End Sub


    Protected Sub gHistorico_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gHistorico.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gHistorico.Rows(index)
        Dim Npedido As Integer = VNum(row.Cells(2).Text), en As String = Chr(13) & Chr(10)

        If (e.CommandName = "Ver") Then
            lErrorVerUnPedido.Text = "Detalle del Pedido Nº " & Npedido

            lErrorVerUnPedido.Text = ""
            Dim da1 As New SqlDataAdapter("select web_pedidos_detalle.Item, " & "web_pedidos_detalle.Cantidad from web_pedidos_detalle inner join web_materiales on " & "web_pedidos_detalle.Item = web_materiales.nombre where web_pedidos_detalle.Npedido=" & Npedido & " order by web_materiales.codM", con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            gVerUnPedido.DataSource = ds1.Tables("histo")
            gVerUnPedido.DataBind()
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Reintente más tarde."
                gVerUnPedido.Visible = False
            Else
                gVerUnPedido.Visible = True
            End If
            pHistorico.Visible = False
            pVerUnPedido.Visible = True
        End If

        If (e.CommandName = "Anular") Then

            lErrorHistorico.Text = ""
            Dim da1 As New SqlDataAdapter("select estado from web_pedidos where npedido=" & Npedido, con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico.Text = "No puedo acceder al pedido Nº " & Npedido & ". Reintente más tarde."
                Exit Sub
            Else
                Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
                If Estado <> "Solicitado" Then
                    lErrorHistorico.Text = "El pedido tiene estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame a la fábrica " & "por favor"
                    Exit Sub
                Else
                    If Estado = "Anulado" Then
                        lErrorHistorico.Text = "El pedido Nº " & Npedido & ", YA estaba anulado..."
                        Exit Sub
                    End If
                    lErrorHistorico.Text = ""
                    If SQL_Accion("update web_pedidos set estado='Anulado' where npedido=" & Npedido) = False Then
                        lErrorHistorico.Text = "No he podido cambiar el estado, hubo algún error de conexión. Por favor, reintente más tarde o llame a la fábrica para avisar de la anulación."
                        Exit Sub
                    Else
                        lPedidoAnulado.Text = "El pedido Nº " & Npedido & ", fue ANULADO "

                    End If
                End If
            End If
        End If
    End Sub

    Protected Sub bTerminarVolverVerPedido_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarVolverVerPedido.Click
        pVerUnPedido.Visible = False
        pHistorico.Visible = True
    End Sub

    Protected Sub bTerminarVolverHistorico_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarVolverHistorico.Click
        pPedidos.Visible = True
        pHistorico.Visible = False
    End Sub

    Protected Sub bActualizarHistorico_Click(sender As Object, e As ImageClickEventArgs) Handles bActualizarHistorico.Click
        Cargahistorico()
    End Sub

    Protected Sub gHistoricoAdmin_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gHistoricoAdmin.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gHistoricoAdmin.Rows(index)
        Dim Npedido As Integer = VNum(row.Cells(2).Text), en As String = Chr(13) & Chr(10)

        If (e.CommandName = "Ver") Then
            lErrorVerUnPedido.Text = "Detalle del Pedido Nº " & Npedido

            lErrorVerUnPedido.Text = ""
            Dim da1 As New SqlDataAdapter("select web_pedidos_detalle.Item, " & "web_pedidos_detalle.Cantidad from web_pedidos_detalle inner join web_materiales on " & "web_pedidos_detalle.Item = web_materiales.nombre where web_pedidos_detalle.Npedido=" & Npedido & " order by web_materiales.codM", con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            gVerUnPedido.DataSource = ds1.Tables("histo")
            gVerUnPedido.DataBind()
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico0.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Reintente más tarde."
                gVerUnPedido.Visible = False
            Else
                gVerUnPedido.Visible = True
            End If
            pVerTodosLosPedidos.Visible = False
            pVerUnPedido.Visible = True
        End If

        If (e.CommandName = "Anular") Then

            lErrorHistorico0.Text = ""
            Dim da1 As New SqlDataAdapter("select estado from web_pedidos where npedido=" & Npedido, con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico0.Text = "No puedo acceder al pedido Nº " & Npedido & ". Reintente más tarde."
                Exit Sub
            Else
                Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
                If Estado <> "Solicitado" Then
                    lErrorHistorico0.Text = "El pedido tiene estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame a la fábrica " & "por favor"
                    Exit Sub
                Else
                    If Estado = "Anulado" Then
                        lErrorHistorico0.Text = "El pedido Nº " & Npedido & ", YA estaba anulado..."
                        Exit Sub
                    End If
                    lErrorHistorico0.Text = ""
                    If SQL_Accion("update web_pedidos set estado='Anulado' where npedido=" & Npedido) = False Then
                        lErrorHistorico0.Text = "No he podido cambiar el estado, hubo algún error de conexión. Por favor, reintente más tarde o llame a la fábrica para avisar de la anulación."
                        Exit Sub
                    Else
                        lPedidoAnulado0.Text = "El pedido Nº " & Npedido & ", fue ANULADO "

                    End If
                End If
            End If
        End If
        If (e.CommandName = "Editar") Then
            lErrorVerUnPedido0.Text = "Detalle del Pedido Nº " & Npedido

            lErrorVerUnPedido0.Text = ""
            Dim da1 As New SqlDataAdapter("select web_pedidos_detalle.Item, " & "web_pedidos_detalle.Cantidad from web_pedidos_detalle inner join web_materiales on " & "web_pedidos_detalle.Item = web_materiales.nombre where web_pedidos_detalle.Npedido=" & Npedido & " order by web_materiales.codM", con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            gVerUnPedido0.DataSource = ds1.Tables("histo")
            gVerUnPedido0.DataBind()
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico0.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Reintente más tarde."
                gVerUnPedido0.Visible = False
            Else
                gVerUnPedido0.Visible = True
            End If
            pVerTodosLosPedidos.Visible = False
            pVerPedidosAdmin.Visible = True
        End If

        If (e.CommandName = "Cambiar") Then

            lErrorHistorico0.Text = ""
            Dim da1 As New SqlDataAdapter("select estado from web_pedidos where npedido=" & Npedido, con)
            Dim ds1 As New DataSet
            da1.Fill(ds1, "histo")
            If ds1.Tables("histo").Rows.Count = 0 Then
                lErrorHistorico0.Text = "No puedo acceder al pedido Nº " & Npedido & ". Reintente más tarde."
                Exit Sub
            Else
                Dim Estado As String = ds1.Tables("histo")(0)("estado").ToString.Trim
                If Estado <> "Solicitado" Then
                    lErrorHistorico0.Text = "El pedido tiene estado='" & Estado & "' y ya no puede cancelarse por web (sólo 'Solicitado'). Llame a la fábrica " & "por favor"
                    Exit Sub
                Else
                    If Estado = "Anulado" Then
                        lErrorHistorico0.Text = "El pedido Nº " & Npedido & ", YA estaba anulado..."
                        Exit Sub
                    End If
                    lErrorHistorico0.Text = ""
                    If SQL_Accion("update web_pedidos set estado='Enviado' where npedido=" & Npedido) = False Then
                        lErrorHistorico0.Text = "No he podido cambiar el estado, hubo algún error de conexión. Por favor, reintente más tarde o llame a la fábrica para avisar de la anulación."
                        Exit Sub
                    Else
                        lPedidoAnulado0.Text = "El pedido Nº " & Npedido & ", fue ENVIADO "

                    End If
                End If
            End If
        End If




    End Sub

    Protected Sub bTodosLosPedidos_Click(sender As Object, e As EventArgs) Handles bTodosLosPedidos.Click
        pAreaAdministrador.Visible = False
        pVerTodosLosPedidos.Visible = True
        CargahistoricoAdmin()

    End Sub

    Sub CargahistoricoAdmin()
        lErrorHistorico0.Text = ""
        Dim idU As Integer = VNum(Session("idUsuario"))
        Dim da1 As New SqlDataAdapter("select Npedido, fecha,estado, usuario from web_pedidos order by npedido desc", con)
        Dim ds1 As New DataSet
        da1.Fill(ds1, "histo")
        gHistoricoAdmin.DataSource = ds1.Tables("histo")
        gHistoricoAdmin.DataBind()
        If ds1.Tables("histo").Rows.Count = 0 Then
            lErrorHistorico0.Text = "No hay pedidos anteriores o hubo error al cargarlos. Reintente mas tarde."
            gHistoricoAdmin.Visible = False
        Else
            gHistoricoAdmin.Visible = True
        End If

        pAreaAdministrador.Visible = False
        pVerTodosLosPedidos.Visible = True
    End Sub


    Protected Sub gVerUnPedido0_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gVerUnPedido0.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gVerUnPedido0.Rows(index)
        Dim Item As String = row.Cells(0).Text, en As String = Chr(13) & Chr(10)
        Dim consulta As String = "delete web_pedidos_detalle where ltrim(rtrim(item))='" & Item & "'"
        Dim Npedido As Integer = Session("Npedido")
        lErrorVerUnPedido0.Text = ""

        If (e.CommandName = "quitarV") Then
            If SQL_Accion(consulta) = False Then
                lErrorVerUnPedido0.Text = "No puedo quitar a todos los items del a lista. Intente más tarde."
                lErrorVerUnPedido0.Visible = True
                Exit Sub
            Else

                Dim da1 As New SqlDataAdapter("select web_pedidos_detalle.Item, " & "web_pedidos_detalle.Cantidad from web_pedidos_detalle inner join web_materiales on " & "web_pedidos_detalle.Item = web_materiales.nombre where web_pedidos_detalle.Npedido=" & Npedido & " order by web_materiales.codM", con)
                Dim ds1 As New DataSet
                da1.Fill(ds1, "histo")
                gVerUnPedido0.DataSource = ds1.Tables("histo")
                gVerUnPedido0.DataBind()
                If ds1.Tables("histo").Rows.Count = 0 Then
                    lErrorVerUnPedido0.Text = "Hubo un error al cargar los items del pedido " & Npedido & ", porque no se leyó ninguno. Vuelva a intentarlo."
                    gVerUnPedido0.Visible = False
                Else
                    gVerUnPedido0.Visible = True
                End If
            End If

        End If

    End Sub

    Protected Sub bTerminarVolverVerPedido2_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarVolverVerPedido2.Click
        pVerTodosLosPedidos.Visible = True
        pVerPedidosAdmin.Visible = False
    End Sub

    Protected Sub bVerUsuarios_Click(sender As Object, e As EventArgs) Handles bVerUsuarios.Click
        pUsuarios.Visible = True
        pAreaAdministrador.Visible = False
        AdminUsuarios()
    End Sub

    Protected Sub gUsuarios_RowCommand(sender As Object, e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gUsuarios.RowCommand
        Dim index As Integer = Convert.ToInt32(e.CommandArgument)
        Dim row As GridViewRow = gUsuarios.Rows(index)
        Dim Usuario As String = row.Cells(0).Text
        Dim email As String
        Dim da2 As New SqlDataAdapter("Select email, usuario from Usuarios", con)
        Dim ds2 As New DataSet()
        da2.Fill(ds2, "Usuarios")

        If e.CommandName = "Eliminar" Then

            If (SQL_Accion("Delete from Usuarios Where Usuario = '" + Usuario + "'") = True) Then
                email = ds2.Tables("Usuarios").Rows(0)("email").ToString().Trim().ToLower()
                Dim ok As String = EnviarMail(email, "Usuario Eliminado", "El usuario: " + Usuario + " ha sido eliminado debido a la siguiente razon: " + tRazon.Text)
                tRazon.Text = ""
                AdminUsuarios()
            Else
                lErrorAdministrarUsuarios.Text = "Ha ocurrido un error"
            End If
        End If

        If e.CommandName = "Bloquear" Then
            If (SQL_Accion("UPDATE Usuarios set activo = 0 Where Usuario = '" + Usuario + "'") = True) Then
                email = ds2.Tables("Usuarios").Rows(0)("email").ToString().Trim().ToLower()
                Dim ok As String = EnviarMail(email, "Usuario Bloqueado", "El usuario: " + Usuario + " ha sido bloqueado debido a la siguiente razon: " + tRazon.Text)
                tRazon.Text = ""
                AdminUsuarios()
            Else
                lErrorAdministrarUsuarios.Text = "Ha ocurrido un error"
            End If
        End If


        If e.CommandName = "Desbloquear" Then
            If (SQL_Accion("UPDATE Usuarios set activo = 1 Where Usuario = '" + Usuario + "'") = True) Then
                email = ds2.Tables("Usuarios").Rows(0)("email").ToString().Trim().ToLower()
                Dim ok As String = EnviarMail(email, "Usuario Desbloqueado", "El usuario: " + Usuario + " Fue desbloqueado por la siguiente razon: " + tRazon.Text)
                tRazon.Text = ""
                AdminUsuarios()
            Else
                lErrorAdministrarUsuarios.Text = "hubo un error por favor contactar a sistemas"
            End If
        End If

    End Sub

    Public Sub AdminUsuarios()
        lErrorHistorico0.Text = ""
        Dim da1 As New SqlDataAdapter("select Usuario, Activo from Usuarios order by Usuario desc ", con)
        Dim ds1 As New DataSet()
        da1.Fill(ds1, "UsuariosAdmin")
        gUsuarios.DataSource = ds1.Tables("UsuariosAdmin")
        gUsuarios.DataBind()
        If ds1.Tables("UsuariosAdmin").Rows.Count = 0 Then
            lErrorAdministrarUsuarios.Text = "Ha ocurrido un error. Vuelva a intentarlo."
            gUsuarios.Visible = False
        Else
            gUsuarios.Visible = True
        End If
        gUsuarios.Visible = True
    End Sub

    Protected Sub bTerminarYVolverAdminUsu_Click(sender As Object, e As ImageClickEventArgs) Handles bTerminarYVolverAdminUsu.Click
        pUsuarios.Visible = False
        pAreaAdministrador.Visible = True
    End Sub

    Public Function CreaCodigo(ByVal cantCaracteres As Integer) As String
        Dim strRand As String = Nothing, r As New Random, c As String, i As Integer

        For i = 0 To cantCaracteres - 1
            If Math.Round(r.Next(0, 2)) = 0 Then
                c = Chr(Math.Round(r.Next(48, 58)))
            Else
                c = Chr(Math.Round(r.Next(65, 91)))
            End If
            strRand &= c
        Next
        Return strRand
    End Function

    Protected Sub bValidar_Click(sender As Object, e As ImageClickEventArgs) Handles bValidar.Click

        pVerificaMail.Visible = False

        Dim sqlIngreso As String = Session("sqlIngreso") & " "
        If sqlIngreso.Length < 10 Or sqlIngreso.IndexOf("insert") < 0 Then
            lErroresU.Text = "Hubo un error con el código. Por favor, trate de generar un nuevo código."
            lErroresU.Visible = True
            Exit Sub
        End If
        If tValidar.Text.Trim.ToUpper <> Session("Codigo") Then
            lCodigo.Visible = True
            Exit Sub
        End If


        If SQL_Accion(sqlIngreso) = False Then
            lErroresU.Text = "Hubo un error al tratar de validar al código. Por favor, " &
            "intente generar un nuevo código."

            lErroresU.Visible = True
            Exit Sub
        End If

        Session("idUsuario") = VNum(LeeUnCampo("Select top 1 idUsuario from usuarios where Usuario='" & Session("Usuario") & "' and Pass='" & Session("Password") & "' ", "idusuario"))
        lBienvenido.Text = "Bienvenido " & Session("ApellidoYNombre") & "!"

        Dim mensaje As String, xusuario As String = Session("ApellidoYNombre"),
            en As String = Chr(13) & Chr(10)
        mensaje = "Bienvenido " & xusuario & " a LJT" & en & en &
                    "Te damos la bienvenida a nuestra familia!" & en & en &
                    "Tu usuario es " & """" & Session("Usuario") & """" & en &
                    "Tu clave es " & """" & Session("Password") & """" & en & en &
                    "Ya podes loguearte para ver tus datos!!!" & en & en


        limpiarRegistroU()
        pRegistrarse.Visible = False
        pBienvenido.Visible = True
        bRegistrarseVolverLoginU.Focus()
    End Sub

    Protected Sub bRegresarRegistro_Click(sender As Object, e As ImageClickEventArgs) Handles bRegresarRegistro.Click
        pVerificaMail.Visible = False
        tValidar.Text = ""
        pRegistrarse.Visible = True
    End Sub

    Protected Sub bVolverRegistro_Click(sender As Object, e As ImageClickEventArgs) Handles bVolverRegistro.Click
        pVerificaMail.Visible = False
        tValidar.Text = ""
        pRegistrarse.Visible = True

    End Sub
End Class