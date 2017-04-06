#List of functions:
#
#mps_get_field_name
#mps_get_val
#mps_view_standard
#mps_view_protocol
#mps_get_link
#mps_drop_phy_int
#mps_radio_modem_sig
#mps_edit_protocol
#mps_edit_radar

declare -a mps_val

mps_get_field_name() {

#Standard 
mps_names[0]="Comments"
mps_names[1]="Link Number"
mps_names[2]="Protocol Name"
mps_names[3]="Serial Throttle Limit"
mps_names[4]="Serial Data File"
mps_names[5]="Multicast Data File"
mps_names[6]="Link Stats Data File"
mps_names[7]="Stats Timeout"
mps_names[8]="Serial To Multicast"
mps_names[9]="Tx Interface"
mps_names[10]="Tx Multicast Group Address"
mps_names[11]="Tx Multicast Group Port"
mps_names[12]="Tx Time To Live(TTL)"
mps_names[13]="Multicast To Serial"
mps_names[14]="Recv Interface"
mps_names[15]="Recv Multicast Group Address"
mps_names[16]="Recv Multicast Group Port"
mps_names[17]="Recv Time To Live(TTL)"

#Radar
mps_names[18]="Data Acks"
mps_names[19]="Options1"
mps_names[20]="Max Msgs"
mps_names[21]="Msg Timeout"

#Asterix
mps_names[22]="Encoding"
mps_names[23]="Modem Signals"
mps_names[24]="Timeout Baud (bps)"
mps_names[25]="Forward Time (10ms)"
mps_names[26]="Frame Size"
mps_names[27]="Baud Rate"
mps_names[28]="Physical Interface"
mps_names[29]="No Clock To"

#Async
mps_names[30]="Bits Per Character"
mps_names[31]="Parity"
mps_names[32]="Stop Bits"
mps_names[33]="Recvd Timeout (10ms)"
mps_names[34]="Recvd Characters"
mps_names[35]="Recvd Block Terminating"
mps_names[36]="Recvd Terminating Character"
mps_names[37]="XON/XOFF"
mps_names[38]="XON Character"
mps_names[39]="XOFF Character"
mps_names[40]="Modem"
mps_names[41]="No Clock To"
mps_names[42]="Physical Interface"
mps_names[43]="Send Only Good Data"
mps_names[44]="DL Options1"
mps_names[45]="Baud Rate"

#Cd-2
mps_names[46]="Timeout Baud (bps)"
mps_names[47]="Max Frame Size (bytes)"
mps_names[48]="Max Msg"
mps_names[49]="Forward Time (100ms)"
mps_names[50]="Idle Pattern (hex)"
mps_names[51]="Modem Input"
mps_names[52]="Encoding"
mps_names[53]="Baud Rate"
mps_names[54]="DMA Block Size (bytes)"
mps_names[55]="Signal Timeout"
mps_names[56]="No Clock To"
mps_names[57]="Physical Interface"
#added 10/10 kdh
mps_names[64]="Bit Inversion"

#Tadilb
mps_names[58]="Idle Character"
mps_names[59]="Data Group"
mps_names[60]="Check Group Type"
mps_names[61]="Start Of Msg"
mps_names[62]="WAN Protocol Options1"
mps_names[63]="Idles Sent"

#HDLC
mps_names[65]="Mode"

echo ${mps_names[$1]}
}

mps_get_link() {
cd ../html/wanStr/mps_mcast_cfg/sun_mps_mcast/
i=0
IFS==
while read -r f1 f2
do

        mps_val["i"]="$f2"
        i=$((i+1))
done < link"$1".txt
}

mps_get_val() {
 

echo ${mps_val[$1]}
}

mps_view_standard() {

case `mps_get_val "2"` in

"ASTERIX")
#ASTERIX
echo "<tr>"
	echo "<td>"
	mps_get_field_name "3"
	echo "</td>"
	echo "<td>"
	mps_get_val "15"
	echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
echo "<td>"
        mps_get_val "16"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
        mps_get_val "17"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
        mps_get_val "18"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
        mps_get_val "19"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
        mps_get_val "20"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
        mps_get_val "21"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
        mps_get_val "22"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
        mps_get_val "23"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
        mps_get_val "24"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
        mps_get_val "25"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
        mps_get_val "26"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
        mps_get_val "27"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
        mps_get_val "28"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
        mps_get_val "29"
        echo "</td>"
echo "</tr>"
;;

"ASYNC")
#Async

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
        mps_get_val "19"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
echo "<td>"
        mps_get_val "20"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
        mps_get_val "21"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
        mps_get_val "22"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
        mps_get_val "23"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
        mps_get_val "24"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
        mps_get_val "25"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
        mps_get_val "26"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
        mps_get_val "27"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
        mps_get_val "28"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
        mps_get_val "29"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
        mps_get_val "30"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
        mps_get_val "31"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
        mps_get_val "32"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
        mps_get_val "33"
        echo "</td>"
