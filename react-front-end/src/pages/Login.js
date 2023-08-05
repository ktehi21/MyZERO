import React from "react";

// styles
import "../styles/Login.scss";

// components
import LoginLeftSide from "../components/LoginLeftSide";
import LoginInput from "../components/LoginInput";

export default function Login() {

  return (
    <div className="login-cont">
      <LoginLeftSide />
      <div className="right-side">
        <LoginInput 
          title="Login"
          backBttnDisplay="none"
        />
      </div>
    </div>
  );
}
