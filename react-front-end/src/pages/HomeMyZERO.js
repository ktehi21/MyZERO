import React, { useState, useEffect } from "react";
import axios from "axios";

// Convert numeric month to English name function helper
import { getMonthName } from '../helper/pointsUtils';

// styles
import "../styles/HomeMyZERO.scss";

// icons
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faInfoCircle } from "@fortawesome/free-solid-svg-icons";

// components
import Button from "../components/Button";
import DisplayPointTxt from "../components/DisplayPointTxt";


// Chart.js
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  BarElement,
  Tooltip,
  Legend,
} from "chart.js";
import { Bar } from "react-chartjs-2";
ChartJS.register(CategoryScale, LinearScale, BarElement, Tooltip, Legend);

export const options = {
  responsive: true,
};

export default function HomeMyZERO() {

  const [state, setState] = useState({
    id: 1,
    three_month: {},
    two_month: {},
    one_month: {},
    this_month: {},
  });

  const [loading, setLoading] = useState(true);
  const [selectedMonths, setSelectedMonths] = useState([]);
  const currentMonth = new Date().getMonth() + 1;

  // Calculate the recent 4 months from the current month
  useEffect(() => {
    const recentMonths = [];
    for (let i = 0; i < 4; i++) {
      // Handle cases when current month is less than 4
      recentMonths.push((currentMonth - i + 12) % 12);
    }

    setSelectedMonths(recentMonths);
  }, [currentMonth]);

  // Points collected this month
  useEffect(() => {
    axios
      .get(`/api/points/${state.id}/month?months=${selectedMonths.join(",")}`)
      .then((res) => {

        const formattedData = res.data.map((item) => ({
          month: getMonthName(item.month),
          month_points: item.month_points,
        }));

        const three_month = formattedData[0];
        const two_month = formattedData[1];
        const one_month = formattedData[2];
        const this_month = formattedData[3];

        setState((prev) => ({
          ...prev,
          three_month,
          two_month,
          one_month,
          this_month,
        }));

        setLoading(false);
      })
      .catch((err) => {
        console.error("connect error:", err.message);
        setLoading(false);
      });
  }, []);

  const months = [
    state.three_month?.month,
    state.two_month?.month,
    state.one_month?.month,
    state.this_month?.month,
  ];

  const points = [
    state.three_month?.month_points,
    state.two_month?.month_points,
    state.one_month?.month_points,
    state.this_month?.month_points,
  ];

  const data = {
    labels: months,
    datasets: [
      {
        label: "Points",
        data: points,
        backgroundColor: "rgba(75, 192, 192, 0.2)",
        borderColor: "rgba(75, 192, 192, .2)",
        borderWidth: 1,
      },
    ],
  };

  // loading message here
  if (loading) {
    return <div>Loading...</div>; 
  }

  // new point collect 
  const handleCollectMyZero = async () => {
    try {
      const response = await axios.post('/api/points', {
        user_id: state.id, 
        city_id: 1, 
        point: 20,
      });
  
      alert('Thank you for your help to the world!\nYou\'ve got 20 points collected!');
      window.location.reload(); 


    } catch (error) {
      console.error('Error collecting MyZero:', error.message);
      alert('Sorry something wrong. Try again: ' + error.message);
    }
  };
  

  return (
    <div className="myZero-cont">
      <div className="myZero-top">
        <Button
          title="Collect MyZERO"
          color="#ffffff"
          border="none"
          bgColor="linear-gradient(180deg, #fddb70 0%, #fead5e 100%)"
          font="DIN Alternate, sans-serif"
          radius="18px"
          onclick={handleCollectMyZero}
        />
        <DisplayPointTxt
          text="This month you collected"
          point={state.this_month?.month_points}
          size="24px"
          pointSize="64px"
          alignItems="center"
          pointMargin="0 20px"
        />
      </div>
      <div className="myZero-mid">
        <p className="heading">History</p>
        <div className="graph-cont">
          <Bar options={options} data={data} />
        </div>
      </div>
      <div className="myZero-mid">
        <div className="graph-cont2">
          <FontAwesomeIcon icon={faInfoCircle} size="lg" />
          <span>
            Trees collected since you joined. You can get the tree when you
            collect over 250 point a month.
          </span>
          Still, we have a lot of seeds🪹. Let's try to grow the trees!
        </div>
      </div>
    </div>
  );
}
