﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="css.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style style="background-color: #0000FF">
    /*    @import url("https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900");
*/
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  display: flex;
  background: #000;
  min-height: 27vh;
  align-items: center;
  justify-content: center;
}

.content {
  position: relative;
}

.content h2 {
  color: #4cff00ff;
  font-size: 9em;
  position: absolute;
  transform: translate(-50%, -50%);
            top: 65px;
            left: 51px;
            height: 156px;
            width: 285px;
        }

.content h2:nth-child(1) {
  color: #ffff;
  -webkit-text-stroke: 2px #03a9f4;
}

.content h2:nth-child(2) {
  color: #03a9f4;
  animation: animate 4s ease-in-out infinite;
}

.floating {
  position: absolute;
  animation-name: floating;
  -webkit-animation-name: floating;
  animation-duration: 5s;
  -webkit-animation-duration: 5s;
  animation-iteration-count: infinite;
  -webkit-animation-iteration-count: infinite;
}
.floating.circle {
  display: inline-block;
  width: 39px;
  height: 39px;
  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAYAAACMo1E1AAAABHNCSVQICAgIfAhkiAAAA0pJREFUWIXdmL1O40AQx8fZ5BxQCqRrLqKxqKjAOl0JvMHxBIjHyCu4dGkJ+khpQNa9QeTyZIkihbtYCKWwbC1KFXbtvYJxbrIYMOBD1o20UhDe//x2dnb2w1BKQVut25SQYRhG+Vs1NGLjvToI0yHNwKawFWV7L+yb4AhQFwC6QRB8tyzrxDTN3V6vN2SMfc3zPBVCLFar1d18Pp8eHR2FACCxvQ1UKfVqg8eIMADo+75/kKbphRDiVtUwIcRtmqYXvu8fAEAfdYxafmuC9TzPs5IkuSyK4qEOlG5FUTwkSXLpeZ4FAL06gHXA+mEYnkops1f851LKe6VU/tJHUsosDMNTjOKLgK+CxXE8KopCVDjhWZZNZrPZ2Xg83rdtewcABrZt74zH4/3ZbHaWZdlESskroijiOB69BvgSmBnH8ahq9JzzK8dxLBTvweZqLRdNDwD6juNYnPOrKh0ENJ8DfDbHwjA81SMmpUyiKDoHgO06iU0W0nYURedSykSPIE5xZQ5WCTLP8yw9x5bL5dR13b26yVw1YNd195bL5VQbcIaLhL0IV+ZZkiSXesQQrPtWME2767runh7BJEkuq/LvSdR83z/QywVO5Zf3gmmAX6IoOtem9wHr4Eb09M5mmqYXtCPn/AoAtgCg8xEw4qMDAFv6IknT9AIAzEo4HNWAVn4pJcdV+SQfPgjIHMexaJkRQtwCwIDOzkaHIAiO6WiyLJvUKZbvnN5+lmUT6i8IgmMaiA7ZZpllWSd0310sFr8AIFeo2JShXo76a0P/rPybwhmmae7Sj29ubn4DQN4kGLEc9deG/tfnwo0wc86vSZRz3JIanVI6tbZt7yiyF3POr4Gk0QYcLZBSynvQEvQf5N0ADwtKqcdCT+HotEKe52n5mzE2sG27sWN8ldm23WWMDar8A2DOYYIqIcSC/m80Gn0DmgPNmoH66wChf1UuQBo5tVqt7mjvw8PDH0BWT8PGUH9t6H9dGShcPp/Pp/Tj4XD4EwAYvVk1YajHUH9t6P9vddATtJU7BHZq595ajqjNp5L2nufK6LXyJEyFWnmHIKLtu31pgO27t+qArbvxa4DteyvRAD/9lanV73P/z8tmDVgAaMGb8GfYHwpq7kYvpXclAAAAAElFTkSuQmCC");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  opacity: 0.5;
}
.floating.cross {
  display: inline-block;
  width: 35px;
  height: 35px;
  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAlCAYAAADFniADAAAABHNCSVQICAgIfAhkiAAAAgJJREFUWIXN2MFO4zAQBuDfbSpaiUOvvTRS3w6EoEChwAvsZS9IvAnwOK5rV5V7Se8cNrOHNVXWpMk4caEj5dDInvkySeMkgohwbNH5aUBZJP4OIYQA0HU//9ABWllXo+MN7gDobzab+/V6fQbgxCWIDTqx1k6ttdPSGkQEBxUABsaYJ/oXuZTyGkAfgPgc12ZzNfpa6zkR5USUa63nfo3ihMRae0f/Ry6lvIkBKwHtalhrZwCSz7H+hU5u23V7Mpn8llKel7Y58JRpra/G4/EvB9wfjCMhIsoXi8Vtk47V5a08fZwEy+UyCNYE9AUVE9YUVIpiwmZVsDagvag2sLagShQTdlcsEANUiwqEJTFALBSzA/cAhjFAbBQHlmXZWwxQEIoB86MRKBhVgA2UUg8VsFwp9QBgEApqhHKwLoBhlmXvZaLtdvsKYAig2yj/ATs1/5ZOhV5T/n0sOorx73sv298EFgXk/mV771N1a2UwKmDpqLyjh8BigVhrH/uxJxaIO48Diwrizq97tI4O4uapeks6CKgt7GAgbl6l1NTPW5ycWGtnMUFc2Gq1ukTFy6gfZIx5TNP0GcAHuQqh4eZ9pGn6bIx5hPfC2+v1Tv0J+46mdYc4HTPGPMFbuEXx4AtfRC4AYDQavbTpUFl4NUShRr4b49c7hu9TX1DHEEf5efEvSKr5qd+QqggAAAAASUVORK5CYII=");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  opacity: 0.5;
}

