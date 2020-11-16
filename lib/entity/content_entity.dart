
import 'package:flutter/cupertino.dart';


class ContentEntity  {
	Widget route;
	String title;

	ContentEntity.fromJson( Map<String, dynamic> json) {
		if (json['route'] != null) {
			route = json['route'];
		}
		if (json['title'] != null) {
			title = json['title']?.toString();
		}
	}

	Map<String, dynamic> toJson()  {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['route'] = this.route;
		data['title'] = this.title;
		return data;
	}
}
