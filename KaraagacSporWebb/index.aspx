﻿<%@ Page Title="" Language="C#" MasterPageFile="~/KaraagacSporWebb.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KaraagacSporWebb.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero overlay" style="background-image: url('Assets/images/balll.jpeg');">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 ml-auto">
                    <h1 class="text-white">Sıradaki Maç</h1>
                    <asp:Repeater ID="rp_matchDate" runat="server">
                        <ItemTemplate>
                            <h2>
                                <%# Eval("DateStr") %>
                                <%# Eval("DateShortStr") %>

                            </h2>
                        </ItemTemplate>
                    </asp:Repeater>
                    <p>
                        <a href="matches.aspx" class="btn py-3 px-4 mr-3 text-white"  style="background-color:#7DAFD5">Geçmiş Maçlar</a>
                        <a href="blog.aspx" class="more light">Haberler</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <asp:Repeater ID="rp_Lastmatch" runat="server">
                <ItemTemplate>
                    <div class="col-lg-12">
                        <div class="d-flex team-vs">
                            <h3 class="scoreTitle">Son Yapılan Maç</h3>
                            <label class="lastmatchDate"><%# Eval("MatchDateTime") %></label>
                            <span class="score"><%#Eval("MyTeamScore") %>-<%#Eval("OpposingTeamScore") %></span>
                            <div class="team-1 w-50">
                                <div class="team-details w-100 text-center">
                                    <img src="Assets/images/karaagac-logo.png" />
                                    <h3>Karaağaç Spor<span></span></h3>
                                    <ul class="list-unstyled">
                                    </ul>
                                </div>
                            </div>
                            <div class="team-2 w-50">
                                <div class="team-details w-100 text-center">
                                    <img src="AdminPanel/Assets/Img/<%# Eval("OppesingTeamLogo") %>" alt="Image" class="img-fluid" />
                                    <h3><%# Eval("OpposingTeamName") %><span></span></h3>
                                    <ul class="list-unstyled">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <%--<div class="latest-news">
        <div class="container">
            <div class="row">
                <div class="col-12 title-section">
                    <h2 class="heading">Latest News</h2>
                </div>
            </div>
            <div class="row no-gutters">
                <div class="col-md-4">
                    <div class="post-entry">
                        <a href="#">
                            <img src="Assets/images/img_1.jpg" alt="Image" class="img-fluid" />
                        </a>
                        <div class="caption">
                            <div class="caption-inner">
                                <h3 class="mb-3">Romolu to stay at Real Nadrid?</h3>
                                <div class="author d-flex align-items-center">
                                    <div class="img mb-2 mr-3">
                                        <img src="Assets/images/person_1.jpg" alt="">
                                    </div>
                                    <div class="text">
                                        <h4>Mellissa Allison</h4>
                                        <span>May 19, 2020 &bullet; Sports</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post-entry">
                        <a href="#">
                            <img src="Assets/images/img_3.jpg" alt="Image" class="img-fluid" />
                        </a>
                        <div class="caption">
                            <div class="caption-inner">
                                <h3 class="mb-3">Kai Nets Double To Secure Comfortable Away Win</h3>
                                <div class="author d-flex align-items-center">
                                    <div class="img mb-2 mr-3">
                                        <img src="Assets/images/person_1.jpg" alt="" />
                                    </div>
                                    <div class="text">
                                        <h4>Mellissa Allison</h4>
                                        <span>May 19, 2020 &bullet; Sports</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="post-entry">
                        <a href="#">
                            <img src="Assets/images/img_2.jpg" alt="Image" class="img-fluid" />
                        </a>
                        <div class="caption">
                            <div class="caption-inner">
                                <h3 class="mb-3">Dogba set for Juvendu return?</h3>
                                <div class="author d-flex align-items-center">
                                    <div class="img mb-2 mr-3">
                                        <img src="Assets/images/person_1.jpg" alt="" />
                                    </div>
                                    <div class="text">
                                        <h4>Mellissa Allison</h4>
                                        <span>May 19, 2020 &bullet; Sports</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>--%>

    <div class="site-section bg-dark">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="rp_nextMatch" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6">
                            <div class="widget-next-match">
                                <div class="widget-title">
                                    <h3>Sıradaki Maç</h3>
                                </div>
                                <div class="widget-body mb-3">
                                    <div class="widget-vs">
                                        <div class="d-flex align-items-center justify-content-around justify-content-between w-100">
                                            <div class="team-1 text-center">
                                                <img src="Assets/images/karaagac-logo.png" />
                                                <h3>Karaağaç Spor</h3>
                                            </div>
                                            <div>
                                                <span class="vs"><span>VS</span></span>
                                            </div>
                                            <div class="team-2 text-center">
                                                <img src="AdminPanel/Assets/Img/<%# Eval("OpposingTeamLogo") %>" alt="Image">
                                                <h3><%# Eval("OpposingTeamName") %></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center widget-vs-contents mb-4">
                                    <h4>2.Amatör Lig</h4>
                                    <p class="mb-5">
                                        <span class="d-block"><%# Eval("Date") %></span>
                                        <strong class="text-primary"><%# Eval("StadiumName") %></strong>
                                    </p>


                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <div class="col-lg-6">



                    <div class="widget-next-match">
                        <table class="table custom-table">
                            <thead>
                                <tr>
                                    <th>P</th>
                                    <th>Team</th>
                                    <th>W</th>
                                    <th>D</th>
                                    <th>L</th>
                                    <th>PTS</th>
                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="rp_fixture" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Container.ItemIndex + 1 %></td>
                                            <td><strong class="text-white"><%#Eval("OpposingTeamName") %></strong></td>
                                            <td><%# Eval("Win") %></td>
                                            <td><%# Eval("Draw") %></td>
                                            <td><%# Eval("Lose") %></td>
                                            <td><%# Eval("Point") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>

                        </table>
                    </div>



                </div>
            </div>
        </div>
    </div>
    <div class="container site-section">
        <div class="row">
            <div class="col-6 title-section">
                <h2 class="heading">Gündem </h2>
            </div>
        </div>
        <div class="row">
            <asp:Repeater ID="rp_news" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 mb-4">
                        <div class="custom-media d-block">
                            <div class="img mb-4">
                                <a href="single.aspx">
                                    <img src="AdminPanel/Assets/Img/<%# Eval("NewsCardImg") %>" alt="Image" class="img-fluid" /></a>
                            </div>
                            <div class="text">
                                <span class="meta"><%# Eval("NewsDateStr") %></span>
                                <h3 class="mb-4"><a href="#"><%#Eval("NewsTitle") %></a></h3>
                                <p style="height: 200px"><%#Eval("NewsDescription") %></p>
                                <%--<p><a href="#">Devamı</a></p>--%>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>


    </div>

</asp:Content>
