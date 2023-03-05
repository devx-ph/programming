import '../models/user.dart';
// import 'package:flutter/material.dart';

// BO == Business Objects
// Here we got functions, widgets or whatever we want to help

// getstatusCode() is a function that give us info about http response
// we give it the status code and returns its meaning
// Must seek in internet, there are a lot of status code!
String getstatusCode(int statusCode) {
  String? result;
  String ir = 'Informative response:';
  String sr = 'Satisfactory resosponse:';
  String redirection = 'Redirection';
  String ce = 'Client error:';
  String se = 'Server error:';

  switch (statusCode) {
    case 100:
      {
        result =
            '$ir All ok. You must continue with the request or ignore it if it is finished';
      }
      break;
    case 101:
      {
        result = '$ir UPGRADE application accepted.';
      }
      break;
    case 102:
      {
        result = '$ir Processing the request.';
      }
      break;
    case 200:
      {
        result = '$sr The application was successful.';
      }
      break;
    case 201:
      {
        result =
            '$sr The application was successful and a new resource has been created as a result. This is typically the response sent after a PUT request.';
      }
      break;
    case 202:
      {
        result =
            '$sr The request has been received, but no action has yet been taken. It is a "No Strings Attached" request, which means that there is no way in HTTP to allow an asynchronous response to be sent indicating the result of the request processing. It is intended for cases where another process or server handles the request, or for batch processing.';
      }
      break;
    case 203:
      {
        result =
            '$sr The request has been successfully completed, but its content has not been obtained from the source originally requested, but is collected from a local copy or from a third party. Except for this condition, a response of 200 OK should be preferred instead of this response.';
      }
      break;
    case 204:
      {
        result =
            '$sr The request has been completed successfully but its response has no content, although headings can be useful. The user agent can update its cached headers for this resource with the new values.';
      }
      break;
    case 205:
      {
        result =
            '$sr The request has been completed successfully, but its response has no content and in addition, the user agent has to initialize the page from which the request was made, this code is useful for example for pages with forms whose content must be deleted after the user submits it.';
      }
      break;
    case 206:
      {
        result =
            '$sr The request will partially serve the requested content. This feature is used by download tools such as wget to continue the transfer of previously interrupted downloads, or to split a download and process the parts simultaneously.';
      }
      break;
    case 207:
      {
        result =
            '$sr A Multi-State response transmits information about various resources in situations where multiple status codes might be appropriate. The body of the request is an XML message.';
      }
      break;
    case 208:
      {
        result =
            '$sr The list of DAV elements has already been previously notified, so they will not be relisted.';
      }
      break;
    case 226:
      {
        result =
            '$sr The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance manipulations applied to the current instance.';
      }
      break;
    case 300:
      {
        result =
            '$redirection This request has more than one possible response. User-Agent or the user must choose one of them. There is no standardized way to select one of the answers.';
      }
      break;
    case 301:
      {
        result =
            '$redirection This response code means that the URI of the requested resource has been changed. A new URI will probably be returned in the response.';
      }
      break;
    case 302:
      {
        result =
            '$redirection This response code means that the requested URI resource has been temporarily changed. New changes to the URI will be added in the future. Therefore, the same URI must be used by the customer in future requests.';
      }
      break;
    case 303:
      {
        result =
            '$redirection The server sends this response to direct the client to a new requested resource to another address using a GET request.';
      }
      break;
    case 304:
      {
        result =
            '$redirection This is used for "cache" purposes. It tells the customer that the response has not been modified. The client can then continue to use the same version stored in its cache.';
      }
      break;
    case 305:
      {
        result =
            '$redirection It was defined in a previous version of the HTTP protocol specification to indicate that a requested response must be accessed from a proxy. It has been deprecated due to security concerns related to configuring a proxy.';
      }
      break;
    case 306:
      {
        result =
            '$redirection This response code is no longer used. It is currently reserved. It was used in previous versions of the HTTP1.1 specification.';
      }
      break;
    case 307:
      {
        result =
            '$redirection The server sends this response to direct the client to obtain the requested resource to another URI with the same method that the previous request was used. It has the same semantics as the HTTP 302 Found response code, except that the user agent should not change the HTTP method used: if one POST was used in the first request, another POST must be used in the second request.';
      }
      break;
    case 308:
      {
        result =
            '$redirection It means that the resource is now permanently in another URI, specified by the Location: HTTP header response. It has the same semantics as the HTTP 301 Moved Permanently response code, except that the user agent should not change the HTTP method used: if one POST was used in the first request, another POST must be used in the second request.';
      }
      break;
    case 400:
      {
        result =
            '$ce This response means that the server could not interpret the request given an invalid syntax.';
      }
      break;
    case 401:
      {
        result =
            '$ce Authentication is required to obtain the requested response. This is similar to 403, but in this case, authentication is possible.';
      }
      break;
    case 402:
      {
        result =
            '$ce This response code is reserved for future use. The initial goal of creating this code was to be used in digital payment systems. However, it is not currently being used.';
      }
      break;
    case 403:
      {
        result =
            '$ce The client does not have the necessary permissions for certain content, so the server is refusing to grant an appropriate response.';
      }
      break;
    case 404:
      {
        result =
            '$ce The server could not find the requested content. This response code is one of the most famous given its high occurrence on the web.';
      }
      break;
    case 405:
      {
        result =
            '$ce The requested method is known to the server but has been disabled and cannot be used. The two mandatory methods, GET and HEAD, should never be disabled and should not return this error code.';
      }
      break;
    case 406:
      {
        result =
            '$ce This response is sent when the server, after applying a server-driven content negotiation, does not find any content followed by the criteria given by the user.';
      }
      break;
    case 407:
      {
        result =
            '$ce This is similar to the 401 code, but authentication must be done from a proxy.';
      }
      break;
    case 408:
      {
        result =
            '$ce This response is sent on an inactive connection on some servers, even without any prior request by the client. It means that the server wants to disconnect this unused connection. This response is widely used from some browsers, such as Chrome, Firefox 27+, or IE9, uses HTTP pre-connection mechanisms to speed up navigation. Also note that some servers simply disconnect the connection without sending this message.';
      }
      break;
    case 409:
      {
        result =
            '$ce This response can be sent when a request conflicts with the current state of the server.';
      }
      break;
    case 410:
      {
        result =
            '$ce This response can be sent when the requested content has been deleted from the server.';
      }
      break;
    case 411:
      {
        result =
            '$ce The server rejects the request because the Content-Length header field is not defined and the server requires it.';
      }
      break;
    case 412:
      {
        result =
            '$ce The client has indicated pre-conditions in its headers which the server does not meet.';
      }
      break;
    case 413:
      {
        result =
            '$ce The request entity is longer than the limits defined by the server; the server can close the connection or return a Retry-After header field.';
      }
      break;
    case 414:
      {
        result =
            '$ce The URI requested by the client is longer than the server is willing to interpret.';
      }
      break;
    case 415:
      {
        result =
            '$ce The multimedia format of the requested data is not supported by the server, so the server rejects the request.';
      }
      break;
    case 416:
      {
        result =
            '$ce The range specified by the Range header field in the request does not comply; it is possible that the range is outside the size of the target data of the URI.';
      }
      break;
    case 4017:
      {
        result =
            '$ce It means that the expectation indicated by the requested Expect header field cannot be met by the server.';
      }
      break;
    case 4018:
      {
        result = '$ce The server refuses to try to make coffee with a kettle.';
      }
      break;
    case 421:
      {
        result =
            '$ce The request was directed to a server that is not able to produce a response. This can be sent by a server that is not configured to produce responses by the combination of the schema and authority that are included in the requested URI.';
      }
      break;
    case 422:
      {
        result =
            '$ce The request was well formed but could not be followed due to semantic errors.';
      }
      break;
    case 423:
      {
        result = '$ce The resource being accessed is blocked.';
      }
      break;
    case 424:
      {
        result =
            '$ce The petition failed due to a failure of a previous petition.';
      }
      break;
    case 426:
      {
        result =
            '$ce The server refuses to enforce the request using the current protocol but may be willing to do so after the client upgrades to a different protocol. The server sends an Upgrade header in a response to indicate the required protocols.';
      }
      break;
    case 428:
      {
        result =
            '$ce The source server requires that the request be conditional. It is intended to prevent "missed update" issues, where a client OBTAINS a state of the resource, modifies it, and PUTS it back to the server, when while a third party has modified the state of the server, leading to a conflict.';
      }
      break;
    case 429:
      {
        result =
            '$ce The user has submitted too many requests in a given period of time.';
      }
      break;
    case 431:
      {
        result =
            '$ce The server is unwilling to process the request because the header fields are too long. The request CAN be re-uploaded after reducing the size of the requested header fields.';
      }
      break;
    case 451:
      {
        result =
            '$ce The user requests an illegal resource, such as a website censored by a government.';
      }
      break;
    case 500:
      {
        result =
            '$se The server has encountered a situation that it does not know how to handle it.';
      }
      break;
    case 501:
      {
        result =
            '$se The requested method is not supported by the server and cannot be handled. The only methods that servers require support (and therefore should not return this code) are GET and HEAD.';
      }
      break;
    case 502:
      {
        result =
            '$se This error response means that the server, while working as a gateway to get a response needed to handle the request, got an invalid response.';
      }
      break;
    case 503:
      {
        result =
            '$se The server is not ready to handle the request. Common causes may be that the server is down for maintenance or is overloaded. It should be noted that along with this response, a user-friendly page explaining the problem should be sent. These responses should be used for temporary conditions and the Retry-After HTTP header: it should, if possible, contain the estimated time before service recovery. The webmaster should also take care of the cache-related headers that are sent along with this response, since these time-condition responses should usually not be in the cache.';
      }
      break;
    case 504:
      {
        result =
            '$se This error response is given when the server is acting as a gateway and cannot get a response in time.';
      }
      break;
    case 505:
      {
        result =
            '$se The version of HTTP used in the request is not supported by the server.';
      }
      break;
    case 506:
      {
        result =
            '$se The server has an internal configuration error: negotiating transparent content for the request results in a circular reference.';
      }
      break;
    case 507:
      {
        result =
            '$se The server has an internal configuration error: the chosen resource variable is configured to dock the transparent content negotiation itself, and is therefore not a suitable endpoint for the negotiation process.';
      }
      break;
    case 508:
      {
        result =
            '$se The server detected an infinite cycle while processing the request.';
      }
      break;
    case 510:
      {
        result =
            '$se Additional extensions for the request are required for the server to comply.';
      }
      break;
    case 511:
      {
        result =
            '$se Status code 511 indicates that the client needs to authenticate to gain access to the network.';
      }
      break;
  }
  return 'Status $statusCode => $result';
}

