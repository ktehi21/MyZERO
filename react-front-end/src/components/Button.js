import React from "react";
import "../styles/components/Button.scss";

export default function Button(props) {
  const {
    title = "default",
    width = "224px",
    height = "58px",
    size = "23px",
    border,
    bgColor,
    color = "#1d1d1d",
    padding = "0",
    margin = "0",
  } = props;
  return (
    <div className="button-cont">
      <button
        style={{
          width: width,
          height: height,
          padding: padding,
          margin: margin,
          fontSize: size,
          border: border,
          background: bgColor,
          color: color,
        }}
      >
        {title}
      </button>
    </div>
  );
}