echo "</tr>"

;;

"CD-2")
#Cd-2

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
        mps_get_val "20"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
echo "<td>"
        mps_get_val "21"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
        mps_get_val "22"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
        mps_get_val "23"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
        mps_get_val "24"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
        mps_get_val "25"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
        mps_get_val "26"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
        mps_get_val "27"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
        mps_get_val "28"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
        mps_get_val "29"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
        mps_get_val "30"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
        mps_get_val "31"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
        mps_get_val "32"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
        mps_get_val "33"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
        mps_get_val "34"
        echo "</td>"
echo "</tr>"

;;

"HDLC")
#hdlc

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
        mps_get_val "12"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
echo "<td>"
        mps_get_val "13"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
        mps_get_val "14"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
        mps_get_val "15"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
        mps_get_val "16"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
        mps_get_val "17"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
        mps_get_val "18"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
        mps_get_val "19"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
        mps_get_val "20"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
        mps_get_val "21"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
        mps_get_val "22"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
        mps_get_val "23"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
        mps_get_val "24"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
        mps_get_val "25"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
        mps_get_val "26"
        echo "</td>"
echo "</tr>"

;;

"TADIL-B")
#Tadil-B

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
        mps_get_val "19"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
echo "<td>"
        mps_get_val "20"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
        mps_get_val "21"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
        mps_get_val "22"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
        mps_get_val "23"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
        mps_get_val "24"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
        mps_get_val "25"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
        mps_get_val "26"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
        mps_get_val "27"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
        mps_get_val "28"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
        mps_get_val "29"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
        mps_get_val "30"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
        mps_get_val "31"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
        mps_get_val "32"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
        mps_get_val "33"
        echo "</td>"
echo "</tr>"

;;
esac


}

mps_view_radar() {
echo "<tr>"
        echo "<td>"
        mps_get_field_name "20"
        echo "</td>"
        echo "<td>"
        mps_get_val "3"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "21"
        echo "</td>"
        echo "<td>"
        mps_get_val "4"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "18"
        echo "</td>"
        echo "<td>"
        mps_get_val "5"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
        mps_get_val "6"
        echo "</td>"
echo "</tr>"
}

mps_view_protocol() {

case `mps_get_val "2"` in

"ASTERIX")
#ASTERIX
echo "<tr>"
        echo "<td>"
        mps_get_field_name "26"
        echo "</td>"
        echo "<td>"
        mps_get_val "7"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "27"
        echo "</td>"
        echo "<td>"
        mps_get_val "8"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "22"
        echo "</td>"
        echo "<td>"
        mps_get_val "9"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "23"
        echo "</td>"
        echo "<td>"
        mps_get_val "10"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
        mps_get_val "11"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
        mps_get_val "12"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "25"
        echo "</td>"
        echo "<td>"
        mps_get_val "13"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "29"
        echo "</td>"
        echo "<td>"
        mps_get_val "14"
        echo "</td>"
echo "</tr>"
;;

"ASYNC")
#Async
echo "<tr>"
        echo "<td>"
        mps_get_field_name "30"
        echo "</td>"
        echo "<td>"
        mps_get_val "3"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "31"
        echo "</td>"
        echo "<td>"
        mps_get_val "4"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "32"
        echo "</td>"
        echo "<td>"
        mps_get_val "5"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "45"
        echo "</td>"
        echo "<td>"
        mps_get_val "6"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "33"
        echo "</td>"
        echo "<td>"
        mps_get_val "7"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "34"
        echo "</td>"
        echo "<td>"
        mps_get_val "8"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "35"
        echo "</td>"
        echo "<td>"
        mps_get_val "9"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "36"
        echo "</td>"
        echo "<td>"
        mps_get_val "10"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "37"
        echo "</td>"
        echo "<td>"
        mps_get_val "11"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "38"
        echo "</td>"
        echo "<td>"
        mps_get_val "12"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "39"
        echo "</td>"
        echo "<td>"
        mps_get_val "13"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "40"
        echo "</td>"
        echo "<td>"
        mps_get_val "14"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "41"
        echo "</td>"
        echo "<td>"
        mps_get_val "15"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "42"
        echo "</td>"
        echo "<td>"
        mps_get_val "16"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "43"
        echo "</td>"
        echo "<td>"
        mps_get_val "17"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "44"
        echo "</td>"
        echo "<td>"
        mps_get_val "18"
        echo "</td>"
echo "</tr>"
;;

