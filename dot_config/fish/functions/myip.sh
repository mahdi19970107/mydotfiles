function myip
  echo -e "\n📡 Internal IPs:"
  for iface in (ip -o -4 addr show | awk '{print $2, $4}')
    set name (echo $iface | awk '{print $1}')
    set ipaddr (echo $iface | awk '{print $2}')
    echo "🔌 $name ➜ $ipaddr"
  end

  echo -e "\n🌍 External IP Info:"
  set info (curl -s --max-time 3 http://ip-api.com/json/)
  set ip (echo $info | jq -r ".query")
  set country (echo $info | jq -r ".country")
  set code (echo $info | jq -r ".countryCode")
  set city (echo $info | jq -r ".city")
  set isp (echo $info | jq -r ".isp")

  echo -e "🌐 IP: $ip
  🏳️ Country: $country ($code)
  🏙️ City: $city
  🛰️ ISP: $isp"
end