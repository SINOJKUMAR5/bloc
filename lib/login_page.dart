// ignore_for_file: prefer_const_constructors

import 'package:blockflutter/bloc/auth_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: BlocListener(
      listener: (context, state) {


        if(state is login_succes )
        {
          Center(Text(state.success_msg));
        },

      else if(state is login_failed){
        Center(Text(state.failed_msg));

        
      }
    )));
  }
}