// asignid(List<User>? items, User item) {
//   if (items == null || items.isEmpty) {
//     item.id = -1;
//   } else {
//     items.sort((b, a) => a.id.compareTo(b.id));
//     item.id = items[0].id + 1;
//   }
//   return item;
// }

// Widget textfield(String labeltext, TextEditingController controller,
//     {bool obscureText = false, bool? validate, bool outlineBorder = false}) {
//   InputDecoration inputDecoration;
//   if (validate != null && outlineBorder == false) {
//     inputDecoration = InputDecoration(
//       labelText: labeltext,
//       errorText: validate ? null : 'Field can\'t be empty',
//     );
//   } else if (validate != null && outlineBorder == true) {
//     inputDecoration = InputDecoration(
//       labelText: labeltext,
//       border: const OutlineInputBorder(),
//       errorText: validate ? null : 'Field can\'t be empty',
//     );
//   } else if (validate == null && outlineBorder == false) {
//     inputDecoration = InputDecoration(
//       labelText: labeltext,
//     );
//   } else {
//     inputDecoration = InputDecoration(
//       labelText: labeltext,
//       border: const OutlineInputBorder(),
//     );
//   }
//   return TextField(
//     obscureText: obscureText,
//     decoration: inputDecoration,
//     controller: controller,
//   );
// }

