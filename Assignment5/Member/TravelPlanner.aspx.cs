using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5.Member
{
    public partial class TravelPlanner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["isLoggedIn"] == null || !(bool) Session["isLoggedIn"])
            {
                Response.Redirect("~/Logout.aspx");
            }
        }

        protected void btnFindNearestPlace_Click(object sender, EventArgs e)
        {
            string result = "";
            FindNearestStoreService.NearestStoreServiceClient FindNearestStoreServiceClient = new FindNearestStoreService.NearestStoreServiceClient();
            string[] placeDetailsList = new string[4];
            placeDetailsList = FindNearestStoreServiceClient.findNearestStore(txtZipCodeFindNearest.Text, txtPlaceFindNearest.Text);

            // Builds a string containing all the data
            foreach (string str in placeDetailsList)
            {
                result += str + " - ";
            }
            lblNearestPlaceResult.Text = result;
        }

        protected void btnGetWaetherForecast_Click(object sender, EventArgs e)
        {
            WeatherService.WeatherServiceClient weatherServiceClient = new WeatherService.WeatherServiceClient();
            //lblWeatherResult.Text = weatherServiceClient.GetWeatherData(txtZipCodeWeatherService.Text);
            WeatherService.WeatherObj weatherObj = weatherServiceClient.GetWeatherData(txtZipCodeWeatherService.Text);
            TableHeaderRow tableHeaderRow = new TableHeaderRow();
            TableHeaderCell dateHeaderCell = new TableHeaderCell();
            dateHeaderCell.Text = "Date"; //TODO : Format date correctly
            TableHeaderCell minTempH = new TableHeaderCell();
            minTempH.Text = "Min Temp";
            TableHeaderCell maxTempH = new TableHeaderCell();
            maxTempH.Text = "Max Temp";
            tableHeaderRow.Cells.Add(dateHeaderCell);
            tableHeaderRow.Cells.Add(minTempH);
            tableHeaderRow.Cells.Add(maxTempH);
            tblWeatherForecast.Rows.Add(tableHeaderRow);
            foreach (WeatherService.WeatherObj.DailyForecastsObj dailyForecastObj in weatherObj.DailyForecasts)
            {
                TableRow row = new TableRow();
                TableCell dateCell = new TableCell();
                dateCell.Text = dailyForecastObj.Date; //TODO : Format date correctly
                TableCell minTemp = new TableCell();
                minTemp.Text = dailyForecastObj.Temperature.Minimum.Value + dailyForecastObj.Temperature.Minimum.Unit;
                TableCell maxTemp = new TableCell();
                maxTemp.Text = dailyForecastObj.Temperature.Maximum.Value + dailyForecastObj.Temperature.Maximum.Unit;
                row.Cells.Add(dateCell);
                row.Cells.Add(minTemp);
                row.Cells.Add(maxTemp);
                tblWeatherForecast.Rows.Add(row);
            }
        }

        protected void btnGasStations_Click(object sender, EventArgs e)
        {
            GasStationsService.GasStationsServiceClient gasStationsServiceClient = new GasStationsService.GasStationsServiceClient();
            string[][] gasStations = gasStationsServiceClient.GetGasStationsData(txtCity.Text, txtState.Text);
            
            // Builds a table containing all the data
            TableHeaderRow tableHeaderRow = new TableHeaderRow();
            TableHeaderCell nameHeaderCell = new TableHeaderCell();
            nameHeaderCell.Text = "Station Name"; 
            TableHeaderCell accessH = new TableHeaderCell();
            accessH.Text = "Access Days";
            TableHeaderCell contactH = new TableHeaderCell();
            contactH.Text = "Contact Number";
            TableHeaderCell addressH = new TableHeaderCell();
            addressH.Text = "Address";
            tableHeaderRow.Cells.Add(nameHeaderCell);
            tableHeaderRow.Cells.Add(accessH);
            tableHeaderRow.Cells.Add(contactH);
            tableHeaderRow.Cells.Add(addressH);
            tblGasStations.Rows.Add(tableHeaderRow);
            foreach (string[] gasStation in gasStations)
            {
                TableRow row = new TableRow();
                TableCell nameCell = new TableCell();
                nameCell.Text = gasStation[0];
                TableCell accessDaysCell = new TableCell();
                accessDaysCell.Text = gasStation[1];
                TableCell contactCell = new TableCell();
                contactCell.Text = gasStation[2];
                TableCell addressCell = new TableCell();
                addressCell.Text = gasStation[3];
                row.Cells.Add(nameCell);
                row.Cells.Add(accessDaysCell);
                row.Cells.Add(contactCell);
                row.Cells.Add(addressCell);
                tblGasStations.Rows.Add(row);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Logout.aspx");
        }
    }
}