"CD-2")
#Cd-2
echo "<tr>"
        echo "<td>"
        mps_get_field_name "53"
        echo "</td>"
        echo "<td>"
        mps_get_val "7"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "46"
        echo "</td>"
        echo "<td>"
        mps_get_val "8"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "47"
        echo "</td>"
        echo "<td>"
        mps_get_val "9"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "48"
        echo "</td>"
        echo "<td>"
        mps_get_val "10"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "49"
        echo "</td>"
        echo "<td>"
        mps_get_val "11"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "54"
        echo "</td>"
        echo "<td>"
        mps_get_val "12"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "64"
        echo "</td>"
        echo "<td>"
        mps_get_val "13"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "50"
        echo "</td>"
        echo "<td>"
        mps_get_val "14"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "51"
        echo "</td>"
        echo "<td>"
        mps_get_val "15"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "55"
        echo "</td>"
        echo "<td>"
        mps_get_val "16"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "57"
        echo "</td>"
        echo "<td>"
        mps_get_val "17"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "52"
        echo "</td>"
        echo "<td>"
        mps_get_val "18"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "56"
        echo "</td>"
        echo "<td>"
        mps_get_val "19"
        echo "</td>"
echo "</tr>"

;;

"HDLC")
#hdlc
echo "<tr>"
        echo "<td>"
        mps_get_field_name "26"
        echo "</td>"
        echo "<td>"
        mps_get_val "3"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "27"
        echo "</td>"
        echo "<td>"
        mps_get_val "4"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "22"
        echo "</td>"
        echo "<td>"
        mps_get_val "5"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "65"
        echo "</td>"
        echo "<td>"
        mps_get_val "6"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "23"
        echo "</td>"
        echo "<td>"
        mps_get_val "7"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
        mps_get_val "8"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
        mps_get_val "9"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
        mps_get_val "10"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "29"
        echo "</td>"
        echo "<td>"
        mps_get_val "11"
        echo "</td>"
echo "</tr>"
;;

"TADIL-B")
#Tadil-B
echo "<tr>"
        echo "<td>"
        mps_get_field_name "53"
        echo "</td>"
        echo "<td>"
        mps_get_val "3"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "48"
        echo "</td>"
        echo "<td>"
        mps_get_val "4"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "54"
        echo "</td>"
        echo "<td>"
        mps_get_val "5"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "58"
        echo "</td>"
        echo "<td>"
        mps_get_val "6"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "52"
        echo "</td>"
        echo "<td>"
        mps_get_val "7"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "51"
        echo "</td>"
        echo "<td>"
        mps_get_val "8"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "18"
        echo "</td>"
        echo "<td>"
        mps_get_val "9"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
        mps_get_val "10"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
        mps_get_val "11"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "59"
        echo "</td>"
        echo "<td>"
        mps_get_val "12"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "60"
        echo "</td>"
        echo "<td>"
        mps_get_val "13"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "61"
        echo "</td>"
        echo "<td>"
        mps_get_val "14"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
        mps_get_val "15"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "62"
        echo "</td>"
        echo "<td>"
        mps_get_val "16"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "63"
        echo "</td>"
        echo "<td>"
        mps_get_val "17"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "41"
        echo "</td>"
        echo "<td>"
        mps_get_val "18"
        echo "</td>"
echo "</tr>"
;;
esac

}


mps_choose_proto() {
echo "<select name='mcastProtocol'>"
case `mps_get_val "2"` in

"ASTERIX")
#ASTERIX
	echo "<option value='ASTERIX'>ASTERIX</option>"
	echo "<option value='ASYNC'>ASYNC</option>"
	echo "<option value='CD-2'>CD-2</option>"
	echo "<option value='HDLC'>HDLC</option>"
	echo "<option value='TADIL-B'>TADIL-B</option>"
;;

"ASYNC")
#Async
        echo "<option value='ASTERIX'>ASTERIX</option>"
        echo "<option value='ASYNC' selected='selected'>ASYNC</option>"
        echo "<option value='CD-2'>CD-2</option>"
        echo "<option value='HDLC'>HDLC</option>"
        echo "<option value='TADIL-B'>TADIL-B</option>"
;;

"CD-2")
#Cd-2
        echo "<option value='ASTERIX'>ASTERIX</option>"
        echo "<option value='ASYNC'>ASYNC</option>"
        echo "<option value='CD-2' selected='selected'>CD-2</option>"
        echo "<option value='HDLC'>HDLC</option>"
        echo "<option value='TADIL-B'>TADIL-B</option>"
;;

"HDLC")
#hdlc
        echo "<option value='ASTERIX'>ASTERIX</option>"
        echo "<option value='ASYNC'>ASYNC</option>"
        echo "<option value='CD-2'>CD-2</option>"
        echo "<option value='HDLC' selected='selected'>HDLC</option>"
        echo "<option value='TADIL-B'>TADIL-B</option>"
