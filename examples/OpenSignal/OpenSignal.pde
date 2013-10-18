/*
 * JSON 4 Processing
 * Basic example: Parsing data from OpenSignal API
 *
 * Get your own API key from https://opensignal.3scale.net/login
 */

import org.json.*;

String cid = "10132";
String lac = "9015";
String sid = "0";
String phone_type = "GSM";
String network_id = "24001";
String api_key = "<your api key>";

PFont font;

void setup(){
  font = loadFont("Ubuntu-24.vlw");
  textFont(font, 12);
  fill( 0 );
  
  // 1. Create the URL
  String url = "http://api.opensignal.com/v2/towerinfo.json?cid="+cid+"&lac="+lac+"&sid="+sid+"&phone_type="+phone_type+"&network_id="+network_id+"&apikey="+api_key;
  
  // 2. Get the json-formatted string
  String[] jsonstring = loadStrings(url);
  
  // 3. Initialize the object
  JSON cell_tower = JSON.parse(jsonstring[0]);

  println( cell_tower );
  
  showInformation( cell_tower.getJSON("tower1") );
}

void draw(){
}

void showInformation(JSON tower){
  translate( 5, 12 );
  text("Cell tower", 0, 0);
  text("LAC: " + tower.getString("lac"), 0, 12);
  text("ID: " + tower.getString("cid"), 0, 24);
  text("lat: " + tower.getString("est_lat"), 0, 36);
  text("lng: " + tower.getString("est_lng"), 0, 48);
}