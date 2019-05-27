package com.sample;

import com.sample.model.WatchType;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(
        name = "selectWatchservlet",
        urlPatterns = "/SelectWatch"
)

public class SelectWatchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String watchType = req.getParameter("Type");

        WatchService WatchService = new WatchService();
        WatchType l = WatchType.valueOf(watchType);

        List watchBrands = WatchService.getAvailableBrands(l);
        List watchPrices = WatchService.getPrices(l);

        req.setAttribute("brands", watchBrands);
        req.setAttribute("prices", watchPrices);
        RequestDispatcher view = req.getRequestDispatcher("result.jsp");
        view.forward(req, resp);

    }
}
