<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Sistema._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema</title>
    <style type="text/css">
        body {
            font-family: sans-serif;
        }
        #form1 {
            width: 767px;
            height: auto;
            margin: auto auto;
            margin-top: auto;
            margin-bottom: auto;
        }

        .auto-style10 {
            width: 72px;
            height: 56px;
        }

        .auto-style11 {
            height: 56px;
            width: 275px;
        }
        
        .auto-style14 {
            width: 116px;
            height: 56px;
        }
        .auto-style15 {
            width: 89px;
            height: 56px;
        }

        .auto-style17 {
            height: 35px;
            width: 470px;
        }
        .auto-style18 {
            width: 470px;
        }

        .auto-style19 {
            width: 54px;
        }
        .auto-style21 {
            width: 275px;
        }

        .auto-style22 {
            width: 100%;
        }
        
        .auto-style25 {
            width: 100%;
            height: 295px;
        }
        .auto-style26 {
            height: 2216px;
            width: 764px;
        }

        .auto-style27 {
            height: 56px;
            width: 464px;
        }

        .auto-style28 {
            height: 71px;
        }

        .auto-style30 {
            width: 720px;
            height: 86px;
        }

        .auto-style36 {
            width: 720px;
            height: 137px;
        }

        .auto-style37 {
            width: 329px;
            height: 58px;
        }
        .auto-style38 {
            width: 273px;
            height: 58px;
        }
        .auto-style39 {
            height: 58px;
        }
        .auto-style40 {
            width: 329px;
            height: 64px;
        }
        .auto-style41 {
            width: 273px;
            height: 64px;
        }
        .auto-style42 {
            height: 64px;
        }

        .auto-style43 {
            height: 128px;
        }

        .auto-style44 {
            width: 329px;
            height: 34px;
        }
        .auto-style45 {
            width: 273px;
            height: 34px;
        }
        .auto-style46 {
            height: 34px;
        }
        .auto-style47 {
            width: 329px;
            height: 35px;
        }
        .auto-style48 {
            width: 273px;
            height: 35px;
        }
        .auto-style49 {
            height: 35px;
        }
        .auto-style50 {
            width: 329px;
            height: 33px;
        }
        .auto-style51 {
            width: 273px;
            height: 33px;
        }
        .auto-style52 {
            height: 33px;
        }
        .auto-style56 {
            width: 329px;
            height: 36px;
        }
        .auto-style57 {
            width: 273px;
            height: 36px;
        }
        .auto-style58 {
            height: 36px;
        }
        .auto-style62 {
            width: 329px;
            height: 38px;
        }
        .auto-style63 {
            width: 273px;
            height: 38px;
        }
        .auto-style64 {
            height: 38px;
        }
        .auto-style65 {
            width: 329px;
            height: 39px;
        }
        .auto-style66 {
            width: 273px;
            height: 39px;
        }
        .auto-style67 {
            height: 39px;
        }
        .auto-style68 {
            width: 329px;
            height: 41px;
        }
        .auto-style69 {
            width: 273px;
            height: 41px;
        }
        .auto-style70 {
            height: 41px;
        }

        .auto-style71 {
            width: 763px;
            height: 76px;
        }

        .auto-style72 {
            height: 89px;
        }

        .auto-style73 {
            height: 114px;
        }

        .auto-style79 {
            width: 761px;
        }
        .auto-style81 {
            width: 500px;
        }
        .auto-style84 {
            width: 755px;
        }
        .auto-style85 {
            height: 56px;
            width: 549px;
        }
        .auto-style86 {
            width: 597px;
        }
        .auto-style87 {
            height: 114px;
            width: 597px;
        }
        .auto-style88 {
            width: 750px;
        }
        .auto-style89 {
            height: 114px;
            width: 761px;
        }
        .auto-style90 {
            width: 744px;
        }
        .auto-style91 {
            width: 683px;
        }

        .auto-style94 {
            margin-left: 228px;
        }
        .auto-style96 {
            margin-left: 93px;
        }
        .auto-style97 {
            margin-left: 146px;
        }

        .auto-style98 {
            width: 763px;
        }

        .auto-style99 {
            margin-left: 0px;
            width: 766px;
            height: 35px;
        }

        .auto-style101 {
            margin-left: 225px;
        }
        .auto-style102 {
            width: 415px;
        }
        .auto-style103 {
            width: 766px;
            height: 378px;
        }
        .auto-style107 {
            width: 676px;
        }

        .auto-style108 {
            width: 603px;
        }

        .auto-style109 {
            margin-top: 0px;
        }

        .auto-style110 {
            width: 763px;
            height: 33px;
        }
        .auto-style111 {
            margin-top: 6px;
        }

        .auto-style112 {
            height: 83px;
            width: 464px;
        }
        .auto-style113 {
            height: 71px;
            width: 464px;
        }
        .auto-style114 {
            width: 464px;
        }

        .auto-style115 {
            height: 83px;
        }
        .auto-style116 {
            margin-left: 0px;
        }

        .auto-style117 {
            width: 270px;
        }
        .auto-style118 {
            height: 36px;
            width: 270px;
        }

        .auto-style119 {
            width: 366px;
        }

        .auto-style120 {
            margin-left: 297px;
        }

        .auto-style121 {
            width: 212px;
        }

        .auto-style122 {
            width: 231px;
        }

        .auto-style123 {
            width: 720px;
        }

        .auto-style124 {
            width: 31px;
        }

    </style>
