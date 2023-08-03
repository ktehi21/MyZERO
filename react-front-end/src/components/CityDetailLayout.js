import React, { useState, useEffect } from "react";

// styles
import "../styles/components/CityDetailLayout.scss";

// components
import Nav from "./Nav";
import RatingProfile from "./RatingProfile";
import Profile from "./Profile";
import Footer from "./Footer";
import Button from "./Button";
import DisplayPointTxt from "./DisplayPointTxt";
import TabGroup from "./TabGroup";
import CityInfo from "./CityInfo";
import HomeMyZERO from "../pages/HomeMyZERO";
import Setting from "../pages/Setting";

// images
import ratingSecond from "../img/rating-second.png";
import vancSymbol from "../img/vancouver-symbol.jpeg";

export default function CityDetailLayout() {
  // for the tab menu
  const tabTypes = ["MyZERO", "Community", "Setting"];
  const [activeTab, setActiveTab] = useState(tabTypes[1]);

  const tabPages = {
    MyZERO: HomeMyZERO,
    Community: CityInfo,
    Setting: Setting,
  };

  return (
    <div className="home-container">
      {/* Sidebar */}
      <div className="sidebar">
        <div className="sidebar-top">
          <RatingProfile ratingImage={ratingSecond} />
          <Profile symbol={vancSymbol} />
        </div>
        <div className="nav">
          <Nav />
        </div>
        <div className="footer">
          <Footer />
        </div>
      </div>
      {/* Right side main content */}
      <div className="home-main">
        <div className="home-top">
          <DisplayPointTxt
            size="26px"
            point="1,403"
            color="#1d828e"
            pointSize="76px"
            pointMargin="0px 7px"
          />
        </div>
        <div className="city-content">
          <div className="city-tabs-container">
            <TabGroup
              types={tabTypes}
              tabPages={tabPages}
              marginL="10px"
              activeTab={activeTab}
              setActiveTab={setActiveTab}
            />
          </div>
        </div>
      </div>
    </div>
  );
}