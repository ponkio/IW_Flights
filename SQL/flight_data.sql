DROP TABLE candidate4783.flight_data;
CREATE TABLE candidate4783.flight_data
(
    Flight_ID text NOT NULL PRIMARY KEY,
    AIRLINE text, 
    FOREIGN KEY(AIRLINE) REFERENCES candidate4783.airline_dim (airlinename),
    TransactionID text,
    Flight_Date date,
    ORIGINAIRPORT text,
    DESTAIRPORT text,
    Foreign KEY(ORIGINAIRPORT) REFERENCES candidate4783.airport_dim (airportname),
    Foreign KEY(DESTAIRPORT) REFERENCES candidate4783.airport_dim (airportname),
    CRSDepartureTime text,
    DepartureTime text,
    DepartureDelay text,
    TaxiOut text,
    WheelsOff text,
    WheelsOn text,
    TaxiIn text,
    CRSArrivalTime text,
    ArrivalTime text,
    ArrivalDelay text,
    CRSElapsedTime text,
    ActualElapsedTime text,
    DistanceMiles text,
    Cancelled boolean,
    Diverted boolean,
    DepatureDelayLong boolean,
    TAILNUM VARCHAR(10),
    FOREIGN KEY(TAILNUM) REFERENCES candidate4783.airplane_dim (tailnum),
    FlightNumber text COLLATE pg_catalog.default
);