;;

"TADIL-B")
#Tadil-B
        echo "<option value='ASTERIX'>ASTERIX</option>"
        echo "<option value='ASYNC'>ASYNC</option>"
        echo "<option value='CD-2'>CD-2</option>"
        echo "<option value='HDLC'>HDLC</option>"
        echo "<option value='TADIL-B' selected='selected'>TADIL-B</option>"
;;
esac

echo "</select>"
}


mps_edit_radar() {
echo "<tr>"
        echo "<td>"
        mps_get_field_name "20"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='rdrMaxMsg' value='"
        mps_get_val "3"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "21"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='rdrMsgTo' value='"
        mps_get_val "4"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "18"
        echo "</td>"
        echo "<td>"

	case `mps_get_val "5"` in
	
	"0")
	#No
	echo "<input type='radio' id='rdrDataAck' value='"
        mps_get_val "5"
	echo "' style='width:20px' checked>No<input type='radio' id='rdrDataAck' value='"
        mps_get_val "5"
        echo "' style='width:20px'>Yes"
	;;

	"1")
	#Yes
	echo "<input type='radio' id='rdrDataAck' value='"
        mps_get_val "5"
        echo "' style='width:20px'>No<input type='radio' id='rdrDataAck' value='"
        mps_get_val "5"
        echo "' style='width:20px' checked>Yes"	
	;;
	esac
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='rdrOpt1' value='"
        mps_get_val "6"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
}


mps_edit_protocol() {

case `mps_get_val "2"` in

"ASTERIX")
#ASTERIX
echo "<tr>"
        echo "<td>"
        mps_get_field_name "26"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astFrameSize' value='"
        mps_get_val "7"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "27"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astBaudRate' value='"
        mps_get_val "8"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "22"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astEncoding' value='"
        mps_get_val "9"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "23"
        echo "</td>"
        echo "<td>"
	mps_ast_radio_modem_sig 
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
	echo "<select id='astDropPhyInt'>"
	mps_drop_phy_int `mps_get_val "11"`
	echo "</select>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astTimeoutBaud' value='"
        mps_get_val "12"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "25"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astForwardTime' value='"
        mps_get_val "13"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "29"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astNoClock' value='"
        mps_get_val "14"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
;;

"ASYNC")
#Async
echo "<tr>"
        echo "<td>"
        mps_get_field_name "30"
        echo "</td>"
        echo "<td>"
        mps_asy_bits_per
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "31"
        echo "</td>"
        echo "<td>"
        mps_asy_parity
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "32"
        echo "</td>"
        echo "<td>"
        mps_asy_stop_bits
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "45"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyBaudRate' value='"
        mps_get_val "6"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "33"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecTo' value='"
        mps_get_val "7"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "34"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecChar' value='"
        mps_get_val "8"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "35"
        echo "</td>"
        echo "<td>"
        mps_asy_rec_block_ter
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "36"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecBlockTerChar' value='"
        mps_get_val "10"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "37"
        echo "</td>"
        echo "<td>"
        mps_asy_xon_xoff
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "38"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyXonChar' value='"
        mps_get_val "12"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "39"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyXoffChar' value='"
        mps_get_val "13"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "40"
        echo "</td>"
        echo "<td>"
        mps_asy_radio_modem
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "41"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyNoClock' value='"
        mps_get_val "15"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "42"
        echo "</td>"
        echo "<td>"
	echo "<select id='asyDropPhyInt'>"
        mps_drop_phy_int `mps_get_val "16"`
	echo "</select>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "43"
        echo "</td>"
        echo "<td>"
        mps_asy_send_good
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "44"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyDLOpt' value='"
        mps_get_val "18"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
;;

"CD-2")
#Cd-2
echo "<tr>"
        echo "<td>"
        mps_get_field_name "53"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2BaudRate' value='"
        mps_get_val "7"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "46"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2ToBaud' value='"
        mps_get_val "8"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "47"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2MaxFrameSize' value='"
        mps_get_val "9"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "48"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2MaxMsg' value='"
        mps_get_val "10"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "49"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2FwdTime' value='"
        mps_get_val "11"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "54"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2DmaBlckSze' value='"
        mps_get_val "12"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "64"
        echo "</td>"
        echo "<td>"
        mps_cd2_bit_inversion
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "50"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2IdlePat' value='"
        mps_get_val "14"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "51"
        echo "</td>"
        echo "<td>"
        mps_cd2_modem_input
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "55"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2SigTo' value='"
        mps_get_val "16"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "57"
        echo "</td>"
        echo "<td>"
	echo "<select id='cd2DropPhyInt'>"
        mps_drop_phy_int `mps_get_val "17"`
	echo "</select>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "52"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2Encoding' value='"
        mps_get_val "18"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "56"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2NoClock' value='"
        mps_get_val "19"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

