import 'package:flutter/material.dart';
import 'package:esim_app/presentation/home/widget/enum/service_enum.dart';

class ServicePage extends StatelessWidget {
    final ServiceType serviceType;

  const ServicePage({super.key, required this.serviceType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceType.name),
      ),
    );
  }
}
