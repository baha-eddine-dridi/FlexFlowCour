// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future envoiMail() async {
  const service_id = "service_oexvh5j";
  const template_id = "template_idbrc0v";
  const user_id = "6archdNzohw_cUX5F";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "service_id": service_id,
        "template_id": template_id,
        "user_id": user_id,
        "template_params": {
          "sujet": "Confirmation de Participation", // Sujet par défaut
          "sent_to": "bahadridi441@gmail.com", // Votre email
          "to_name": "Baha", // Nom du destinataire par défaut
          "message":
              "Merci pour votre participation ! Nous vous attendons pour un entraînement incroyable.", // Message par défaut
        }
      }));
  return response.statusCode;
}
