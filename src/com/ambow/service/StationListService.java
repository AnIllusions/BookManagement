package com.ambow.service;

import java.util.List;

import com.ambow.model.Station;

public interface StationListService {

	List<Station> getAllStation(Class<Station> class1);

	List<Station> getStationByName(Class<Station> class1, String name);

}