;;

"HDLC")
#hdlc
echo "<tr>"
        echo "<td>"
        mps_get_field_name "26"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcFrameSize' value='"
        mps_get_val "3"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "27"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcBaudRate' value='"
        mps_get_val "4"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "22"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcEncoding' value='"
        mps_get_val "5"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "65"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcMode' value='"
        mps_get_val "6"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "23"
        echo "</td>"
        echo "<td>"
	mps_hdlc_modem_sig
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
	echo "<select id='hdlcDropPhiInt'>"
        mps_drop_phy_int `mps_get_val "8"`
	echo "</select>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcOptions1' value='"
        mps_get_val "9"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcToBaud' value='"
        mps_get_val "10"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "29"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcToBaud' value='"
        mps_get_val "11"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
;;

"TADIL-B")
#Tadil-B
echo "<tr>"
        echo "<td>"
        mps_get_field_name "53"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbBaudRate' value='"
        mps_get_val "3"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "48"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbMaxFrameSize' value='"
        mps_get_val "4"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "54"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbDmaBlocksize' value='"
        mps_get_val "5"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "58"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbIdleChar' value='"
        mps_get_val "6"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "52"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbEncoding' value='"
        mps_get_val "7"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "51"
        echo "</td>"
        echo "<td>"
	mps_tadilb_modem_input
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "18"
        echo "</td>"
        echo "<td>"
	mps_tadilb_data_acks
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "28"
        echo "</td>"
        echo "<td>"
	echo "<select id='tadilbDropPhiInt'>"
        mps_drop_phy_int `mps_get_val "10"`
	echo "</select>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "24"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbToBaud' value='"
        mps_get_val "11"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "59"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbDataGroup' value='"
        mps_get_val "12"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "60"
        echo "</td>"
        echo "<td>"
	mps_tadilb_group_type
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "61"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbSOM' value='"
        mps_get_val "14"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "19"
        echo "</td>"
        echo "<td>"
	mps_tadilb_options1
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "62"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbWanProOption1' value='"
        mps_get_val "16"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "63"
        echo "</td>"
        echo "<td>"
	mps_tadilb_idles_sent
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "41"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbNoClock' value='"
        mps_get_val "18"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
;;
esac
}

mps_ast_radio_modem_sig() {

 case `mps_get_val "10"` in
#case "$1" in

        "0")
        #Off
        echo "<input type='radio' id='astModemSigOff' value='0'"
        echo " style='width:20px' checked>Off<input type='radio' id='astModemSigOn' value='1'"
        echo " style='width:20px'>On"
        ;;

        "1")
        #On
        echo "<input type='radio' id='astModemSigOff' value='0'"
        echo " style='width:20px'>Off<input type='radio' id='astModemSigOn' value='1'"
        echo " style='width:20px' checked>On"
        ;;
        esac

}

mps_asy_radio_modem() {

 case `mps_get_val "14"` in


        "0")
        #No
        echo "<input type='radio' id='asyModemNo' value='0'"
        echo " style='width:20px' checked>No<input type='radio' id='asyModemYes' value='1'"
        echo " style='width:20px'>Yes"
        ;;

        "1")
        #Yes
        echo "<input type='radio' id='asyModemNo' value='0'"
        echo " style='width:20px'>No<input type='radio' id='asyModemYes' value='1'"
        echo " style='width:20px' checked>Yes"
        ;;
        esac

}

mps_asy_bits_per() {

 case `mps_get_val "3"` in


        "7")
        #7
        echo "<input type='radio' id='asyBitsPerChar7' value='7'"
        echo " style='width:20px' checked>7<input type='radio' id='asyBitsPerChar8' value='8'"
        echo " style='width:20px'>8"
        ;;

        "8")
        #8
        echo "<input type='radio' id='asyBitsPerChar7' value='7'"
        echo " style='width:20px'>7<input type='radio' id='asyBitsPerChar8' value='8'"
        echo " style='width:20px' checked>8"
        ;;
        esac

}

mps_asy_parity() {

 case `mps_get_val "4"` in


        "0")
        #No
        echo "<input type='radio' id='asyParityNo' value='0'"
        echo " style='width:20px' checked>No<input type='radio' id='asyParityOdd' value='1'"
        echo " style='width:20px'>Odd<input type='radio' id='asyParityEven' value='2'"
	echo " style='width:20px'>Even"
        ;;

        "1")
        #Odd
	echo "<input type='radio' id='asyParityNo' value='0'"
        echo " style='width:20px'>No<input type='radio' id='asyParityOdd' value='1'"
        echo " style='width:20px' checked>Odd<input type='radio' id='asyParityEven' value='2'"
        echo " style='width:20px'>Even"
        ;;

	"2")
        #Even
        echo "<input type='radio' id='asyParityNo' value='0'"
        echo " style='width:20px'>No<input type='radio' id='asyParityOdd' value='1'"
        echo " style='width:20px'>Odd<input type='radio' id='asyParityEven' value='2'"
        echo " style='width:20px' checked>Even"
        ;;
        esac

}

