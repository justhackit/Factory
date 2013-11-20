.class public Lnitro/phonestats/core/EventAnalyzer;
.super Ljava/lang/Object;
.source "EventAnalyzer.java"

# interfaces
.implements Lnitro/phonestats/core/IEventAnalyzer;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private ctx:Landroid/content/Context;

.field private dataLock:Ljava/lang/Object;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

.field private final lastAnalyzed:Ljava/lang/String;

.field private manager:Lnitro/phonestats/core/IStatManager;

.field private monthBeginning:Ljava/util/Date;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->calendar:Ljava/util/Calendar;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->lastAnalyzed:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->dataLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->manager:Lnitro/phonestats/core/IStatManager;

    .line 60
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    new-instance v0, Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-direct {v0, p1}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    .line 65
    return-void
.end method

.method private analyzeFailedCallds(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 18
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_FAILED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 189
    .local v7, c:Landroid/database/Cursor;
    const-string v1, "time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 190
    .local v17, timeCol:I
    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 191
    .local v16, numberCol:I
    const-string v1, "length"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 193
    .local v12, lengthCol:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new failed calls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 195
    const-string v1, "calls_failed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v14

    .line 196
    .local v14, map_failed_calls_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v1, "calls_failed"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v13

    .line 197
    .local v13, map_failed_calls:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual {v14}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 198
    invoke-virtual {v13}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 200
    const-string v1, "calls_failed"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnitro/phonestats/core/stat/CallCountStat;

    .line 201
    .local v10, failedCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v1, "calls_failed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnitro/phonestats/core/stat/CallCountStat;

    .line 203
    .local v11, failedCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    invoke-virtual {v10}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 204
    invoke-virtual {v11}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 206
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_0
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, number:Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 211
    .local v8, date:Ljava/util/Date;
    invoke-virtual {v10}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 213
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v15, v1}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 215
    new-instance v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent;-><init>(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;)V

    .line 216
    .local v9, eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->FAILED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    iput-object v1, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    .line 217
    iput-object v15, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->number:Ljava/lang/String;

    .line 218
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    .line 219
    iput-object v8, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->datetime:Ljava/util/Date;

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v11}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 224
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 227
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 207
    if-nez v1, :cond_0

    .line 230
    .end local v8           #date:Ljava/util/Date;
    .end local v9           #eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .end local v15           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 232
    return-void
.end method

