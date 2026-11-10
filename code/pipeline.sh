# L1  information model: hand-authored RDFS/OWL (aligned to CIM IEC 61970-301)
# L2  profile   : LinkML profile over the IM
# L3  artifacts : generated from that one profile

$ linkml-shacl      lvprofile.yaml -o lvprofile-shacl.ttl      # validator
$ linkml-avro       lvprofile.yaml -o lvmeas.avsc              # Kafka
$ linkml-jsonschema lvprofile.yaml -o schemas/analog.json      # OpenAPI
$ linkml-sql        lvprofile.yaml --dialect postgres -o ddl/pg.sql
$ shacl-validate    lvprofile-shacl.ttl instance.ttl