@keyframes floating {
  0% {
    transform: translateY(0%) rotate(-55deg);
  }
  50% {
    transform: translateY(300%) rotate(55deg);
  }
  100% {
    transform: translateY(0%) rotate(-55deg);
  }
}
@-webkit-keyframes floating {
  0% {
    -webkit-transform: translateY(0%);
  }
  50% {
    -webkit-transform: translateY(300%);
  }
  100% {
    -webkit-transform: translateY(0%);
  }
}
@keyframes animate {
  0%,
  100% {
    clip-path: polygon(
      0% 45%,
      16% 44%,
      33% 50%,
      54% 60%,
      70% 61%,
      84% 59%,
      100% 52%,
      100% 100%,
      0% 100%
    );
  }

  50% {
    clip-path: polygon(
      0% 60%,
      15% 65%,
      34% 66%,
      51% 62%,
      67% 50%,
      84% 45%,
      100% 46%,
      100% 100%,
      0% 100%
    );
  }
}
.transparent-button {
        background-color: #336699;
        color: white;
        font-size: 14pt;
        height: 54px;
        width: 135px;
        margin-left: 0px;
        border-radius: 12px;
        border-color: black;
    }
    .transparent-button:hover {
        background-color: transparent;
    }


        </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="content">
    <h2>Flex</h2>
    <h2>Flex</h2>
  </div>
        <div>
            <div class="backwrap gradient">
  <div class="back-shapes">
      <!-- All this img tags was autogenerated by custom written js tool -->
      <span class="floating circle" style="top:66.59856996935649%;left:13.020833333333334%;animation-delay:-0.9s; background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:31.46067415730337%;left:33.59375%;animation-delay:-4.8s;background-image: url('nu.png');"></span>
      <span class="floating cross" style="top:76.50663942798774%;left:38.020833333333336%;animation-delay:-4s;"></span>
      <span class="floating circle" style="top:21.450459652706844%;left:14.0625%;animation-delay:-2.8s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:58.12053115423902%;left:56.770833333333336%;animation-delay:-2.15s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:8.682328907048008%;left:72.70833333333333%;animation-delay:-1.9s;background-image: url('nu.png');"></span>
      <span class="floating cross" style="top:31.3585291113381%;left:58.541666666666664%;animation-delay:-0.65s;"></span>
      <span class="floating cross" style="top:69.96935648621042%;left:81.45833333333333%;animation-delay:-0.4s;"></span>
      <span class="floating circle" style="top:15.117466802860061%;left:32.34375%;animation-delay:-4.1s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:23.074565883554648%;left:45.989583333333336%;animation-delay:-3.65s;background-image: url('nu.png');"></span>
      <span class="floating cross" style="top:55.87334014300306%;left:27.135416666666668%;animation-delay:-2.25s;"></span>
      <span class="floating cross" style="top:49.54034729315628%;left:53.75%;animation-delay:-2s;"></span>
      <span class="floating cross" style="top:34.62717058222676%;left:49.635416666666664%;animation-delay:-1.55s;"></span>
      <span class="floating cross" style="top:33.19713993871297%;left:86.14583333333333%;animation-delay:-0.95s;"></span>
      <span class="floating circle" style="top:28.19203268641471%;left:25.208333333333332%;animation-delay:-4.45s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:39.7344228804903%;left:10.833333333333334%;animation-delay:-3.35s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:77.83452502553627%;left:24.427083333333332%;animation-delay:-2.3s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:21.860061287027579%;left:47.864583333333336%;animation-delay:-1.75s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:71.3993871297242%;left:66.45833333333333%;animation-delay:-1.25s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:31.256384065372828%;left:76.92708333333333%;animation-delay:-0.65s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:46.47599591419816%;left:38.90625%;animation-delay:-0.35s;background-image: url('nu.png');"></span>
      <span class="floating cross" style="top:3.4729315628192032%;left:19.635416666666668%;animation-delay:-4.3s;"></span>
      <span class="floating cross" style="top:3.575076608784474%;left:6.25%;animation-delay:-4.05s;"></span>
      <span class="floating cross" style="top:77.3237997957099%;left:4.583333333333333%;animation-delay:-3.75s;"></span>
      <span class="floating cross" style="top:0.9193054136874361%;left:71.14583333333333%;animation-delay:-3.3s;"></span>
      <span class="floating circle" style="top:23.6976506639428%;left:63.28125%;animation-delay:-2.1s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:81.30745658835546%;left:45.15625%;animation-delay:-1.75s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:60.9805924412666%;left:42.239583333333336%;animation-delay:-1.45s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:29.009193054136876%;left:93.90625%;animation-delay:-1.05s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:52.093973442288046%;left:68.90625%;animation-delay:-0.7s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:81.51174668028601%;left:83.59375%;animation-delay:-0.35s;background-image: url('nu.png');"></span>
      <span class="floating circle" style="top:11.542390194075587%;left:91.51041666666667%;animation-delay:-0.1s;background-image: url('nu.png');"></span>
  
  </div>
</div>
        </div>
         <p style="height: 5px; margin-top: 359px; margin-left:0px">
<asp:Button ID="Button1" runat="server" CssClass="transparent-button" Text="Let's get started" BorderStyle="Dotted" PostBackUrl="~/main.aspx" />
 </p>
    </form>

        </body>
</html>
