CREATE TABLE analog_measurement (
    mRID          VARCHAR(64) PRIMARY KEY,
    phases        VARCHAR(4)  NOT NULL,
    unit_symbol   VARCHAR(8)  NOT NULL,
    created_at    TIMESTAMP   NOT NULL
);

CREATE TABLE analog_value (
    mRID            VARCHAR(64) NOT NULL,
    time_stamp      BIGINT      NOT NULL,      /* epoch millis: same instant as Avro */
    value           NUMERIC(12,4),
    FOREIGN KEY (mRID) REFERENCES analog_measurement(mRID)
);