// bool isNullOrEmpty(String string) {
//   if (string.isEmpty || string == '') {
//     return true;
//   } else {
//     return false;
//   }
// }

// bool isDefault(User? user) {
//   if (user == null || (user.id == -1 && user.username == '')) {
//     return true;
//   } else {
//     return false;
//   }
// }

// Widget raisedButton(String buttonText,
//     {Function? onPressed,
//     double fontSize = 12.0,
//     double? height,
//     double? width}) {
//   onPressed == null ? onPressed = () {} : null;

//   return SizedBox(
//       height: height,
//       width: width,
//       child: InkWell(
//         child: ElevatedButton(
//           onPressed: onPressed(),
//           child: Text(
//             buttonText,
//             style: TextStyle(fontSize: fontSize),
//           ),
//         ),
//       ));
// }

// void openActionDialog(BuildContext context, String dialogTitle,
//     String dialogContent, String actionButtonText, Function actionOnPressed) {
//   showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(dialogTitle),
//           content: Text(dialogContent),
//           actions: <Widget>[
//             TextButton(
//               onPressed: actionOnPressed(),
//               child: Text(actionButtonText),
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Back'))
//           ],
//         );
//       });
// }

bool isNullOrEmpty(String string) {
  if (string.isEmpty || string == '') {
    return true;
  } else {
    return false;
  }
}

bool isDefault(User user) {
  if ((user.id == -1 && user.username == '')) {
    return true;
  } else {
    return false;
  }
}
