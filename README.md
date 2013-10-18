# JSON Processing implementation

This library is simply a fork of the original JSON for [Java library written by Douglas Crockford](https://github.com/douglascrockford/JSON-java) for easy use inside Processing IDE. See the original README below.

# Since Processing 2.0 beta 8

Since the beta release (8) of Processing 2.0 (February 24) JSON is part of the core libraries; to avoid any ambiguity problems you should upgrade to [the latest](http://santiclaws.se/json4processing/json4processing-0.1.8.zip) version of this library.

# Installation in Processing

1. Download the latest (0.1.8) version [here](http://santiclaws.se/json4processing/json4processing-0.1.8.zip)
2. Extract the zip-file into your /sketchbook/libraries/ folder.
3. Restart Processing IDE

You can still find the OLD versions [here](https://github.com/agoransson/JSON-processing/downloads)

# Getting started with JSON in Processing.

**Creating a JSON with primitive members**

``` java
/**
 * Creating a JSON with primitive members
 */

JSON obj = JSON.createObject();
obj.setInt("myint", 5);
obj.setFloat("myfloat", 5.5);

println( obj );
```

**Creating a JSON with complex members**

``` java
/**
 * Creating a JSON with complex members
 */
JSON myfirstmember = JSON.createObject();
myfirstmember.setInt("myint", 5);

JSON mysecondmember = JSON.createObject();
mysecondmember.setFloat("myfloat", 5.5);

JSON obj = JSON.createObject();
obj.setJSON("myobj", myfirstmember);
obj.setJSON("myobj2", mysecondmember);

println( obj );
```

**Creating a JSON from a json-formatted String.**

``` java
/**
 * Creating a JSON from a json-formatted String.
 */
String json_formatted_string = "{\"myint\":5,\"myfloat\":5.5}";
JSON obj = JSON.parse(json_formatted_string);
println( obj );
```

**Creating a JSON array of primitives**

``` java
/**
 * Creating a JSON array of primitives
 */
JSON arr = JSON.createArray();
arr.append(5);
arr.append(5.5);
arr.append('a');

println(arr);
```

**Creating a JSON array of objects**

``` java
/**
 * Creating a JSON array of objects
 */
JSON first = JSON.createObject();
first.setInt("val", 5);

JSON sec = JSON.createObject();
sec.setFloat("val", 5.5);

JSON third = JSON.createObject();
third.setString("val", "a");

JSON arr = JSON.createArray();
arr.append(first);
arr.append(sec);
arr.append(third);

println(arr);
```

**Parson JSON from websource**

``` java
/**
 * Creating a JSON array of objects
 */
JSON first = JSON.createObject();
first.setInt("val", 5);

JSON sec = JSON.createObject();
sec.setFloat("val", 5.5);

JSON third = JSON.createObject();
third.setString("val", "a");

JSON arr = JSON.createArray();
arr.append(first);
arr.append(sec);
arr.append(third);

println(arr);
```

# Original README

JSON in Java [package org.json]

Douglas Crockford
douglas@crockford.com

2011-02-02


JSON is a light-weight, language independent, data interchange format.
See http://www.JSON.org/

The files in this package implement JSON encoders/decoders in Java. 
It also includes the capability to convert between JSON and XML, HTTP 
headers, Cookies, and CDL. 

This is a reference implementation. There is a large number of JSON packages
in Java. Perhaps someday the Java community will standardize on one. Until 
then, choose carefully.

The license includes this restriction: "The software shall be used for good, 
not evil." If your conscience cannot live with that, then choose a different
package.

The package compiles on Java 1.2 thru Java 1.4.


JSONObject.java: The JSONObject can parse text from a String or a JSONTokener
to produce a map-like object. The object provides methods for manipulating its
contents, and for producing a JSON compliant object serialization.

JSONArray.java: The JSONObject can parse text from a String or a JSONTokener
to produce a vector-like object. The object provides methods for manipulating 
its contents, and for producing a JSON compliant array serialization.

JSONTokener.java: The JSONTokener breaks a text into a sequence of individual
tokens. It can be constructed from a String, Reader, or InputStream.

JSONException.java: The JSONException is the standard exception type thrown
by this package.


JSONString.java: The JSONString interface requires a toJSONString method, 
allowing an object to provide its own serialization.

JSONStringer.java: The JSONStringer provides a convenient facility for 
building JSON strings.

JSONWriter.java: The JSONWriter provides a convenient facility for building 
JSON text through a writer.
 

CDL.java: CDL provides support for converting between JSON and comma
delimited lists.

Cookie.java: Cookie provides support for converting between JSON and cookies.

CookieList.java: CookieList provides support for converting between JSON and
cookie lists.

HTTP.java: HTTP provides support for converting between JSON and HTTP headers.

HTTPTokener.java: HTTPTokener extends JSONTokener for parsing HTTP headers.

XML.java: XML provides support for converting between JSON and XML.

JSONML.java: JSONML provides support for converting between JSONML and XML.

XMLTokener.java: XMLTokener extends JSONTokener for parsing XML text.