mps_asy_stop_bits() {

 case `mps_get_val "5"` in


        "1")
        #1
        echo "<input type='radio' id='asyStopBits1' value='1'"
        echo " style='width:20px' checked>1<input type='radio' id='asyStopBits2' value='2'"
        echo " style='width:20px'>2"
        ;;

        "2")
        #2
        echo "<input type='radio' id='asyStopBits1' value='1'"
        echo " style='width:20px'>1<input type='radio' id='asyStopBits' value='2'"
        echo " style='width:20px' checked>2"
        ;;
        esac

}

mps_asy_rec_block_ter() {

 case `mps_get_val "9"` in


        "0")
        #None
        echo "<input type='radio' id='asyRecBlockTerNo' value='0'"
        echo " style='width:20px' checked>None<input type='radio' id='asyRecBlockTerOne' value='1'"
        echo " style='width:20px'>One-Character"
        ;;

        "1")
        #One-Character
        echo "<input type='radio' id='asyRecBlockTerNo' value='0'"
        echo " style='width:20px'>None<input type='radio' id='asyRecBlockTerOne' value='1'"
        echo " style='width:20px' checked>One-Character"
        ;;
        esac

}

mps_asy_xon_xoff() {

 case `mps_get_val "11"` in


        "0")
        #On
        echo "<input type='radio' id='asyXonXoffOn' value='0'"
        echo " style='width:20px' checked>On<input type='radio' id='asyXonXoffOff' value='1'"
        echo " style='width:20px'>Off"
        ;;

        "1")
        #Off
        echo "<input type='radio' id='asysyXonXoffOn' value='0'"
        echo " style='width:20px'>On<input type='radio' id='asyXonXoffOff' value='1'"
        echo " style='width:20px' checked>Off"
        ;;
        esac

}

mps_asy_send_good() {

 case `mps_get_val "17"` in


        "0")
        #Yes
        echo "<input type='radio' id='asySendGoodYes' value='0'"
        echo " style='width:20px' checked>Yes<input type='radio' id='asySendGoodNo' value='1'"
        echo " style='width:20px'>No"
        ;;

        "1")
        #No
        echo "<input type='radio' id='asySendGoodYes' value='0'"
        echo " style='width:20px'>Yes<input type='radio' id='asySendGoodNo' value='1'"
        echo " style='width:20px' checked>No"
        ;;
        esac

}

mps_cd2_bit_inversion() {

 case `mps_get_val "13"` in


        "0")
        #No
        echo "<input type='radio' id='cd2BitInversionNo' value='0'"
        echo " style='width:20px' checked>No<input type='radio' id='cd2BitInversionYes' value='1'"
        echo " style='width:20px'>Yes"
        ;;

        "1")
        #Yes
        echo "<input type='radio' id='cd2BitInversionNo' value='0'"
        echo " style='width:20px'>No<input type='radio' id='cd2BitInversionYes' value='1'"
        echo " style='width:20px' checked>Yes"
        ;;
        esac

}

mps_cd2_modem_input() {

 case `mps_get_val "15"` in


        "0")
        #Off
        echo "<input type='radio' id='cd2ModemInOff' value='0'"
        echo " style='width:20px' checked>Off<input type='radio' id='cd2ModemInOn' value='1'"
        echo " style='width:20px'>On"
        ;;

        "1")
        #On
        echo "<input type='radio' id='cd2ModemInOff' value='0'"
        echo " style='width:20px'>Off<input type='radio' id='cd2ModemInOn' value='1'"
        echo " style='width:20px' checked>On"
        ;;
        esac

}

mps_hdlc_modem_sig() {

 case `mps_get_val "7"` in


        "0")
        #Off
        echo "<input type='radio' id='hdlcModemSigOff' value='0'"
        echo " style='width:20px' checked>Off<input type='radio' id='hdlcModemSigOn' value='1'"
        echo " style='width:20px'>On"
        ;;

        "1")
        #On
        echo "<input type='radio' id='hdlcModemSigOff' value='0'"
        echo " style='width:20px'>Off<input type='radio' id='hdlcModemSigOn' value='1'"
        echo " style='width:20px' checked>On"
        ;;
        esac

}