</head>
<body bgcolor="#ffffff">
    <form id="form1" runat="server" class="auto-style26">
        <asp:Panel ID="pPortada" runat="server" Height="350px" Width="765px">
            <asp:ImageButton ID="bPortada" runat="server" ImageAlign="Middle" ImageUrl="~/imagenes/portada.jpg" />

        </asp:Panel>
        <asp:Panel ID="pLogin" runat="server" Height="456px" Font-Bold="true" ForeColor="Blue" Width="757px" Font-Size="Large" BorderStyle="Solid" Visible="false">
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="lVersion" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#999999" Text="Versión"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="Label104" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Ingresá tu usuario y clave y oprimí 'Ingresar'" Font-Names="Verdana" ForeColor="Orange"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style22">
                <tr>
                    <td class="auto-style124"></td>
                    <td class="auto-style19">
                        <asp:Label ID="lUsuario" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Usuario:" Font-Names="Verdana" ForeColor="Orange"></asp:Label>
                    </td>
                    <td align="center" class="auto-style10">
                        <asp:TextBox ID="tUsuario" runat="server" BackColor="Gray" ForeColor="White" MaxLength="10" Wrap="False" Width="130px"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style14">
                        <asp:Label ID="lClave" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Clave:" Font-Names="Verdana" ForeColor="Orange"></asp:Label>
                    </td>
                    <td align="center" class="auto-style15">
                        <asp:TextBox ID="tClave" runat="server" BackColor="Gray" ForeColor="White" MaxLength="10" TextMode="Password" Wrap="False" Width="130px"></asp:TextBox>
                    </td>
                    <td align="center" class="auto-style11">
                        <asp:ImageButton ID="bEntrar" runat="server" Height="54px" ImageUrl="~/imagenes/bEntrar.png" Width="154px" /> <br /><br />
                    
                        <asp:ImageButton ID="bEntrarAdmin" runat="server" Height="50px" ImageUrl="~/imagenes/bEntrarAdmin.png" Width="157px" CssClass="auto-style109" />
                    </td>
                      
                </tr>
                <tr>
                    <td colspan="6" align="center" class="auto-style17">
                        <asp:Label ID="lErrorLogin" runat="server" ForeColor="Red" Font-Size="Medium" Text="Error al iniciar sesión" Visible="False" Width="160%" Font-Names="Verdana"></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style124" colspan="1"></td>
                    <td colspan="4" align="center" class="auto-style18">
                         <asp:Label ID="Label105" runat="server" ForeColor="Orange" Text="Olvidaste tu clave? Ingresá tu usuario y te la mandamos al mail. "></asp:Label>
                        <br />
                         <asp:ImageButton ID="bRecuperarClave" runat="server" Height="50px" ImageUrl="~/imagenes/bReenviarClave.png" Width="179px" ForeColor="#FF9900" />
                    </td>
                    <td class="auto-style21">
                        <asp:Label ID="lReenviarClave" runat="server" Visible="False" Font-Names="Verdana" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style18"></td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="bVolverLogin" runat="server" Height="49px" ImageUrl="~/imagenes/bTerminarVolver.png" Width="207px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pLoginMenu" runat="server" Height="296px" Font-Bold="True" ForeColor="Blue" Width="757px" Font-Size="Large" BorderStyle="Solid" Visible="false">
            <table class="auto-style25">
                <tr>
                    <td class="auto-style27" align="right">
                        <asp:Label ID="Label106" runat="server" ForeColor="Orange" Text="Registrate o ingresá a nuestro sitio"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style112"> 
                        <asp:Label ID="lNoRegistrado" runat="server" ForeColor="Orange" Text="Si todavía no estás registrado, creá tu usuario aquí                      "></asp:Label>
                    </td>
                     <td align="right" class="auto-style115">
                        <asp:ImageButton ID="bRegistrarse" runat="server" ImageUrl="~/imagenes/bRegistrarse.png" Width="199px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style113">
                        <asp:Label ID="lYaRegistrado" runat="server" ForeColor="Orange" Text="Si ya estás registrado, ingresá por acá"></asp:Label>
                        
                    </td>
                     <td align="right" class="auto-style28">
                        <asp:ImageButton ID="bALogin" runat="server" ImageUrl="~/imagenes/bYaRegistrado.png" Width="198px" Height="51px" CssClass="auto-style116" />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="auto-style114">
                        <asp:ImageButton ID="bRegistrarseVolverLoginU" runat="server" ImageUrl="~/imagenes/bTerminarVolver.png" Height="44px" Width="196px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pRegistrarse" runat="server" BorderColor="#66CCFF" Height="996px" Visible="false" ForeColor="#372C57" Style="margin-right: 0px" Font-Size="Large" Width="762px">
            <table>
                <tr>
                    <td align="center" class="auto-style30">
                        <asp:Image ID="iReg" runat="server" ImageUrl="~/imagenes/tituloRegistrarse.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">Para poder registrarte debes ser mayor de 18 años, residir en Argentina y contar con documento válido de Argentina que acredite tu identidad.<br /> Sólo se puede hacer un registro por documento. Los datos deben ser reales, correctos y vigentes.
                        <br />
                        Todos los datos a continuación (menos Origen) son obligatorios.
                    </td>

                </tr>
                <tr><td class="auto-style123"></td></tr>
            </table>
            <table class="auto-style22">
                <tr>
                    <td class="auto-style44">

                        Tu/s Nombre/s</td>
                    <td align="center" class="auto-style45">
                        <asp:TextBox ID="tNombreU" runat="server" MaxLenght="20" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style46">
                        <asp:Label ID="lENombreU"  runat="server" ForeColor="Red" Font-Bold="true"  Text="lENombreU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style47">

                        Apellido/s</td>
                    <td align="center" class="auto-style48">
                        <asp:TextBox ID="tApellidoU" runat="server" MaxLenght="20" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:Label ID="lEApellidoU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEApellidoU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style50">

                        Tipo Doc.:</td>
                    <td align="center" class="auto-style51">
                        <asp:DropDownList ID="dTDocU" runat="server" BackColor="Gray" ForeColor="White">
                            <asp:ListItem Value="DNI">Doc. Nacional de Identidad</asp:ListItem>
                            <asp:ListItem Value="LC">Libreta Cívica</asp:ListItem>
                            <asp:ListItem Value="LE">Libreta de Enrolamiento</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style52">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style47">

                        Nro Doc. (sin puntos ni espacios)</td>
                    <td align="center" class="auto-style48">
                        <asp:TextBox ID="tDocU" runat="server" MaxLenght="8" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:Label ID="lEDocU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEDocU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style47">

                        Fecha Nac.: (ddmmaa)</td>
                    <td align="center" class="auto-style48">
                        <asp:TextBox ID="tF_Nac" runat="server" MaxLenght="6" BackColor="Gray" ForeColor="White" Width="107px"></asp:TextBox>
                        <asp:Label ID="lEdad" runat="server" Text="0"></asp:Label>
                    </td>
                    <td class="auto-style49">
                        <asp:Label ID="lEFNac"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEFNac" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">

                        Email válido para notificaciones</td>
                    <td align="center" class="auto-style38">
                        <asp:TextBox ID="tEmailU" runat="server" MaxLenght="70" TextMode="MultiLine" BackColor="Gray" ForeColor="White" Width="228px" Height="41px"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:Label ID="lEEmailU"  runat="server" ForeColor="Red" Font-Bold="true"  Text="lEEmailU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style56">

                        Provincia</td>
                    <td align="center" class="auto-style57">
                        <asp:DropDownList ID="didProvU" runat="server" BackColor="Gray" ForeColor="White">
                            <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                            <asp:ListItem Value="2">Catamarca</asp:ListItem>
                            <asp:ListItem Value="3">Chaco</asp:ListItem>
                            <asp:ListItem Value="4">Chubut</asp:ListItem>
                            <asp:ListItem Value="5">CABA</asp:ListItem>
                            <asp:ListItem Value="6">Cordoba</asp:ListItem>
                            <asp:ListItem Value="7">Corrientes</asp:ListItem>
                            <asp:ListItem Value="8">Entre Rios</asp:ListItem>
                            <asp:ListItem Value="9">Formosa</asp:ListItem>
                            <asp:ListItem Value="10">Jujuy</asp:ListItem>
                            <asp:ListItem Value="11">La Pampa</asp:ListItem>
                            <asp:ListItem Value="12">La Rioja</asp:ListItem>
                            <asp:ListItem Value="13">Mendoza</asp:ListItem>
                            <asp:ListItem Value="14">Misiones</asp:ListItem>
                            <asp:ListItem Value="15">Neuquén</asp:ListItem>
                            <asp:ListItem Value="16">Río Negro</asp:ListItem>
                            <asp:ListItem Value="17">Salta</asp:ListItem>
                            <asp:ListItem Value="18">San Juan</asp:ListItem>
                            <asp:ListItem Value="19">San Luis</asp:ListItem>
                            <asp:ListItem Value="20">Santa Cruz</asp:ListItem>
                            <asp:ListItem Value="21">Santa Fé</asp:ListItem>
                            <asp:ListItem Value="22">Santiago Del Estero</asp:ListItem>
                            <asp:ListItem Value="23">Tucuman</asp:ListItem>
                            <asp:ListItem Value="24">Tierra Del Fuego</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style58">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style56">

                        Localidad</td>
                    <td align="center" class="auto-style57">
                        <asp:TextBox ID="tLocalidadU" runat="server" MaxLenght="20" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        <asp:Label ID="lELocalidadU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lELocalidadU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style40">

                        Direccion</td>
                    <td align="center" class="auto-style41">
                        <asp:TextBox ID="tDireccionU" runat="server" MaxLenght="100" TextMode="MultiLine" BackColor="Gray" ForeColor="White" Width="228px" Height="44px"></asp:TextBox>
                    </td>
                    <td class="auto-style42">
                        <asp:Label ID="lEDireccionU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEDireccionU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style62">

                        Teléfono (agregue caracteristica)</td>
                    <td align="center" class="auto-style63">
                        <asp:TextBox ID="tTelefonosU" runat="server" MaxLenght="25" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style64">
                        <asp:Label ID="lETelefonosU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lETelefonosU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style65">

                        Usuario</td>
                    <td align="center" class="auto-style66">
                        <asp:TextBox ID="tUsuarioU" runat="server" MaxLenght="10" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style67">
                        <asp:Label ID="lEUsuarioU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEUsuarioU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style62">

                        Clave</td>
                    <td align="center" class="auto-style63">
                        <asp:TextBox ID="tPassU" runat="server" MaxLenght="10" TextMode="Password" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style64">
                        <asp:Label ID="lEPassU"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEPassU" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">

                        Repetir clave</td>
                    <td align="center" class="auto-style69">
                        <asp:TextBox ID="tPass2U" runat="server" MaxLenght="10" TextMode="Password" BackColor="Gray" ForeColor="White" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style70">
                        <asp:Label ID="lEPass2U"  runat="server" ForeColor="Red" Font-Bold="True"  Text="lEPass2U" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="lErroresU" runat="server" ForeColor="Red" Text="lErroresU" Visible="false"></asp:Label>
                        <br />
                    </td>
                </tr>

            </table>
            <table class="auto-style22">
                <tr>
                    <td align="center" class="auto-style43">
                        <asp:ImageButton ID="bRegistrarseU" runat="server" ImageUrl="~/imagenes/bRegistrarseU.png" Height="51px" Width="157px" />
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="bRegistrarseUO" runat="server" ImageUrl="~/imagenes/bCancelarVolver.png" Height="50px" Width="193px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pBienvenido" runat="server" BorderColor="#66CCFF" Height="352px" ForeColor="#372C57" Font-Size="Large" Visible="false">
            <table style= "width: 100%;" class="auto-style71">
                <tr>
                    <td align="center" class="auto-style72">
                        <asp:Label ID="lBienvenido" runat="server" Text="¡Bienvenid@!" Font-Size="XX-Large" Font-Names="Verdana" ForeColor="Orange"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" color="#FF500">

                        <br />

                        Ya sos parte de LJT. Es hora de empezar a cumplir tus sueños!<br />
                        <br />
                        &nbsp;Nos alegra mucho que estés con nosotros,
                        <br />
                        atte.: El equipo de LJT<br />
                        <br />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style73">
                        <asp:ImageButton ID="bVolver" runat="server" ImageUrl="~/imagenes/bTodoOk.png" Height="44px" Width="280px"/>
                    </td>
                </tr>
            </table>
        </asp:Panel> 
        <asp:Panel ID="pAreaUsuario" runat="server" Visible="false" Height="413px" Width="764px">
            
            <table style="text-align: center;" class="auto-style2">
                <tr>
                    <td class="auto-style110">
                        <asp:Label ID="lBienvenidoAreaU" runat="server" Text="Bienvenido/a !!" Font-Size="X-Large" ForeColor="Orange" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bAhoraQueHago" runat="server" ImageUrl="~/imagenes/bAhoraQueHago.png" OnClick="bAhoraQueHago_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">Desde aca vas a poder hacer varias cosas relacionadas con tu cuenta en LJT<br />
                        </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bModificarDatos" runat="server" ImageUrl="~/imagenes/bModificarDatos.png" OnClick="bModificarDatos_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bPedidos" runat="server" ImageUrl="~/imagenes/bPedidosFabrica.png" OnClick="bPedidos_Click" Width="216px" CssClass="auto-style116" Height="49px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bVolverLoginU1" runat="server" ImageUrl="~/imagenes/bTerminarVolver.png" OnClick="bVolverLoginU1_Click" />
                    </td>
                </tr>

            </table>

       
            
        </asp:Panel>

       
            <asp:Panel ID="pAreaAdministrador" runat="server" BorderColor="#66CCFF" Visible="False" Height="440px">
            <table style="text-align: center;" class="auto-style2">
                <tr>
                    <td class="auto-style98">
                        <asp:Label ID="Label1" runat="server" Text="Bienvenido/a Administrador/a !!" Font-Size="X-Large" ForeColor="Orange" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bAhoraQueHagoAdmin" runat="server" ImageUrl="~/imagenes/bAhoraQueHago.png" OnClick="bAhoraQueHago_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">Desde aca vas a poder hacer varias cosas relacionadas con tu cuenta en LJT<br />
                        <asp:Button ID="bABMProductos" runat="server" BackColor="Orange" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Text="ABM Productos" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:Button ID="bTodosLosPedidos" runat="server" BackColor="Orange" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Text="Ver todos los pedidos" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:Button ID="bVerUsuarios" runat="server" BackColor="Orange" Font-Bold="True" Font-Names="Verdana" ForeColor="White" Text="Ver Usuarios" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style98">
                        <asp:ImageButton ID="bVolverLoginAdmin" runat="server" ImageUrl="~/imagenes/bterminarvolver.png" OnClick="bVolverLoginU1_Click" />
                    </td>
                </tr>

            </table>

       
            
        </asp:Panel>
        <asp:Panel ID="pAhoraQueHago" runat="server" Visible="false" Height="271px" CssClass="auto-style111">
            <table class="auto-style84">
                <tr>
                    <td class="auto-style85" align="center">Te cuento un poco....</td>
                </tr>
                <tr>
                    <td class="auto-style86" align="center">El equipo de LJT te da la bienvenida. Contamos con la mejor calidad y el mejor precio en materiales y herramientas para la construcción. En este espacio podrás hacer tus pedidos, y te los llevamos a tu casa, completamente gratis! Si, si, leiste bien. Queremos que cumplas tus sueños, así que el costo de envío va por nuestra cuenta. Vos encargate de imaginar. Nosotros hacemos el resto ;) </td>
                </tr>
                <tr>
                    <td class="auto-style87" align="center">
                        <asp:ImageButton ID="bVolverLoginU2" runat="server" ImageUrl="~/imagenes/bterminarvolver.png" CssClass="auto-style97" />
                    </td>
                </tr>
            </table>

        </asp:Panel>

        <asp:Panel ID="pCambiarDatosPersonales" runat="server" Height="443px" BackImageUrl="~/imagenes/datospersonales.jpg" Visible="false">
            <table class="auto-style88">
                <tr>
                    <td class="auto-style79"></td>
                </tr>
                <tr>
                    <td align="center" class="auto-style79">
                        <asp:Label ID="lcambiarDatos" runat="server" Font-Size="Large" ForeColor="Orange" >Cambiar tus datos personales</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79">
                        <table class="auto-style90">
                            <tr>
                                <td class="auto-style91" colspan="3"></td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Email válido para notificaciones:</td>
                                <td class="auto-style94">
                                    <asp:TextBox ID="tEmailUM" runat="server" BackColor="Gray" ForeColor="White" Height="21px" MaxLenght="70" TextMode="MultiLine" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lEEmailUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lEEmailU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Provincia:</td>
                                <td class="auto-style94">
                                    <asp:DropDownList ID="didProvUM" runat="server" BackColor="Gray" ForeColor="White">
                                        <asp:ListItem Value="1">Buenos Aires</asp:ListItem>
                                        <asp:ListItem Value="2">Catamarca</asp:ListItem>
                                        <asp:ListItem Value="3">Chaco</asp:ListItem>
                                        <asp:ListItem Value="4">Chubut</asp:ListItem>
                                        <asp:ListItem Value="5">CABA</asp:ListItem>
                                        <asp:ListItem Value="6">Cordoba</asp:ListItem>
                                        <asp:ListItem Value="7">Corrientes</asp:ListItem>
                                        <asp:ListItem Value="8">Entre Rios</asp:ListItem>
                                        <asp:ListItem Value="9">Formosa</asp:ListItem>
                                        <asp:ListItem Value="10">Jujuy</asp:ListItem>
                                        <asp:ListItem Value="11">La Pampa</asp:ListItem>
                                        <asp:ListItem Value="12">La Rioja</asp:ListItem>
                                        <asp:ListItem Value="13">Mendoza</asp:ListItem>
                                        <asp:ListItem Value="14">Misiones</asp:ListItem>
                                        <asp:ListItem Value="15">Neuquén</asp:ListItem>
                                        <asp:ListItem Value="16">Río Negro</asp:ListItem>
                                        <asp:ListItem Value="17">Salta</asp:ListItem>
                                        <asp:ListItem Value="18">San Juan</asp:ListItem>
                                        <asp:ListItem Value="19">San Luis</asp:ListItem>
                                        <asp:ListItem Value="20">Santa Cruz</asp:ListItem>
                                        <asp:ListItem Value="21">Santa Fé</asp:ListItem>
                                        <asp:ListItem Value="22">Santiago Del Estero</asp:ListItem>
                                        <asp:ListItem Value="23">Tucuman</asp:ListItem>
                                        <asp:ListItem Value="24">Tierra Del Fuego</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style107">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Localidad:</td>
                                <td class="auto-style96">
                                    <asp:TextBox ID="tLocalidadUM" runat="server" BackColor="Gray" ForeColor="White" MaxLenght="20" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lELocalidadUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lELocalidadU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Dirección</td>
                                <td class="auto-style94">
                                    <asp:TextBox ID="tDireccionUM" runat="server" BackColor="Gray" ForeColor="White" Height="18px" MaxLenght="100" TextMode="MultiLine" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lEDireccionUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lEDireccionU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Teléfono (con característica):</td>
                                <td class="auto-style94">
                                    <asp:TextBox ID="tTelefonosUM" runat="server" BackColor="Gray" ForeColor="White" MaxLenght="25" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lETelefonosUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lETelefonosU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Usuario:</td>
                                <td class="auto-style94">
                                    <asp:TextBox ID="tUsuarioUM" runat="server" BackColor="Gray" ForeColor="White" MaxLenght="10" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lEUsuarioUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lEUsuarioU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style81">Clave:</td>
                                <td class="auto-style94">
                                    <asp:TextBox ID="tPassUM" runat="server" BackColor="Gray" ForeColor="White" MaxLenght="10" TextMode="Password" Width="228px"></asp:TextBox>
                                </td>
                                <td class="auto-style107">
                                    <asp:Label ID="lEPassUM" runat="server" Font-Bold="True" ForeColor="Red" Text="lEPassU" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="center">
                                    <asp:Label ID="lErroresUM" runat="server" ForeColor="Red" Text="Error" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">&nbsp;</td>
                            </tr>
                        </table>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style102" align="center">
                                    <asp:ImageButton ID="bCambiarDatos" runat="server" ImageUrl="~/imagenes/bCambiarDatos.png" Height="60px" Width="221px" />
                                </td>
                                <td class="auto-style101" align="center">
                                    <asp:ImageButton ID="bCancelarModificar" runat="server" ImageUrl="~/imagenes/bcancelarvolver.png" Height="61px" Width="215px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </asp:Panel>

        <asp:Panel ID="pCambiosGuardados" runat="server" Visible="false" BackImageUrl="~/imagenes/datospersonales.jpg" Height="378px">
            <table class="auto-style103">
                <tr>
                    <td class="auto-style79">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style89">
                        <asp:Label ID="lcambiosCorrectos" runat="server" Font-Size="X-Large" Font-Names="Verdana" ForeColor="Orange" >Los datos han sido modificados correctamente.</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style79">
                        <asp:ImageButton ID="bvolverAreaUsuario" runat="server" ImageUrl="~/imagenes/bVolverAreaUsuario.png" Height="63px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pPedidos" runat="server" BorderColor="#66CCFF" Visible="False" Height="260px">
            <table style="width: 100%; text-align: center;">
                <tr>
                    <td class="auto-style5" style="text-align: left;">Menú de pedidos</td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="bNuevoPedido" runat="server" ImageUrl="~/imagenes/bnuevopedido.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/imagenes/btodoslospedidos.png" OnClick="ImageButton4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/imagenes/bterminarvolver.png" OnClick="ImageButton5_Click" />
                    </td>
                </tr>
            </table>


        </asp:Panel>

        <asp:Panel ID="pNuevoPedido" runat="server" BorderColor="#66CCFF" Visible="False" Height="700px" Font-Names="Verdana">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style5">Nuevo pedido:</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="bInstrucciones" runat="server" Text="Abrir Instrucciones" />
                        &nbsp;
                        <asp:Label ID="lInstrucciones" runat="server" Text="Instrucciones" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Seleccione el material que desea encargar:<br />
                        <asp:DropDownList ID="dProductos" runat="server" BackColor="#333333" Font-Size="X-Large" ForeColor="White" Height="66px" Width="758px">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>

            </table>
            <br />
            <table class="auto-style108">
                <tr>
                    <td>Agregar:</td>
                    <td>
                        <asp:Label ID="lCosaAgregar" runat="server" Text="Label" Font-Names="Verdana"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lQueEs" runat="server" Text="Label" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />

            <table class="auto-style2">
                <tr>
                    <td>Cantidad de unidades:</td>
                    <td>
                        <asp:DropDownList ID="tCantLatas" runat="server" BackColor="#333333" Font-Size="X-Large" ForeColor="White" Height="66px" Width="59px">
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                            <asp:ListItem Value="8"></asp:ListItem>
                            <asp:ListItem Value="9"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                        </asp:DropDownList>
                    </td>

                    <td style="text-align: center;">
                        <asp:ImageButton ID="bAgregarALista" runat="server" ImageUrl="~/imagenes/bagregaralista.png" Width="157px" />
                    </td>

                </tr>
            </table>

            <table class="auto-style2">
                <tr>
                    <td>Esta es la lista de su pedido.<asp:GridView ID="gListaPedido" runat="server" Height="280px" Width="761px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:ButtonField ButtonType="Image" CommandName="Quitar" ImageUrl="~/imagenes/bQuitar.png" Text="Quitar" />
                            <asp:BoundField DataField="item" HeaderText="Item Solicitado" />
                            <asp:BoundField DataField="Cantidad" HeaderText="Cant." />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                    </td>
                </tr>
            </table>

            <table class="auto-style99" style="text-align: center;">
                <tr>
                    <td>
                        <asp:ImageButton ID="bQuitarTodos" runat="server" ImageUrl="~/imagenes/bquitartodos.png" Height="44px" Width="158px" />
                    </td>

                    <td class="auto-style121">
                        <asp:ImageButton ID="bSolicitarPedido" runat="server" ImageUrl="~/imagenes/bEnviar.png" Width="125px" OnClick="bSolicitarPedido_Click" Height="44px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="bCancelarPedido" runat="server" ImageUrl="~/imagenes/bcancelarpedido.png" Width="140px" Height="45px" />
                        <br />
                    </td>
                    <caption>
                        <br />
                    </caption>
                </tr>
               
                <tr>
                    <td>
                        <asp:Label ID="lErrorPedido" runat="server" Font-Names="Verdana" ForeColor="Red" Text="lErrorPedido"></asp:Label>
                    </td>
                </tr>
            </table>

        </asp:Panel>
      <asp:Panel ID="pPedidoCreado" runat="server" BorderColor="#66CCFF" Visible="False" Height="300px">
            <table style="width: 100%; text-align:center;">
                <tr>
                    <td>
                        &nbsp;</td>

                </tr>
               
            </table>
            <br />
            <asp:Label ID="lPedidoCreado" runat="server" Font-Names="Verdana" Text="Label"></asp:Label>
            <br />
            <br />
             <table style="width: 100%; text-align:center;">

                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/imagenes/bterminarvolver.png" />
                    </td>
                </tr>
            </table>

        </asp:Panel>
       <asp:Panel ID="pHistorico" runat="server" Visible="false" Height="535px" HorizontalAlign="Center">
            <strong><span class="auto-style112">&nbsp;Histórico de pedidos y revisar estado</span></strong><table class="auto-style131">
                <tr>
                    <td class="auto-style132" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style133" colspan="2">
                        <asp:Label ID="lErrorHistorico" ForeColor="Red" runat="server" Font-Names="Verdana" ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style134" colspan="2">
                        <asp:Label ID="lPedidoAnulado" runat="server" ForeColor="#009900" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style135" colspan="2">
                        <asp:GridView ID="gHistorico" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="756px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Ver" Text="Ver Pedido">
                                <ControlStyle BackColor="#33CC33" />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="Anular" HeaderText="(solo &quot;Solicitado&quot;)" Text="Anular Pedido">
                                <ControlStyle BackColor="#CC0000" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="NPedido" HeaderText="Nro. de Pedido" />
                                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy HH:mm:tt}" HeaderText="Fecha y Hora" />
                                <asp:BoundField DataField="estado" HeaderText="Estado del pedido" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style119">
                        <asp:ImageButton ID="bActualizarHistorico" runat="server" ImageUrl="~/imagenes/bactualizar.png" Height="43px" Width="138px" />
                    </td>
                    <td class="auto-style128">
                        <asp:ImageButton ID="bTerminarVolverHistorico" runat="server" ImageUrl="~/imagenes/bterminarvolver.png" Width="208px" Height="43px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>


        

        <asp:Panel ID="pVerUnPedido" runat="server" BorderColor="#66CCFF" Visible="False" Height="400px">
            <table style="width: 100%; text-align:center;">
                <tr>
                    <td>
                        <asp:Label ID="Label" runat="server" Font-Size="X-Large" ForeColor="Orange" Text="Detalle del pedido N°" Visible="False" Font-Names="Verdana" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="gVerUnPedido" runat="server" AutoGenerateColumns="False" align="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="242px" Width="568px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Item" HeaderText="Item Solicitado" />
                                <asp:BoundField DataField="Cantidad" HeaderText="Cant." />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="lErrorVerUnPedido" runat="server" ForeColor="Red" Text="lErrorVerUnPedido" Visible="False" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
            </table>

            <table class="auto-style2" style="text-align: center;">
                <tr>

                    <td>
                        <asp:ImageButton ID="bTerminarVolverVerPedido" runat="server"  ImageUrl="~/imagenes/bTerminarVolver.png" Height="42px" Width="169px" CssClass="auto-style120" />
                    </td>

                </tr>
            </table>

        </asp:Panel>


        <asp:Panel ID="pABMProductos" runat="server" Visible="false" Height="403px">
            <table class="auto-style162">
                <tr>
                    <td class="auto-style79">
                        ABM productos - LJT Construcciones<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79"  align="Center">
                        <asp:Button ID="bCargarABM" runat="server" BackColor="Orange" ForeColor="White" Height="45px" Text="Cargar nuevo producto" Width="194px" Font-Bold="True" Font-Names="Verdana" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79"  align="Center">
                        <asp:Button ID="bModificarABM" runat="server" BackColor="Orange" ForeColor="White" Height="45px" Text="Modificar un producto" Width="194px" Font-Bold="True" Font-Names="vernana" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79"  align="Center">
                        <asp:Button ID="bEliminarABM" runat="server" BackColor="Orange" ForeColor="White" Height="45px" Text="Eliminar un producto" Width="194px" Font-Bold="True" Font-Names="Verdana" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style79"></td>
                </tr>
                <tr>
                    <td class="auto-style79"  align="Center">
                        <asp:ImageButton ID="bTerminarVolverVerPedido0" runat="server" Height="41px" ImageUrl="~/imagenes/bterminarvolver.png" Width="153px" />
                    </td>
                </tr>
            </table>

        </asp:Panel>

        <asp:Panel ID="pCargarProducto" runat="server" Visible="false" Height="382px" BackColor="White" Font-Bold="True" Font-Names="Verdana">
            <table class="auto-style168">
                <tr>
                    <td class="auto-style190" colspan="3"><strong>Cargar un nuevo producto</strong></td>
                </tr>
                <tr>
                    <td class="auto-style174">
                        <asp:Label ID="Label107" runat="server" Text="Nombre del producto" Width="237px" Font-Bold="False"></asp:Label>
                    </td>
                    <td class="auto-style122" colspan="1">
                        <asp:TextBox ID="tNProd" runat="server" BackColor="#666666" ForeColor="White" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style117">
                        <asp:Label ID="lErrorNProd" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style176">
                        <asp:Label ID="Label108" runat="server" Text="Precio (Sin IVA)" Width="237px" Font-Bold="False"></asp:Label>
                    </td>
                    <td class="auto-style122" colspan="1">
                        <asp:TextBox ID="tPrecioProd" runat="server" BackColor="#666666" ForeColor="White" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style117">
                        <asp:Label ID="lErrorPrecioProd" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style197">
                        <asp:Label ID="Label109" runat="server" Text="Stock" Width="237px" Font-Bold="False"></asp:Label>
                    </td>
                    <td class="auto-style122" colspan="1">
                        <asp:TextBox ID="tStockProd" runat="server" BackColor="#666666" ForeColor="White" Width="338px"></asp:TextBox>
                    </td>
                    <td class="auto-style118">
                        <asp:Label ID="lErrorStockProd" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style189" colspan="3">
                        <br />
                        <asp:Label ID="lProdAgregado" runat="server" ForeColor="#99FF66" Text="Producto Agregado" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style199" colspan="3">
                        <asp:Label ID="lErrorProdEx" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style198" colspan="1" align="right">
                        <asp:ImageButton ID="bTerminarVolverVerPedido1" runat="server" Height="40px" ImageUrl="~/imagenes/bterminarvolver.png" Width="156px" />
                    </td>
                    <td class="auto-style122" colspan="1">&nbsp;</td>
                    <td class="auto-style117">
                        <asp:ImageButton ID="bAgregarProd" runat="server" Height="40px" ImageUrl="~/imagenes/bAgregarALista.png" Width="136px" CssClass="auto-style116" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style109" colspan="3"></td>
                </tr>
            </table>
        </asp:Panel>

       <asp:Panel ID="pModificarProd" runat="server" Visible="false" Height="451px">
            <table class="auto-style168">
                <tr>
                    <td class="auto-style190" colspan="3"><strong>Modificar un producto</strong></td>
                </tr>
                <tr>
                    <td class="auto-style174">
                        <asp:Label ID="Label2" runat="server" Text="Nombre del producto" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style193" colspan="1">
                        <asp:DropDownList ID="dProductos0" runat="server" AutoPostBack="True" CssClass="auto-style201" Height="17px" Width="236px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style175">
                        <asp:Button ID="bBuscarProd" runat="server" Text="Seleccionar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style200" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style176">
                        <asp:Label ID="Label4" runat="server" Text="Nombre del producto" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style194" colspan="1">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#666666" ForeColor="White" Width="232px"></asp:TextBox>
                    </td>
                    <td class="auto-style177">
                        <asp:Label ID="Label5" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style176">
                        <asp:Label ID="Label111" runat="server" Text="Precio (Sin IVA)" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style194" colspan="1">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#666666" ForeColor="White" Width="232px"></asp:TextBox>
                    </td>
                    <td class="auto-style177">
                        <asp:Label ID="Label112" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style197">
                        <asp:Label ID="Label6" runat="server" Text="Stock" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style195" colspan="1">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#666666" ForeColor="White" Width="229px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        <asp:Label ID="Label7" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style189" colspan="3">
                        <br />
                        <asp:Label ID="lProdModificado" runat="server" ForeColor="#99FF66" Text="Producto Modificado" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style199" colspan="3">
                        <asp:Label ID="lErrorModificarProd" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style198" colspan="1">
                        <asp:ImageButton ID="bVolverModificar" runat="server" Height="37px" ImageUrl="~/imagenes/bterminarvolver.png" Width="153px" />
                    </td>
                    <td class="auto-style196" colspan="1">&nbsp;</td>
                    <td class="auto-style128">
                        <asp:ImageButton ID="bModificarProducto" runat="server" Height="39px" ImageUrl="~/imagenes/bmodificardatos.png" Width="223px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style109" colspan="3"></td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="pEliminarProd" runat="server" Visible="false" CssClass="auto-style202" Height="521px">
            <table class="auto-style168">
                <tr>
                    <td class="auto-style190" colspan="3"><strong>Eliminar un producto</strong></td>
                </tr>
                <tr>
                    <td class="auto-style208" colspan="3"><em><span class="auto-style209">Para eliminar un producto, debe elegirlo en la lista desplegable y oprimir seleccionar. Luego, debe oprimir el botón eliminar y confirmar su decisión.</span></em></td>
                </tr>
                <tr>
                    <td class="auto-style174">
                        <asp:Label ID="Label113" runat="server" Text="Nombre del producto" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style193" colspan="1">
                        <asp:DropDownList ID="dProductosEliminar" runat="server" AutoPostBack="True" CssClass="auto-style201" Height="17px" Width="236px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style175">
                        <asp:Button ID="bSeleccionarProd" runat="server" Text="Seleccionar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style200" colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style176">
                        <asp:Label ID="lNPElim" runat="server" Text="Nombre del producto" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style194" colspan="1">
                        <asp:TextBox ID="tNombreElim" runat="server" BackColor="#666666" ForeColor="White" Width="232px"></asp:TextBox>
                    </td>
                    <td class="auto-style177">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style176">
                        <asp:Label ID="lPSIElim" runat="server" Text="Precio (Sin IVA)" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style194" colspan="1">
                        <asp:TextBox ID="tPrecioElim" runat="server" BackColor="#666666" ForeColor="White" Width="232px"></asp:TextBox>
                    </td>
                    <td class="auto-style177">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style197">
                        <asp:Label ID="lStockElim" runat="server" Text="Stock" Width="237px"></asp:Label>
                    </td>
                    <td class="auto-style195" colspan="1">
                        <asp:TextBox ID="tStockElim" runat="server" BackColor="#666666" ForeColor="White" Width="229px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style189" colspan="3">
                        <asp:Label ID="lProductoEliminado" runat="server" ForeColor="#99FF66" Text="Producto Eliminado" Visible="False" Font-Bold="True" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style64" colspan="3">
                        <asp:Label ID="lErrorEliminar" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style207" colspan="2">
                        <asp:Label ID="lEliminarSeguro" runat="server" ForeColor="#FF3300" Text="¿Desea eliminar definitivamente el producto?" Visible="False" Font-Names="Verdana"></asp:Label>
                    </td>
                    <td class="auto-style207">
                        <asp:Button ID="bEliminarNo" runat="server" BackColor="#009900" ForeColor="White" Text="No eliminar" Visible="False" Width="73px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="bEliminarSi" runat="server" BackColor="#FF3300" ForeColor="White" Text="Eliminar" Visible="False" Width="73px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style203" colspan="1">
                        <asp:ImageButton ID="bVolverEliminar" runat="server" Height="41px" ImageUrl="~/imagenes/bterminarvolver.png" Width="160px" />
                    </td>
                    <td class="auto-style204" colspan="1"></td>
                    <td class="auto-style205">
                        <asp:Button ID="bEliminarProd" runat="server" BackColor="#FF3300" ForeColor="White" Text="Eliminar" Width="151px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style109" colspan="3">&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>

       <asp:Panel ID="pVerTodosLosPedidos" runat="server" Visible="false" Height="535px" HorizontalAlign="Center">
            <span class="auto-style112">Todos los pedidos recibidos</span><table class="auto-style131">
                <tr>
                    <td class="auto-style132" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style133" colspan="2">
                        <asp:Label ID="lErrorHistorico0" runat="server" Font-Names="Verdana" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style134" colspan="2">
                        <asp:Label ID="lPedidoAnulado0" runat="server" Font-Names="Verdana" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style135" colspan="2">
                        <asp:GridView ID="gHistoricoAdmin" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="756px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Ver" Text="Ver Pedido">
                                <ControlStyle BackColor="#33CC33" />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="Anular" HeaderText="(solo &quot;Solicitado&quot;)" Text="Anular Pedido">
                                <ControlStyle BackColor="#CC0000" />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="Editar" Text="Editar Pedido">
                                <ControlStyle BackColor="#33CC33" />
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="CambiarEstado" Text="Cambiar estado">
                                <ControlStyle BackColor="#33CC33" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="NPedido" HeaderText="Nro. de Pedido" />
                                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy HH:mm:tt}" HeaderText="Fecha y Hora" />
                                <asp:BoundField DataField="estado" HeaderText="Estado del pedido" />
                                <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style119">
                        <asp:ImageButton ID="bActualizarHistorico0" runat="server" Height="43px" ImageUrl="~/imagenes/bactualizar.png" Width="138px" />
                    </td>
                    <td class="auto-style128">
                        <asp:ImageButton ID="bTerminarVolverHistorico0" runat="server" Height="43px" ImageUrl="~/imagenes/bterminarvolver.png" Width="208px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>


        

        <asp:Panel ID="pVerPedidosAdmin" runat="server" BorderColor="#66CCFF" Visible="False" Height="461px">
            <table style="width: 100%; text-align:center;">
                <tr>
                    <td>
                        <asp:Label ID="Label114" runat="server" Font-Size="X-Large" ForeColor="Orange" Text="Detalle del pedido N°" Visible="False" Font-Names="Verdana" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="gVerUnPedido0" runat="server" AutoGenerateColumns="False" align="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="242px" Width="568px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Item" HeaderText="Item Solicitado" />
                                <asp:BoundField DataField="Cantidad" HeaderText="Cant." />
                                <asp:ButtonField ButtonType="Image" CommandName="Quitar" ImageUrl="~/imagenes/bQuitar.png" Text="Quitar" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="lErrorVerUnPedido0" runat="server" ForeColor="Red" Text="lErrorVerUnPedido" Visible="False" Font-Names="Verdana"></asp:Label>
                    </td>
                </tr>
            </table>

            <table class="auto-style2" style="text-align: center;">
                <tr>

                    <td>
                        <asp:ImageButton ID="bTerminarVolverVerPedido2" runat="server"  ImageUrl="~/imagenes/bTerminarVolver.png" Height="42px" Width="169px" CssClass="auto-style120" />
                    </td>

                </tr>
            </table>

        </asp:Panel>

        <asp:Panel ID="pUsuarios" runat="server" Height="350px" Visible="False">
            <table style="width: 100%; text-align: center">
                <tr>
                    <td>
                        <asp:Label ID="Label142" runat="server" Font-Size="X-Large" Text="Lista de Usuarios" Font-Bold="True" Font-Names="Verdana" ForeColor="Orange"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lErrorAdministrarUsuarios" runat="server" ForeColor="Red" Text="lErrorAdministrarUsuarios" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gUsuarios" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="gUsuarios_RowCommand" Width="761px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                                <asp:BoundField DataField="Activo" HeaderText="Activo" />
                                <asp:ButtonField ButtonType="Button" CommandName="Bloquear" Text="Bloquear">
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="Desbloquear" Text="Desbloquear"> 
                                </asp:ButtonField>
                                <asp:ButtonField ButtonType="Button" CommandName="Eliminar" Text="Eliminar">
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="tRazon" runat="server" BackColor="#333333" ForeColor="White" Height="23px" Width="556px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="bTerminarYVolverAdminUsu" runat="server" Height="40px" ImageUrl="~/imagenes/bterminarvolver.png" OnClick="bTerminarYVolverAdminUsu_Click" Width="161px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>

            <asp:Panel ID="pVerificaMail" runat="server" Visible="False">
            <table class="auto-style38" style="width:100%;">
                <tr>
                    <td class="auto-style272">&nbsp;</td>
                    <td class="auto-style273">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style274"></td>
                    <td class="auto-style275" align="Center">
                        <asp:Label ID="Label121" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="Large" ForeColor="Orange" Text="Te hemos enviado un código de verificación al email que ingresaste. Abrí el mail, copiá el código, y pegalo en el cuadro de texto a continuación. Luego oprimí Validar. Para corregir algún dato ingresado, oprimí &quot;Volver al Registro&quot;; o bien &quot;Cancelar y Volver&quot; para anular la operación y volver al Login."></asp:Label><br /><br />
                    </td>
                    <td class="auto-style276"></td>
                </tr>
                <tr>
                    <td class="auto-style277"></td>
                    <td class="auto-style278" align="Center">
                        <asp:TextBox ID="tValidar" runat="server" BackColor="#CCCCCC" ForeColor="White" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td class="auto-style282"></td>
                </tr>
                <tr>
                    <td class="auto-style279"></td>
                    <td class="auto-style280" align="Center">
                        <asp:Label ID="lCodigo" runat="server" Text="* * * Código incorrecto * * *" Font-Names="Verdana" Font-Size="Large" ForeColor="Orange"></asp:Label>
                    </td>
                    <td class="auto-style281"></td>
                </tr>
                <tr>
                    <td class="auto-style272">&nbsp;</td>
                    <td class="auto-style273" align="Center">
                        <asp:ImageButton ID="bValidar" runat="server" ImageUrl="~/imagenes/bValidar.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style272">&nbsp;</td>
                    <td class="auto-style273" align="Center">
                        <asp:ImageButton ID="bRegresarRegistro" runat="server" ImageUrl="~/imagenes/bVolverRegistro.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style272">&nbsp;</td>
                    <td class="auto-style273" align="Center">
                        <asp:ImageButton ID="bVolverRegistro" runat="server" ImageUrl="~/imagenes/bCancelarVolver.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style272">&nbsp;</td>
                    <td class="auto-style273">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:Panel>

   


    </form>
</body>
</html>
 