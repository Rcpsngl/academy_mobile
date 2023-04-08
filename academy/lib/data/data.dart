import 'dart:math';

import '../models/data_model.dart';
import '../models/event_type_model.dart';
import '../models/events_model.dart';

List<DateModel> getDates() {
  List<DateModel> dates = <DateModel>[];
  DateModel dateModel = DateModel();

  //1
  dateModel.date = "10";
  dateModel.weekDay = "Pts";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "11";
  dateModel.weekDay = "Slı";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "12";
  dateModel.weekDay = "Çrş";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "13";
  dateModel.weekDay = "Prş";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "14";
  dateModel.weekDay = "Cu";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "15";
  dateModel.weekDay = "Cts";
  dates.add(dateModel);

  dateModel = DateModel();

  //1
  dateModel.date = "16";
  dateModel.weekDay = "Pzr";
  dates.add(dateModel);

  dateModel = DateModel();
  dateModel.date = "17";
  dateModel.weekDay = "Pzt";
  dates.add(dateModel);

  dateModel = DateModel();
  dateModel.date = "18";
  dateModel.weekDay = "Slı";
  dates.add(dateModel);

  dateModel = DateModel();
  dateModel.date = "19";
  dateModel.weekDay = "Çrş";
  dates.add(dateModel);

  dateModel = DateModel();

  return dates;
}

List<EventTypeModel> getEventTypes() {
  List<EventTypeModel> events = [];
  EventTypeModel eventModel = EventTypeModel();

  //1
  eventModel.imgAssetPath = "lib/assets/images/concert.png";
  eventModel.eventType = "Konser";
  events.add(eventModel);

  eventModel = EventTypeModel();

  //1
  eventModel.imgAssetPath = "lib/assets/images/sports.png";
  eventModel.eventType = "Spor";
  events.add(eventModel);

  eventModel = EventTypeModel();

  //1
  eventModel.imgAssetPath = "lib/assets/images/education.png";
  eventModel.eventType = "Eğitim";
  events.add(eventModel);

  eventModel = EventTypeModel();

  return events;
}

List<EventsModel> getEvents() {
  List<EventsModel> events = <EventsModel>[];
  EventsModel eventsModel = EventsModel();

  //1
  eventsModel.date = "12 Nisan,2023";
  eventsModel.desc = "Kızılay Mackbear Networking";
  eventsModel.address = "Fidanlık,Adakale Sk. No:27 D:6, 06420 ";
  events.add(eventsModel);

  eventsModel = EventsModel();

  //2
  eventsModel.date = "18 Nisan 2023";
  eventsModel.desc = "Oyun Buluşması Mary Jane";
  eventsModel.address = "Fidanlık, Adakale Sk. No:27 D:6, 06420 ";
  events.add(eventsModel);

  eventsModel = EventsModel();

  //3
  eventsModel.date = "27 Nisan 2023";
  eventsModel.address = "AYBU Game Club Meeting";
  eventsModel.desc = "Fidanlık, Adakale Sk. No:27 D:6, 06420 ";
  events.add(eventsModel);

  eventsModel = EventsModel();
  //4
  eventsModel.date = "3 Mayıs 2023";
  eventsModel.address = "Halısaha Maçı";
  eventsModel.desc = "Fidanlık, Adakale Sk. No:27 D:6, 06420";
  events.add(eventsModel);

  eventsModel = EventsModel();
  //5
  eventsModel.date = "7 Mayıs 2023";
  eventsModel.address = "Lazer Counter";
  eventsModel.desc = "Fidanlık, Adakale Sk. No:27 D:6, 06420";
  events.add(eventsModel);

  eventsModel = EventsModel();
  //6
  eventsModel.date = "17 Mayıs 2023";
  eventsModel.address = "Masa Tenisi Turnuvası İstanbul";
  eventsModel.desc = "Fidanlık, Adakale Sk. No:27 D:6, 06420 ";
  events.add(eventsModel);

  eventsModel = EventsModel();

  return events;
}