mps_tadilb_modem_input() {

 case `mps_get_val "8"` in

        "0")
        #Off
        echo "<input type='radio' id='tadilbModemOff' value='0'"
        echo " style='width:20px' checked>Off<input type='radio' id='tadilbModemOn' value='1'"
        echo " style='width:20px'>On"
        ;;

        "1")
        #On
        echo "<input type='radio' id='tadilbModemOff' value='0'"
        echo " style='width:20px'>Off<input type='radio' id='tadilbModemOn' value='1'"
        echo " style='width:20px' checked>On"
        ;;
        esac

}

mps_tadilb_data_acks() {

 case `mps_get_val "9"` in


        "0")
        #No
        echo "<input type='radio' id='tadilbDataAcksNo' value='0'"
        echo " style='width:20px' checked>No<input type='radio' id='tadilbDataAcksYes' value='1'"
        echo " style='width:20px'>Yes"
        ;;

        "1")
        #Yes
        echo "<input type='radio' id='tadilbDataAcksNo' value='0'"
        echo " style='width:20px'>No<input type='radio' id='TadilbDataAcksYes' value='1'"
        echo " style='width:20px' checked>Yes"
        ;;
        esac

}

mps_tadilb_group_type() {

 case `mps_get_val "13"` in

        "0")
        #0
        echo "<input type='radio' id='tadilbGroupType0' value='0'"
        echo " style='width:20px' checked>0<input type='radio' id='tadilbGroupType1' value='1'"
        echo " style='width:20px'>1"
        ;;

        "1")
        #1
        echo "<input type='radio' id='tadilbGroupType0' value='0'"
        echo " style='width:20px'>0<input type='radio' id='tadilbGroupType1' value='1'"
        echo " style='width:20px' checked>1"
        ;;
        esac

}

mps_tadilb_options1() {

 case `mps_get_val "15"` in

        "0")
        #0
        echo "<input type='radio' id='tadilbOptions10' value='0'"
        echo " style='width:20px' checked>0<input type='radio' id='tadilbOptions11' value='1'"
        echo " style='width:20px'>1"
        ;;

        "1")
        #1
        echo "<input type='radio' id='tadilbOptions10' value='0'"
        echo " style='width:20px'>0<input type='radio' id='tadilbOptions11' value='1'"
        echo " style='width:20px' checked>1"
        ;;
        esac

}

mps_tadilb_idles_sent() {

 case `mps_get_val "17"` in

        "0")
        #0
        echo "<input type='radio' id='tadilbIdlesSent0' value='0'"
        echo " style='width:20px' checked>0<input type='radio' id='tadilbIdlesSent1' value='1'"
        echo " style='width:20px'>1"
        ;;

        "1")
        #1
        echo "<input type='radio' id='tadilbIdlesSent0' value='0'"
        echo " style='width:20px'>0<input type='radio' id='tadilbIdlesSent1' value='1'"
        echo " style='width:20px' checked>1"
        ;;
        esac

}

mps_drop_phy_int() {

#case `mps_get_val "11"` in
case "$1" in

"0")
#v.11
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
	echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"
;;

"1")
#RS530A
        echo "<option value='0'>v.11</option>"
        echo "<option value='1' selected='selected'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"2")
#RS530
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2' selected='selected'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"3")
#x.21
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3' selected='selected'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"4")
#v.35
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4' selected='selected'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"5")
#RS449
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5' selected='selected'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"6")
#RS232
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6' selected='selected'>RS232</option>"
        echo "<option value='7'>HIZ</option>"

;;

"7")
#HIZ
        echo "<option value='0'>v.11</option>"
        echo "<option value='1'>RS530A</option>"
        echo "<option value='2'>RS530</option>"
        echo "<option value='3'>x.21</option>"
        echo "<option value='4'>v.35</option>"
        echo "<option value='5'>RS449</option>"
        echo "<option value='6'>RS232</option>"
        echo "<option value='7' selected='selected'>HIZ</option>"

;;
esac

}

mps_edit_standard() {

case `mps_get_val "2"` in

"ASTERIX")
#ASTERIX
echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astSerThrot' value='"
        mps_get_val "15"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
	echo "<td>"
	echo "<input type='text' id='astSer' value='"
        mps_get_val "16"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astMcast' value='"
        mps_get_val "17"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astLinkStat' value='"
        mps_get_val "18"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astStatsTo' value='"
        mps_get_val "19"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astSerToMcast' value='"
        mps_get_val "20"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astTxInt' value='"
        mps_get_val "21"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astTxMcastGroupAdd' value='"
        mps_get_val "22"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astTxMcastGroupPort' value='"
        mps_get_val "23"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astTxTTL' value='"
        mps_get_val "24"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astMcastToSer' value='"
        mps_get_val "25"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astRecInt' value='"
        mps_get_val "26"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astRecMcastGroupAdd' value='"
        mps_get_val "27"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astRecMcastGroupPort' value='"
        mps_get_val "28"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='astRecTTL' value='"
        mps_get_val "29"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"
