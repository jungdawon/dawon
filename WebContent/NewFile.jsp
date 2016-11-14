<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="org.jfree.data.general.DefaultPieDataset"%>
<%@ page import="org.jfree.chart.JFreeChart"%>
<%@ page import="org.jfree.chart.plot.PiePlot"%>
<%@ page import="org.jfree.chart.ChartRenderingInfo"%>
<%@ page import="org.jfree.chart.servlet.ServletUtilities"%>
<%@ page import="org.jfree.chart.urls.StandardPieURLGenerator"%>
<%@ page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@ page import="org.jfree.chart.ChartFactory"%>
<%@ page import="org.jfree.chart.ChartUtilities"%>
<%@ page import="org.jfree.data.general.PieDataset"%>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.chart.StandardChartTheme"%>
<%@ page import="
 java.awt.Color,
 javax.servlet.ServletOutputStream,
 javax.servlet.http.HttpServletRequest,
 org.apache.log4j.Logger,org.jfree.chart.axis.*,org.jfree.data.category.*,
 org.jfree.chart.*,
 org.jfree.chart.axis.NumberAxis, org.jfree.chart.entity.StandardEntityCollection,
 org.jfree.chart.plot.PlotOrientation,org.jfree.ui.RefineryUtilities,
 org.jfree.data.category.DefaultCategoryDataset,
 org.jfree.chart.axis.CategoryAxis,
 org.jfree.chart.axis.CategoryLabelPositions,
 org.jfree.chart.plot.CategoryPlot,
 org.jfree.chart.renderer.category.CategoryItemRenderer,
 org.jfree.data.category.CategoryDataset,
 java.awt.Font,org.jfree.chart.plot.*,
 org.jfree.chart.StandardChartTheme,org.jfree.chart.axis.CategoryLabelPositions,
java.io.File,org.jfree.chart.renderer.category.LineAndShapeRenderer,
java.io.IOException,org.jfree.chart.renderer.category.*,


org.jfree.util.ShapeUtilities,org.jfree.chart.plot.XYPlot,org.jfree.data.xy.XYDataset,
org.jfree.data.time.TimeSeriesCollection,org.jfree.data.time.TimeSeries,
org.jfree.chart.renderer.xy.XYLineAndShapeRenderer
" %>
<br><br>
<%
try {
	DefaultCategoryDataset dataset = new DefaultCategoryDataset();
 StandardChartTheme chartTheme = new StandardChartTheme("sansserif");
 chartTheme.setExtraLargeFont(new Font("sansserif", Font.BOLD, 20));
 chartTheme.setLargeFont(new Font("sansserif", Font.BOLD, 14));
 chartTheme.setRegularFont(new Font("sansserif", Font.PLAIN, 12)); 

 ChartFactory.setChartTheme(chartTheme);
 
 dataset.addValue(1.0, "Series1", "Category1");
 dataset.addValue(4.0, "Series1", "Category2");
 dataset.addValue(3.0, "Series1", "Category3");
 dataset.addValue(5.0, "Series1", "Category4");
 dataset.addValue(5.0, "Series1", "Category5");



 JFreeChart chart = ChartFactory.createLineChart(
         "Line Chart Example",         // chart title
        "",                   // domain(x-axis) axis label
        "",                      // range(y-axis) axis label
        dataset,                      // data
         PlotOrientation.VERTICAL,     // orientation
         false,                         // include legend
         true,                         // tooltips
         false                         // urls
    );


 chart.setBackgroundPaint(java.awt.Color.white);
 
 chart.setTitle("월별 DVD 대여량");

 CategoryPlot plot = (CategoryPlot) chart.getPlot();
 plot.setBackgroundPaint(new Color(0xffffe0));
 plot.setDomainGridlinesVisible(true);
 plot.setDomainGridlinePaint(Color.lightGray);
 plot.setRangeGridlinePaint(Color.lightGray);

 CategoryAxis domainAxis = (CategoryAxis) plot.getDomainAxis();
 CategoryLabelPositions.createUpRotationLabelPositions(Math.PI / 6.0);

 NumberAxis rangeAxis = (NumberAxis) plot.getRangeAxis();
 rangeAxis.setStandardTickUnits(NumberAxis.createIntegerTickUnits());
 rangeAxis.setAutoRangeIncludesZero(true);

 LineAndShapeRenderer renderer = (LineAndShapeRenderer) plot.getRenderer(); 
 
 renderer.setBaseShapesFilled(true);
 renderer.setBaseShapesVisible(true);
// renderer.setSeriesItemLabelsVisible(0, visible);
 

 
 
 ChartRenderingInfo info2 = new ChartRenderingInfo(new StandardEntityCollection());
 String fileName2 = "C:\\workspace\\dawon\\WebContent\\" + "K0002.jpeg";
 ChartUtilities.saveChartAsJPEG(new File(fileName2),chart,600,300,info2);
} catch (Exception e) {

 System.out.println("error!!");
}

%>
<img src="./K0002.jpeg"/>
