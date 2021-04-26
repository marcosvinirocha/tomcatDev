package com.marcos.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marcos.acao.Acao;
// import com.marcos.acao.AlteraEmpresa;
// import com.marcos.acao.ListaEmpresas;
// import com.marcos.acao.MostraEmpresa;
// import com.marcos.acao.NovaEmpresa;
// import com.marcos.acao.NovaFormEmpresa;
// import com.marcos.acao.RemoveEmpresa;




@WebServlet("/entrada")
public class UnicaEntradaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

		String paramAcao = request.getParameter("acao");

		String className = "com.marcos.acao." + paramAcao;
		String nome;

		

		

		try {
		Class classe = Class.forName(className); 
		Acao acao  = (Acao) classe.newInstance();
		nome = acao.executa(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			throw new ServletException(e);
		}


		String[] typeAddress = nome.split(":");
		if (typeAddress[0].equals("forward")) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/"+typeAddress[1]);
		rd.forward(request, response);
		} else {
			response.sendRedirect(typeAddress[1]);
		}

		

		// String nome = null;
		
		// if(paramAcao.equals("ListaEmpresas")) {
		//     ListaEmpresas acao = new ListaEmpresas();
		//     nome=acao.executa(request, response);
		// } else if(paramAcao.equals("RemoveEmpresa")) {
		//     RemoveEmpresa acao = new RemoveEmpresa();
		//     nome=acao.executa(request, response);
		// } else if(paramAcao.equals("MostraEmpresa")) {
		//     MostraEmpresa acao = new MostraEmpresa();
		//     nome=acao.executa(request, response);
		// } else if(paramAcao.equals("AlteraEmpresa")) {
		//     AlteraEmpresa acao = new AlteraEmpresa();
		//     nome=acao.executa(request, response);
		// } else if(paramAcao.equals("NovaEmpresa")) {
		//     NovaEmpresa acao = new NovaEmpresa();
		//     nome=acao.executa(request, response);
		// }else if(paramAcao.equals("NovaFormEmpresa")) {
		//     NovaFormEmpresa acao = new NovaFormEmpresa();
		//     nome=acao.executa(request, response);
		// }

		
		

    }

}