;;

"ASYNC")
#Async

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asySerThrot' value='"
        mps_get_val "19"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
	echo "<td>"
	echo "<input type='text' id='asySer' value='"
        mps_get_val "20"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyMcast' value='"
        mps_get_val "21"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyLinkStat' value='"
        mps_get_val "22"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyStatsTo' value='"
        mps_get_val "23"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asySerToMcast' value='"
        mps_get_val "24"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyTxInt' value='"
        mps_get_val "25"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyTxMcastGroupAdd' value='"
        mps_get_val "26"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyTxMcastGroupPort' value='"
        mps_get_val "27"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyTxTTL' value='"
        mps_get_val "28"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyMcastToSer' value='"
        mps_get_val "29"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecInt' value='"
        mps_get_val "30"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecMcastGroupAdd' value='"
        mps_get_val "31"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyRecMcastGroupPort' value='"
        mps_get_val "32"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='asyTTL' value='"
        mps_get_val "33"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

;;

"CD-2")
#Cd-2

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2SerThrot' value='"
        mps_get_val "20"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
	echo "<td>"
	echo "<input type='text' id='cd2Ser' value='"
        mps_get_val "21"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2Mcast' value='"
        mps_get_val "22"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2StatsTo' value='"
        mps_get_val "23"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2SerToMcast' value='"
        mps_get_val "24"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2TxInt' value='"
        mps_get_val "25"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2TxMcastGroupAdd' value='"
        mps_get_val "26"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2TxMcastGroupPort' value='"
        mps_get_val "27"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2TxTTL' value='"
        mps_get_val "28"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2McastToSer' value='"
        mps_get_val "29"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2McastToSer' value='"
        mps_get_val "30"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2RecInt' value='"
        mps_get_val "31"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2RecMcastGroupAdd' value='"
        mps_get_val "32"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2RecMcastGroupPort' value='"
        mps_get_val "33"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='cd2RecTTL' value='"
        mps_get_val "34"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

;;

"HDLC")
#hdlc

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcSerThrot' value='"
        mps_get_val "12"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
	echo "<td>"
	echo "<input type='text' id='hdlcSer' value='"
        mps_get_val "13"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcMcast' value='"
        mps_get_val "14"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcLinkStat' value='"
        mps_get_val "15"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcStatsTo' value='"
        mps_get_val "16"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcSerToMcast' value='"
        mps_get_val "17"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcTxInt' value='"
        mps_get_val "18"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcTxMcastGroupAdd' value='"
        mps_get_val "19"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcTxMcastGroupPort' value='"
        mps_get_val "20"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcTxTTL' value='"
        mps_get_val "21"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcMcastToSer' value='"
        mps_get_val "22"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcRecInt' value='"
        mps_get_val "23"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcRecMcastGroupAdd' value='"
        mps_get_val "24"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcRecMcastGroupPort' value='"
        mps_get_val "25"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='hdlcRecTTL' value='"
        mps_get_val "26"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

;;

"TADIL-B")
#Tadil-B

echo "<tr>"
        echo "<td>"
        mps_get_field_name "3"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbSerThot' value='"
        mps_get_val "19"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "4"
        echo "</td>"
	echo "<td>"
	echo "<input type='text' id='tadilbSer' value='"
        mps_get_val "20"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "5"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbMcast' value='"
        mps_get_val "21"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "6"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbLinkStats' value='"
        mps_get_val "22"
	echo "' style='width:150px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "7"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbStatsTo' value='"
        mps_get_val "23"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "8"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbSerToMcast' value='"
        mps_get_val "24"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "9"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbTxInt' value='"
        mps_get_val "25"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "10"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbTxMcastGroupAdd' value='"
        mps_get_val "26"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "11"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbTxMcastGroupPort' value='"
        mps_get_val "27"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "12"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbTxTTL' value='"
        mps_get_val "28"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "13"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbMcastToSer' value='"
        mps_get_val "29"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "14"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbRecInt' value='"
        mps_get_val "30"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "15"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbRecMcastGroupAdd' value='"
        mps_get_val "31"
	echo "' style='width:125px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "16"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbRecMcastGroupPort' value='"
        mps_get_val "32"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

echo "<tr>"
        echo "<td>"
        mps_get_field_name "17"
        echo "</td>"
        echo "<td>"
	echo "<input type='text' id='tadilbRecTTL' value='"
        mps_get_val "33"
	echo "' style='width:100px'>"
        echo "</td>"
echo "</tr>"

;;
esac

}
