require adcore
require adexample

epicsEnvSet("PREFIX", "$(PREFIX=DMSC)")
epicsEnvSet("SIMDET_PORT", "$(PREFIX)SIMDET")
epicsEnvSet("K_PORT", "$(PREFIX)K")
epicsEnvSet("XSIZE", "$(XSIZE=200)")
epicsEnvSet("YSIZE", "$(YSIZE=200)")
epicsEnvSet("QSIZE", "20")

simDetectorConfig("$(SIMDET_PORT)", $(XSIZE), $(YSIZE), 1, 0, 0)
dbLoadRecords("simDetector.template", "P=$(PREFIX):, R=CAM:, PORT=$(SIMDET_PORT), ADDR=0, TIMEOUT=1")

KafkaPluginConfigure("$(K_PORT)", 3, 1, "$(SIMDET_PORT)", 0, -1, "itest03.dm.esss.dk:9092", "adplugin_integration_test")
dbLoadRecords("ADPluginKafka.template", "P=$(PREFIX),R=:KFK:,PORT=$(K_PORT),ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(SIMDET_PORT)")

iocInit

dbpf $(PREFIX):KFK:EnableCallbacks Enable
dbpf $(PREFIX):CAM:AcquirePeriod 1
dbpf $(PREFIX):CAM:Acquire 1

#Remember; file MUST end with a new line