.method private analyzeIncomingCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 37
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_INCOMING:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 417
    .local v9, c:Landroid/database/Cursor;
    const-string v2, "length"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 418
    .local v24, lengthCol:I
    const-string v2, "time"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 419
    .local v34, timeCol:I
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 421
    .local v32, numberCol:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incoming calls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbersCalls()Ljava/util/Set;

    move-result-object v13

    .line 426
    .local v13, freenumsSimple:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatternsCallsRegXp()Ljava/util/Set;

    move-result-object v14

    .line 427
    .local v14, freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    new-instance v2, Lnitro/phonestats/core/ExcludedTimesManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnitro/phonestats/core/ExcludedTimesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lnitro/phonestats/core/ExcludedTimesManager;->getExcludedTimes()Ljava/util/Set;

    move-result-object v15

    .line 428
    .local v15, freetimes:Ljava/util/Set;,"Ljava/util/Set<Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->getTimingMode(Landroid/content/Context;)Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-result-object v36

    .line 431
    .local v36, timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;
    const-string v2, "in_sec"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v27

    .line 432
    .local v27, map_incoming_seconds:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "in_sec_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v28

    .line 433
    .local v28, map_incoming_seconds_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "in_sec_payed"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v29

    .line 434
    .local v29, map_incoming_seconds_payed:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "in_sec_payed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v30

    .line 435
    .local v30, map_incoming_seconds_payed_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "in_calls"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v25

    .line 436
    .local v25, map_incoming_calls:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "in_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v26

    .line 437
    .local v26, map_incoming_calls_month:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 438
    invoke-virtual/range {v28 .. v28}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 439
    invoke-virtual/range {v29 .. v29}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 440
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 441
    invoke-virtual/range {v25 .. v25}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 442
    invoke-virtual/range {v26 .. v26}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 444
    const-string v2, "in_sec"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 445
    .local v19, ingoingSecCounter:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v2, "in_sec_payed"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 446
    .local v22, ingoingSecCounterPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v2, "in_sec_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 447
    .local v20, ingoingSecCounterMonth:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v2, "in_sec_payed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 448
    .local v21, ingoingSecCounterMonthPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v2, "in_calls"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnitro/phonestats/core/stat/CallCountStat;

    .line 449
    .local v16, ingoingCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v2, "in_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnitro/phonestats/core/stat/CallCountStat;

    .line 450
    .local v17, ingoingCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v2, "in_billed_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnitro/phonestats/core/stat/CallCountStat;

    .line 451
    .local v18, ingoingPaidCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    invoke-virtual/range {v19 .. v19}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 452
    invoke-virtual/range {v22 .. v22}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 453
    invoke-virtual/range {v20 .. v20}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 454
    invoke-virtual/range {v21 .. v21}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 455
    invoke-virtual/range {v16 .. v16}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 456
    invoke-virtual/range {v17 .. v17}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 457
    invoke-virtual/range {v18 .. v18}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 459
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 461
    :cond_0
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 462
    .local v11, duration:I
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 463
    .local v31, number:Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 466
    .local v10, date:Ljava/util/Date;
    const/16 v35, 0x0

    .line 469
    .local v35, timeMatch:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 470
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 477
    :goto_0
    const/16 v23, 0x1

    .line 479
    .local v23, isBilled:Z
    if-nez v35, :cond_9

    .line 487
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 488
    :cond_2
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v14}, Lnitro/phonestats/core/EventAnalyzer;->matchPatternSet(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    :cond_3
    const/16 v23, 0x0

    .line 501
    :cond_4
    :goto_1
    new-instance v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    move-object/from16 v0, v36

    invoke-direct {v12, v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent;-><init>(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;)V

    .line 502
    .local v12, eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    sget-object v2, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->INCOMING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    iput-object v2, v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    .line 503
    move-object/from16 v0, v31

    iput-object v0, v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;->number:Ljava/lang/String;

    .line 504
    iput v11, v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    .line 505
    iput-object v10, v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;->datetime:Ljava/util/Date;

    .line 506
    move/from16 v0, v23

    iput-boolean v0, v12, Lnitro/phonestats/core/PhoneEvent$CallEvent;->isBilled:Z

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v12}, Lnitro/phonestats/core/PhoneEvent$CallEvent;->getBilledDuration()Ljava/lang/Integer;

    move-result-object v8

    .line 513
    .local v8, billedTime:Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 514
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 515
    invoke-virtual/range {v16 .. v16}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 517
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 518
    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 519
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 523
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 524
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 525
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 526
    invoke-virtual/range {v17 .. v17}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 527
    if-eqz v23, :cond_5

    .line 528
    invoke-virtual/range {v18 .. v18}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 530
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 531
    int-to-long v2, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 532
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 535
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 460
    if-nez v2, :cond_0

    .line 538
    .end local v8           #billedTime:Ljava/lang/Integer;
    .end local v10           #date:Ljava/util/Date;
    .end local v11           #duration:I
    .end local v12           #eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .end local v23           #isBilled:Z
    .end local v31           #number:Ljava/lang/String;
    .end local v35           #timeMatch:Z
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 540
    return-void

    .line 470
    .restart local v10       #date:Ljava/util/Date;
    .restart local v11       #duration:I
    .restart local v31       #number:Ljava/lang/String;
    .restart local v35       #timeMatch:Z
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    .line 471
    .local v33, time:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v11}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->matches(Ljava/util/Calendar;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const/16 v35, 0x1

    .line 473
    goto/16 :goto_0

    .line 498
    .end local v33           #time:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    .restart local v23       #isBilled:Z
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_1
.end method

.method private analyzeIncomingSMS(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 29
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS_INCOMING:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 666
    .local v10, c:Landroid/database/Cursor;
    const-string v2, "length"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 667
    .local v16, lengthCol:I
    const-string v2, "time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 668
    .local v28, timeCol:I
    const-string v2, "number"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 673
    .local v22, numberCol:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbersSMS()Ljava/util/Set;

    move-result-object v13

    .line 674
    .local v13, freenumsSimple:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v2}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatternsSMSRegXp()Ljava/util/Set;

    move-result-object v14

    .line 677
    .local v14, freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->getSmsSplitLength(Landroid/content/Context;)I

    move-result v27

    .line 679
    .local v27, smsSplitLength:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v8

    .line 681
    .local v8, billIncomingSMS:Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " incoming SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 683
    const-string v2, "sms_inbox"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v17

    .line 684
    .local v17, map_sms_inbox:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "sms_inbox_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v18

    .line 685
    .local v18, map_sms_inbox_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "sms_inbox_paid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v19

    .line 686
    .local v19, map_sms_inbox_paid:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v2, "sms_inbox_paid_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v20

    .line 687
    .local v20, map_sms_inbox_paid_month:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual/range {v17 .. v17}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 688
    invoke-virtual/range {v18 .. v18}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 689
    invoke-virtual/range {v19 .. v19}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 690
    invoke-virtual/range {v20 .. v20}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 692
    const-string v2, "sms_inbox"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 693
    .local v23, smsCounterInbox:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v2, "sms_inbox_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 694
    .local v24, smsCounterInboxMonth:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v2, "sms_inbox_paid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 695
    .local v25, smsCounterInboxPaid:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v2, "sms_inbox_paid_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 697
    .local v26, smsCounterInboxPaidMonth:Lnitro/phonestats/core/stat/SmsCountStat;
    invoke-virtual/range {v23 .. v23}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 698
    invoke-virtual/range {v24 .. v24}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 699
    invoke-virtual/range {v25 .. v25}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 700
    invoke-virtual/range {v26 .. v26}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 702
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 706
    :cond_0
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 707
    .local v21, number:Ljava/lang/String;
    new-instance v11, Ljava/util/Date;

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 709
    .local v11, date:Ljava/util/Date;
    const/4 v15, 0x0

    .line 711
    .local v15, isBilled:Z
    if-eqz v8, :cond_3

    .line 713
    const/4 v15, 0x1

    .line 715
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 716
    :cond_1
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lnitro/phonestats/core/EventAnalyzer;->matchPatternSet(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 719
    :cond_2
    const/4 v15, 0x0

    .line 727
    :cond_3
    new-instance v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    move/from16 v0, v27

    invoke-direct {v12, v0}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;-><init>(I)V

    .line 728
    .local v12, eventInfos:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    sget-object v2, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->INCOMING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    iput-object v2, v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    .line 729
    move-object/from16 v0, v21

    iput-object v0, v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->number:Ljava/lang/String;

    .line 730
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    .line 731
    iput-object v11, v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->datetime:Ljava/util/Date;

    .line 732
    iput-boolean v15, v12, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->isBilled:Z

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual {v12}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->getBilledMessages()I

    move-result v9

    .line 738
    .local v9, billedMessages:I
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 739
    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 740
    const-wide/16 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 741
    int-to-long v2, v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 743
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 744
    const-wide/16 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 745
    int-to-long v2, v9

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 746
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 747
    int-to-long v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 750
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 703
    if-nez v2, :cond_0

    .line 753
    .end local v9           #billedMessages:I
    .end local v11           #date:Ljava/util/Date;
    .end local v12           #eventInfos:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    .end local v15           #isBilled:Z
    .end local v21           #number:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 754
    return-void
.end method

.method private analyzeOutgoingCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 48
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    const/4 v12, 0x0

    .line 242
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_OUTGOING:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbersCalls()Ljava/util/Set;

    move-result-object v17

    .line 247
    .local v17, freenumsSimple:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatternsCallsRegXp()Ljava/util/Set;

    move-result-object v18

    .line 248
    .local v18, freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    new-instance v3, Lnitro/phonestats/core/ExcludedTimesManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lnitro/phonestats/core/ExcludedTimesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lnitro/phonestats/core/ExcludedTimesManager;->getExcludedTimes()Ljava/util/Set;

    move-result-object v19

    .line 252
    .local v19, freetimes:Ljava/util/Set;,"Ljava/util/Set<Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->getTimingMode(Landroid/content/Context;)Lnitro/phonestats/core/helper/StatsUtils$TimingMode;

    move-result-object v44

    .line 254
    .local v44, timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;
    const-string v3, "length"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 255
    .local v21, lengthCol:I
    const-string v3, "time"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 256
    .local v39, timeCol:I
    const-string v3, "number"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 258
    .local v29, numberCol:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outgoing calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 260
    new-instance v45, Ljava/util/Date;

    invoke-direct/range {v45 .. v45}, Ljava/util/Date;-><init>()V

    .line 261
    .local v45, today:Ljava/util/Date;
    invoke-virtual/range {v45 .. v45}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Date;

    .line 264
    .local v15, earliestDate:Ljava/util/Date;
    const-string v3, "out_sec"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v24

    .line 265
    .local v24, map_outgoing_seconds:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "out_sec_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v25

    .line 266
    .local v25, map_outgoing_seconds_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "out_sec_payed"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v27

    .line 267
    .local v27, map_outgoing_seconds_payed:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "out_sec_payed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v26

    .line 268
    .local v26, map_outgoing_seconds_month_payed:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "out_calls"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v22

    .line 269
    .local v22, map_outgoing_calls:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "out_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v23

    .line 270
    .local v23, map_outgoing_calls_month:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual/range {v24 .. v24}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 271
    invoke-virtual/range {v25 .. v25}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 272
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 273
    invoke-virtual/range {v26 .. v26}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 274
    invoke-virtual/range {v22 .. v22}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 275
    invoke-virtual/range {v23 .. v23}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 279
    const-string v3, "out_sec"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 280
    .local v34, outgoingSecCounter:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v3, "out_sec_payed"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 281
    .local v37, outgoingSecCounterPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v3, "out_sec_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 282
    .local v35, outgoingSecCounterMonth:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v3, "out_sec_payed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 283
    .local v36, outgoingSecCounterMonthPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v3, "out_calls"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lnitro/phonestats/core/stat/CallCountStat;

    .line 284
    .local v31, outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v3, "out_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lnitro/phonestats/core/stat/CallCountStat;

    .line 285
    .local v33, outgoingCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v3, "out_billed_calls_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnitro/phonestats/core/stat/CallCountStat;

    .line 286
    .local v30, outgoingBilledCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v3, "out_sec_payed_week_average"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 287
    .local v9, averageSecOutgoingPayedMonth:Lnitro/phonestats/core/stat/AverageCountStat;
    const-string v3, "out_sec_payed_month_average"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 288
    .local v10, averageSecOutgoingPayedWeek:Lnitro/phonestats/core/stat/AverageCountStat;
    const-string v3, "out_calls_lenght_average"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 289
    .local v32, outgoingCallsLengthAverage:Lnitro/phonestats/core/stat/AverageCountStat;
    invoke-virtual/range {v34 .. v34}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 290
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 291
    invoke-virtual/range {v35 .. v35}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 292
    invoke-virtual/range {v36 .. v36}, Lnitro/phonestats/core/stat/CallSecondsStat;->reset()V

    .line 293
    invoke-virtual/range {v31 .. v31}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 294
    invoke-virtual/range {v33 .. v33}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 295
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 296
    invoke-virtual {v9}, Lnitro/phonestats/core/stat/AverageCountStat;->reset()V

    .line 297
    invoke-virtual {v10}, Lnitro/phonestats/core/stat/AverageCountStat;->reset()V

    .line 298
    invoke-virtual/range {v32 .. v32}, Lnitro/phonestats/core/stat/AverageCountStat;->reset()V

    .line 300
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 302
    :cond_0
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 303
    .local v14, duration:I
    move/from16 v0, v29

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 304
    .local v28, number:Ljava/lang/String;
    new-instance v13, Ljava/util/Date;

    move/from16 v0, v39

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 307
    .local v13, date:Ljava/util/Date;
    const/16 v40, 0x0

    .line 310
    .local v40, timeMatch:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 318
    :goto_0
    const/16 v20, 0x1

    .line 320
    .local v20, isBilled:Z
    if-nez v40, :cond_c

    .line 328
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 329
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/EventAnalyzer;->matchPatternSet(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    :cond_3
    const/16 v20, 0x0

    .line 342
    :cond_4
    :goto_1
    new-instance v16, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent;-><init>(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;)V

    .line 343
    .local v16, eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    sget-object v3, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->OUTGOING_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    move-object/from16 v0, v16

    iput-object v3, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    .line 344
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lnitro/phonestats/core/PhoneEvent$CallEvent;->number:Ljava/lang/String;

    .line 345
    move-object/from16 v0, v16

    iput v14, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    .line 346
    move-object/from16 v0, v16

    iput-object v13, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->datetime:Ljava/util/Date;

    .line 347
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lnitro/phonestats/core/PhoneEvent$CallEvent;->isBilled:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual/range {v16 .. v16}, Lnitro/phonestats/core/PhoneEvent$CallEvent;->getBilledDuration()Ljava/lang/Integer;

    move-result-object v11

    .line 354
    .local v11, billedDuration:Ljava/lang/Integer;
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lnitro/phonestats/core/PhoneEvent$CallEvent;->isBilled:Z

    .line 356
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 357
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 358
    invoke-virtual/range {v31 .. v31}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 360
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 361
    int-to-long v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 362
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 366
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    .line 367
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->addEntry(J)V

    .line 369
    :cond_5
    invoke-virtual {v13, v15}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    move-object v15, v13

    .line 373
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 374
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 375
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lnitro/phonestats/core/stat/CallSecondsStat;->addValue(I)V

    .line 376
    invoke-virtual/range {v33 .. v33}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 377
    if-eqz v20, :cond_7

    .line 378
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 380
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 381
    int-to-long v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 382
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 385
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 301
    if-nez v3, :cond_0

    .line 387
    invoke-virtual/range {v45 .. v45}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v41, v3, v5

    .line 388
    .local v41, timespan:J
    const-wide/16 v3, 0x3e8

    div-long v3, v41, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x18

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v43, v0

    .line 389
    .local v43, timespanDays:I
    new-instance v4, Ljava/lang/Long;

    .line 390
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    move/from16 v0, v43

    int-to-double v7, v0

    const-wide/high16 v46, 0x403e

    div-double v7, v7, v46

    div-double/2addr v5, v7

    double-to-int v3, v5

    int-to-long v5, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 389
    invoke-virtual {v9, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 391
    new-instance v4, Ljava/lang/Long;

    .line 392
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    move/from16 v0, v43

    int-to-double v7, v0

    const-wide/high16 v46, 0x401c

    div-double v7, v7, v46

    div-double/2addr v5, v7

    double-to-int v3, v5

    int-to-long v5, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 391
    invoke-virtual {v10, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 393
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v9, v3}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 394
    invoke-virtual/range {v37 .. v37}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v10, v3}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 395
    move/from16 v0, v43

    int-to-double v3, v0

    const-wide/high16 v5, 0x403e

    div-double/2addr v3, v5

    invoke-virtual {v9, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setDivider(D)V

    .line 396
    move/from16 v0, v43

    int-to-double v3, v0

    const-wide/high16 v5, 0x401c

    div-double/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setDivider(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    .end local v11           #billedDuration:Ljava/lang/Integer;
    .end local v13           #date:Ljava/util/Date;
    .end local v14           #duration:I
    .end local v16           #eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .end local v20           #isBilled:Z
    .end local v28           #number:Ljava/lang/String;
    .end local v40           #timeMatch:Z
    .end local v41           #timespan:J
    .end local v43           #timespanDays:I
    :cond_9
    if-eqz v12, :cond_a

    .line 401
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_a
    return-void

    .line 311
    .restart local v13       #date:Ljava/util/Date;
    .restart local v14       #duration:I
    .restart local v28       #number:Ljava/lang/String;
    .restart local v40       #timeMatch:Z
    :cond_b
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    .line 312
    .local v38, time:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnitro/phonestats/core/EventAnalyzer;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v14}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;->matches(Ljava/util/Calendar;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const/16 v40, 0x1

    .line 314
    goto/16 :goto_0

    .line 339
    .end local v38           #time:Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;
    .restart local v20       #isBilled:Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 399
    .end local v9           #averageSecOutgoingPayedMonth:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v10           #averageSecOutgoingPayedWeek:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v13           #date:Ljava/util/Date;
    .end local v14           #duration:I
    .end local v15           #earliestDate:Ljava/util/Date;
    .end local v17           #freenumsSimple:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18           #freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    .end local v19           #freetimes:Ljava/util/Set;,"Ljava/util/Set<Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;>;"
    .end local v20           #isBilled:Z
    .end local v21           #lengthCol:I
    .end local v22           #map_outgoing_calls:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v23           #map_outgoing_calls_month:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v24           #map_outgoing_seconds:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v25           #map_outgoing_seconds_month:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v26           #map_outgoing_seconds_month_payed:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v27           #map_outgoing_seconds_payed:Lnitro/phonestats/core/helper/NumberCountMap;
    .end local v28           #number:Ljava/lang/String;
    .end local v29           #numberCol:I
    .end local v30           #outgoingBilledCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    .end local v31           #outgoingCalls:Lnitro/phonestats/core/stat/CallCountStat;
    .end local v32           #outgoingCallsLengthAverage:Lnitro/phonestats/core/stat/AverageCountStat;
    .end local v33           #outgoingCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    .end local v34           #outgoingSecCounter:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v35           #outgoingSecCounterMonth:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v36           #outgoingSecCounterMonthPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v37           #outgoingSecCounterPayed:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v39           #timeCol:I
    .end local v40           #timeMatch:Z
    .end local v44           #timingMode:Lnitro/phonestats/core/helper/StatsUtils$TimingMode;
    .end local v45           #today:Ljava/util/Date;
    :catchall_0
    move-exception v3

    .line 400
    if-eqz v12, :cond_d

    .line 401
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_d
    throw v3
.end method

.method private analyzeOutgoingSMS(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 38
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS_OUTGOING:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 549
    .local v13, c:Landroid/database/Cursor;
    const-string v3, "length"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 550
    .local v20, lengthCol:I
    const-string v3, "time"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 551
    .local v33, timeCol:I
    const-string v3, "number"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 555
    .local v26, numberCol:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->getSimpleExcludedNumbersSMS()Ljava/util/Set;

    move-result-object v17

    .line 556
    .local v17, freenumsSimple:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->excludedNumbersManager:Lnitro/phonestats/core/ExcludedNumbersManager;

    invoke-virtual {v3}, Lnitro/phonestats/core/ExcludedNumbersManager;->getExcludePatternsSMSRegXp()Ljava/util/Set;

    move-result-object v18

    .line 558
    .local v18, freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->getSmsSplitLength(Landroid/content/Context;)I

    move-result v32

    .line 563
    .local v32, smsSplitLength:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outgoing SMS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 565
    new-instance v37, Ljava/util/Date;

    invoke-direct/range {v37 .. v37}, Ljava/util/Date;-><init>()V

    .line 566
    .local v37, today:Ljava/util/Date;
    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Date;

    .line 568
    .local v15, earliestDate:Ljava/util/Date;
    const-string v3, "sms_sent_paid"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v23

    .line 569
    .local v23, map_sms_sent_paid:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "sms_sent_paid_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v24

    .line 570
    .local v24, map_sms_sent_paid_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "sms_sent"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v21

    .line 571
    .local v21, map_sms_sent:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v3, "sms_sent_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v22

    .line 572
    .local v22, map_sms_sent_month:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual/range {v23 .. v23}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 573
    invoke-virtual/range {v24 .. v24}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 574
    invoke-virtual/range {v21 .. v21}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 575
    invoke-virtual/range {v22 .. v22}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 577
    const-string v3, "sms_sent"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 578
    .local v27, smsCounterSent:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v3, "sms_sent_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 579
    .local v28, smsCounterSentMonth:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v3, "sms_sent_paid"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 580
    .local v29, smsCounterSentPaid:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v3, "sms_sent_paid_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lnitro/phonestats/core/stat/SmsCountStat;

    .line 581
    .local v30, smsCounterSentPaidMonth:Lnitro/phonestats/core/stat/SmsCountStat;
    const-string v3, "sms_sent_month_average"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 582
    .local v11, averageSMSSentMonth:Lnitro/phonestats/core/stat/AverageCountStat;
    const-string v3, "sms_sent_daily_average"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 584
    .local v12, averageSMSSentWeek:Lnitro/phonestats/core/stat/AverageCountStat;
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 585
    invoke-virtual/range {v28 .. v28}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 586
    invoke-virtual/range {v29 .. v29}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 587
    invoke-virtual/range {v30 .. v30}, Lnitro/phonestats/core/stat/SmsCountStat;->reset()V

    .line 588
    invoke-virtual {v11}, Lnitro/phonestats/core/stat/AverageCountStat;->reset()V

    .line 589
    invoke-virtual {v12}, Lnitro/phonestats/core/stat/AverageCountStat;->reset()V

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->manager:Lnitro/phonestats/core/IStatManager;

    .line 592
    const-string v4, "sms_sent_paid_average_characters"

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v31

    .line 591
    check-cast v31, Lnitro/phonestats/core/stat/AverageCountStat;

    .line 594
    .local v31, smsSentPaidAverageCharacters:Lnitro/phonestats/core/stat/AverageCountStat;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 597
    :cond_0
    const/16 v19, 0x1

    .line 598
    .local v19, isBilled:Z
    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 599
    .local v25, number:Ljava/lang/String;
    new-instance v14, Ljava/util/Date;

    move/from16 v0, v33

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v14, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 601
    .local v14, date:Ljava/util/Date;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 602
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lnitro/phonestats/core/EventAnalyzer;->matchPatternSet(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 605
    :cond_2
    const/16 v19, 0x0

    .line 613
    :cond_3
    new-instance v16, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;-><init>(I)V

    .line 614
    .local v16, eventInfos:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    sget-object v3, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->OUTGOING_SMS:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    move-object/from16 v0, v16

    iput-object v3, v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    .line 615
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->number:Ljava/lang/String;

    .line 616
    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    .line 617
    move-object/from16 v0, v16

    iput-object v14, v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->datetime:Ljava/util/Date;

    .line 618
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->isBilled:Z

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual/range {v16 .. v16}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->getBilledMessages()I

    move-result v3

    int-to-long v9, v3

    .line 624
    .local v9, addCount:J
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 625
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 626
    const-wide/16 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 627
    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 629
    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-lez v3, :cond_4

    .line 630
    move-object/from16 v0, v16

    iget v3, v0, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    int-to-long v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->addEntry(J)V

    .line 632
    :cond_4
    invoke-virtual {v14, v15}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    move-object v15, v14

    .line 636
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 637
    const-wide/16 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 638
    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v10}, Lnitro/phonestats/core/stat/SmsCountStat;->addValue(J)V

    .line 639
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 640
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 643
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 595
    if-nez v3, :cond_0

    .line 646
    .end local v9           #addCount:J
    .end local v14           #date:Ljava/util/Date;
    .end local v16           #eventInfos:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    .end local v19           #isBilled:Z
    .end local v25           #number:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v34, v3, v5

    .line 647
    .local v34, timespan:J
    const-wide/16 v3, 0x3e8

    div-long v3, v34, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x18

    div-long/2addr v3, v5

    long-to-int v0, v3

    move/from16 v36, v0

    .line 648
    .local v36, timespanDays:I
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v11, v3}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 649
    move/from16 v0, v36

    int-to-double v3, v0

    const-wide/high16 v5, 0x403e

    div-double/2addr v3, v5

    invoke-virtual {v11, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setDivider(D)V

    .line 650
    invoke-virtual/range {v27 .. v27}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v12, v3}, Lnitro/phonestats/core/stat/AverageCountStat;->setValue(Ljava/lang/Object;)V

    .line 651
    move/from16 v0, v36

    int-to-double v3, v0

    const-wide/high16 v5, 0x401c

    div-double/2addr v3, v5

    invoke-virtual {v12, v3, v4}, Lnitro/phonestats/core/stat/AverageCountStat;->setDivider(D)V

    .line 653
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 655
    return-void
.end method

.method private anayzeMissedCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 18
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lnitro/phonestats/core/EventAnalyzer;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_CALLS_MISSED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    .local v7, c:Landroid/database/Cursor;
    const-string v1, "time"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 138
    .local v17, timeCol:I
    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 139
    .local v16, numberCol:I
    const-string v1, "length"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 141
    .local v10, lengthCol:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missed calls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 143
    const-string v1, "calls_missed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v12

    .line 144
    .local v12, map_missed_calls_month:Lnitro/phonestats/core/helper/NumberCountMap;
    const-string v1, "calls_missed"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat;->getTopSubStats()Lnitro/phonestats/core/helper/NumberCountMap;

    move-result-object v11

    .line 145
    .local v11, map_missed_calls:Lnitro/phonestats/core/helper/NumberCountMap;
    invoke-virtual {v12}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 146
    invoke-virtual {v11}, Lnitro/phonestats/core/helper/NumberCountMap;->clear()V

    .line 148
    const-string v1, "calls_missed"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnitro/phonestats/core/stat/CallCountStat;

    .line 149
    .local v13, missedCalls:Lnitro/phonestats/core/stat/CallCountStat;
    const-string v1, "calls_missed_month"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnitro/phonestats/core/stat/CallCountStat;

    .line 151
    .local v14, missedCallsMonth:Lnitro/phonestats/core/stat/CallCountStat;
    invoke-virtual {v13}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 152
    invoke-virtual {v14}, Lnitro/phonestats/core/stat/CallCountStat;->reset()V

    .line 154
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_0
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, number:Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    move/from16 v0, v17

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 159
    .local v8, date:Ljava/util/Date;
    invoke-virtual {v13}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 161
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v15, v1}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 163
    new-instance v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lnitro/phonestats/core/PhoneEvent$CallEvent;-><init>(Lnitro/phonestats/core/helper/StatsUtils$TimingMode;)V

    .line 164
    .local v9, eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    sget-object v1, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->MISSED_CALL:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    iput-object v1, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    .line 165
    iput-object v15, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->number:Ljava/lang/String;

    .line 166
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    .line 167
    iput-object v8, v9, Lnitro/phonestats/core/PhoneEvent$CallEvent;->datetime:Ljava/util/Date;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v14}, Lnitro/phonestats/core/stat/CallCountStat;->increment()V

    .line 172
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v15, v1}, Lnitro/phonestats/core/helper/NumberCountMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    .line 175
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 155
    if-nez v1, :cond_0

    .line 178
    .end local v8           #date:Ljava/util/Date;
    .end local v9           #eventInfos:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    .end local v15           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 180
    return-void
.end method

.method private defineBilledLength(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;
    .locals 4
    .parameter "event"

    .prologue
    .line 873
    instance-of v2, p1, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 875
    check-cast v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    .line 876
    .local v0, callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnitro/phonestats/core/PhoneEvent$CallEvent;->getBilledDuration()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .end local v0           #callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 880
    check-cast v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    .line 881
    .local v1, smsEvent:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->getBilledMessages()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private defineLength(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;
    .locals 4
    .parameter "event"

    .prologue
    .line 858
    instance-of v2, p1, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 860
    check-cast v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    .line 861
    .local v0, callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->duration:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    .end local v0           #callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 865
    check-cast v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    .line 866
    .local v1, smsEvent:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->characters:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private defineType(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;
    .locals 3
    .parameter "event"

    .prologue
    .line 843
    instance-of v2, p1, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 845
    check-cast v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    .line 846
    .local v0, callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    iget-object v2, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;->action:Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;

    invoke-virtual {v2}, Lnitro/phonestats/core/PhoneEvent$CallEvent$CallAction;->toString()Ljava/lang/String;

    move-result-object v2

    .line 851
    .end local v0           #callEvent:Lnitro/phonestats/core/PhoneEvent$CallEvent;
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p1

    .line 850
    check-cast v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;

    .line 851
    .local v1, smsEvent:Lnitro/phonestats/core/PhoneEvent$SmsEvent;
    iget-object v2, v1, Lnitro/phonestats/core/PhoneEvent$SmsEvent;->action:Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;

    invoke-virtual {v2}, Lnitro/phonestats/core/PhoneEvent$SmsEvent$SmsAction;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private matchPatternSet(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 770
    .local p2, freepatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/regex/Pattern;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 770
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 771
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sortEventList()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lnitro/phonestats/core/EventAnalyzer;->dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    new-instance v2, Lnitro/phonestats/core/EventAnalyzer$1;

    invoke-direct {v2, p0}, Lnitro/phonestats/core/EventAnalyzer$1;-><init>(Lnitro/phonestats/core/EventAnalyzer;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public analyze()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->monthBeginning:Ljava/util/Date;

    .line 108
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->manager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getStats()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lnitro/phonestats/core/EventAnalyzer;->analyze(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 109
    return-void
.end method

.method public analyze(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V
    .locals 3
    .parameter
    .parameter "periodBeginning"
    .parameter "periodEnd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, stats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lnitro/phonestats/core/EventAnalyzer;->dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    const-string v0, "2"

    const-string v2, "analyze in EventAnalyzer"

    invoke-static {v0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->analyzeIncomingSMS(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->analyzeOutgoingSMS(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->analyzeIncomingCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->analyzeOutgoingCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->analyzeFailedCallds(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/core/EventAnalyzer;->anayzeMissedCalls(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 92
    iget-object v0, p0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lnitro/phonestats/core/EventAnalyzer;->sortEventList()V

    .line 74
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exportEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "path"

    .prologue
    .line 812
    invoke-virtual {p0}, Lnitro/phonestats/core/EventAnalyzer;->getEventlist()Ljava/util/List;

    move-result-object v2

    .line 813
    .local v2, events:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/PhoneEvent;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 814
    .local v0, content:Ljava/lang/StringBuffer;
    const-string v3, "number;time;type;length;billed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 815
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 837
    iget-object v3, p0, Lnitro/phonestats/core/EventAnalyzer;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p2}, Lnitro/phonestats/core/helper/NitroUtils;->writeFileExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-void

    .line 817
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/core/PhoneEvent;

    .line 819
    .local v1, event:Lnitro/phonestats/core/PhoneEvent;
    iget-object v4, v1, Lnitro/phonestats/core/PhoneEvent;->number:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    iget-object v4, v1, Lnitro/phonestats/core/PhoneEvent;->datetime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-direct {p0, v1}, Lnitro/phonestats/core/EventAnalyzer;->defineType(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 824
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    invoke-direct {p0, v1}, Lnitro/phonestats/core/EventAnalyzer;->defineLength(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    invoke-direct {p0, v1}, Lnitro/phonestats/core/EventAnalyzer;->defineBilledLength(Lnitro/phonestats/core/PhoneEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEventlist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/PhoneEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    iget-object v1, p0, Lnitro/phonestats/core/EventAnalyzer;->dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeSeries(I)Ljava/util/List;
    .locals 5
    .parameter "key_series"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v1, serie:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    iget-object v3, p0, Lnitro/phonestats/core/EventAnalyzer;->dataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 790
    :try_start_0
    iget-object v2, p0, Lnitro/phonestats/core/EventAnalyzer;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 789
    monitor-exit v3

    .line 798
    :cond_0
    return-object v1

    .line 790
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/PhoneEvent;

    .line 791
    .local v0, event:Lnitro/phonestats/core/PhoneEvent;
    instance-of v4, v0, Lnitro/phonestats/core/PhoneEvent$CallEvent;

    goto :goto_0

    .line 789
    .end local v0           #event:Lnitro/phonestats/core/PhoneEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
