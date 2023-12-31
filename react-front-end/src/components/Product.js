import React, { useState, useEffect } from "react";
import axios from 'axios';
import { useNavigate } from "react-router-dom";

// styles
import "../styles/components/Products.scss";

import Button from "./Button";

export default function Product({
  id,
  prodImg,
  productName,
  brandName = "Walmart",
  prodPoint = "000",
  boxWidth = "218px",
  divWidth = "218px",
  bttnDisplay = "block",
  nameSize = "18px",
  fontSize = "30px",
  divPadding = "10px 0px",
  imgBoxHeight = "165px",
}) {

  console.log("products id", id);
  console.log("products productName", productName);
  const navigate = useNavigate();

  // product buy function
  const handleBuyClick = async () => {
    if (
      window.confirm(
        `Are you sure you want to buy ${productName} ${prodPoint}pt?`
      )
    ) 
    try {
      const response = await axios.post('/api/products', {
        user_id: 1,
        product_id: id,
      });
      
      window.alert("Confirmed! You can check it on the MyBuy Tab!");

      const existingPurchases =
        JSON.parse(localStorage.getItem("purchased")) || [];

      const purchaseInfo = {
        prodImg: prodImg,
        brandName: brandName,
        prodPoint: prodPoint,
        productName: productName,
        purchaseDate: new Date().toLocaleString(),
      };
      existingPurchases.push(purchaseInfo);

      localStorage.setItem("purchased", JSON.stringify(existingPurchases));

      navigate("/MyBuy");
    }
    catch (error) {
      console.error('Error collecting MyZero:', error.message);
      alert('Sorry something wrong. Try again: ' + error.message);
    }
  };


  return (
    <div className="prod-container">
      <div
        className="prod-box"
        style={{
          width: boxWidth,
          padding: divPadding,
        }}
      >
        <div
          className="prod-img"
          style={{
            width: divWidth,
            padding: divPadding,
            height: imgBoxHeight,
          }}
        >
          <img src={`/img/product/${prodImg}`} alt="product" />
        </div>
        <div
          className="prod-name"
          style={{
            width: divWidth,
            padding: divPadding,
          }}
        >
          <p
            style={{
              fontSize: nameSize,
            }}
          >
            {productName}
          </p>
        </div>
        <div
          className="prod-brand"
          style={{
            width: divWidth,
          }}
        >
          <p
            style={{
              fontSize: fontSize,
            }}
          >
            {brandName}
          </p>
        </div>
        <div
          className="prod-point"
          style={{
            width: divWidth,
          }}
        >
          <p
            style={{
              fontSize: fontSize,
            }}
          >
            {prodPoint}pt
          </p>
        </div>
      </div>
      <div
        className="prod-bttn"
        style={{
          display: bttnDisplay,
        }}
      >
        <Button
          title="Buy"
          width="190px"
          height="45px"
          border="3px solid #1d828e"
          bgColor="white"
          radius="20px"
          color="#1d828e"
          onclick={handleBuyClick}
        />
      </div>
    </div>
  );
}
