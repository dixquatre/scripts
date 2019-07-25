#!/bin/bash

	infoweather=$(curl -s 'wttr.in/Fredericton?format=%C:%t&period=60')
	IFS=':' read -r condition temperature <<<"$infoweather"
	case ${condition} in
      "Clear" | "Sunny") condition="" ;;
               "Cloudy") condition="" ;;
         "Mist" | "Fog") condition="" ;;
           "Heavy Rain") condition="" ;;
         "HeavyShowers") condition="" ;;
            "HeavySnow") condition="" ;;
     "HeavySnowShowers") condition="" ;;
  "Rain" | "Light Rain") condition="" ;;
         "LightShowers") condition="" ;;
           "LightSleet") condition="" ;;
    "LightSleetShowers") condition="" ;;
            "LightSnow") condition="" ;;
     "LightSnowShowers") condition="" ;;
             "Overcast") condition="" ;;
        "Partly cloudy") condition="" ;;
    "ThunderyHeavyRain") condition="" ;;
      "ThunderyShowers") condition="" ;;
  "ThunderySnowShowers") condition="" ;;
	   "VeryCloudy") condition="" ;;
		      *) condition=" ${condition}" ;;
        esac
	echo -ne "${condition} ${temperature}"
