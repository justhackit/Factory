.class public Lnitro/phonestats/backup/DroidStatsBackupManager;
.super Ljava/lang/Object;
.source "DroidStatsBackupManager.java"


# instance fields
.field private analyzer:Lnitro/phonestats/core/IEventAnalyzer;

.field private ctx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private statManager:Lnitro/phonestats/core/IStatManager;

.field private syncer:Lnitro/phonestats/core/DatabaseSyncer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/IEventAnalyzer;Lnitro/phonestats/core/DatabaseSyncer;)V
    .locals 1
    .parameter "ctx"
    .parameter "analyzer"
    .parameter "syncer"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->statManager:Lnitro/phonestats/core/IStatManager;

    .line 31
    iput-object p2, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    .line 32
    iput-object p3, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->syncer:Lnitro/phonestats/core/DatabaseSyncer;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/backup/DroidStatsBackupManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public backupData()V
    .locals 6

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DroidStats/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->backupData(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->syncer:Lnitro/phonestats/core/DatabaseSyncer;

    const-string v2, "sms.dat"

    invoke-virtual {v1, v2, v0}, Lnitro/phonestats/core/DatabaseSyncer;->backupSMSEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->syncer:Lnitro/phonestats/core/DatabaseSyncer;

    const-string v2, "calls.dat"

    invoke-virtual {v1, v2, v0}, Lnitro/phonestats/core/DatabaseSyncer;->backupCallEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lnitro/phonestats/backup/DroidStatsBackupManager$1;

    invoke-direct {v2, p0, v0}, Lnitro/phonestats/backup/DroidStatsBackupManager$1;-><init>(Lnitro/phonestats/backup/DroidStatsBackupManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public backupSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 82
    new-instance v0, Lnitro/phonestats/core/ExcludedNumbersManager;

    iget-object v3, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, manager:Lnitro/phonestats/core/ExcludedNumbersManager;
    new-instance v2, Lnitro/phonestats/core/ExcludedTimesManager;

    iget-object v3, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnitro/phonestats/core/ExcludedTimesManager;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, timesManager:Lnitro/phonestats/core/ExcludedTimesManager;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DroidStats/config/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, path:Ljava/lang/String;
    const-string v3, "excludednumbersCalls.dat"

    invoke-virtual {v0, v3, v8, v1}, Lnitro/phonestats/core/ExcludedNumbersManager;->saveToFileCalls(Ljava/lang/String;ZLjava/lang/String;)V

    .line 86
    const-string v3, "excludednumbersSms.dat"

    invoke-virtual {v0, v3, v8, v1}, Lnitro/phonestats/core/ExcludedNumbersManager;->saveToFileSms(Ljava/lang/String;ZLjava/lang/String;)V

    .line 87
    const-string v3, "excludedtimesCalls.dat"

    invoke-virtual {v2, v3, v8, v1}, Lnitro/phonestats/core/ExcludedTimesManager;->saveToFile(Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    iget-object v3, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v3, v1}, Lnitro/phonestats/settings/core/Settings;->backupSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lnitro/phonestats/backup/DroidStatsBackupManager$2;

    invoke-direct {v4, p0, v1}, Lnitro/phonestats/backup/DroidStatsBackupManager$2;-><init>(Lnitro/phonestats/backup/DroidStatsBackupManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public exportCSV()V
    .locals 6

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DroidStats/export/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    const-string v2, "events.csv"

    invoke-interface {v1, v2, v0}, Lnitro/phonestats/core/IEventAnalyzer;->exportEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lnitro/phonestats/backup/DroidStatsBackupManager$3;

    invoke-direct {v2, p0, v0}, Lnitro/phonestats/backup/DroidStatsBackupManager$3;-><init>(Lnitro/phonestats/backup/DroidStatsBackupManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public restoreData()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .local v2, max:J
    const-string v7, "DroidStats/data/"

    invoke-static {v7}, Lnitro/phonestats/core/helper/NitroUtils;->getSubdirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 68
    cmp-long v7, v2, v9

    if-lez v7, :cond_2

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DroidStats/data/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, path:Ljava/lang/String;
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    iget-object v7, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v7, v4}, Lnitro/phonestats/core/traffic/TrafficEngine;->restoreData(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v7, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->syncer:Lnitro/phonestats/core/DatabaseSyncer;

    const-string v8, "sms.dat"

    invoke-virtual {v7, v8, v4}, Lnitro/phonestats/core/DatabaseSyncer;->restoreSMSEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v7, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->syncer:Lnitro/phonestats/core/DatabaseSyncer;

    const-string v8, "calls.dat"

    invoke-virtual {v7, v8, v4}, Lnitro/phonestats/core/DatabaseSyncer;->restoreCallEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->statManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v7}, Lnitro/phonestats/core/IStatManager;->resetStats()V

    .line 76
    iget-object v7, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->statManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v7, v9, v10}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 79
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    return-void

    .line 57
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 60
    .local v0, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 61
    .local v5, timestamp:J
    cmp-long v8, v5, v2

    if-lez v8, :cond_0

    .line 62
    move-wide v2, v5

    goto :goto_0

    .line 63
    .end local v5           #timestamp:J
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreSettings()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 98
    new-instance v2, Lnitro/phonestats/core/ExcludedNumbersManager;

    iget-object v9, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-direct {v2, v9}, Lnitro/phonestats/core/ExcludedNumbersManager;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, manager:Lnitro/phonestats/core/ExcludedNumbersManager;
    new-instance v6, Lnitro/phonestats/core/ExcludedTimesManager;

    iget-object v9, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-direct {v6, v9}, Lnitro/phonestats/core/ExcludedTimesManager;-><init>(Landroid/content/Context;)V

    .line 100
    .local v6, timesManager:Lnitro/phonestats/core/ExcludedTimesManager;
    const-wide/16 v3, 0x0

    .line 101
    .local v3, max:J
    const-string v9, "DroidStats/config/"

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->getSubdirs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 112
    cmp-long v9, v3, v12

    if-lez v9, :cond_1

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DroidStats/config/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, path:Ljava/lang/String;
    const-string v9, "excludednumbersCalls.dat"

    invoke-virtual {v2, v9, v11, v5}, Lnitro/phonestats/core/ExcludedNumbersManager;->readFromFileCalls(Ljava/lang/String;ZLjava/lang/String;)V

    .line 117
    const-string v9, "excludednumbersSms.dat"

    invoke-virtual {v2, v9, v11, v5}, Lnitro/phonestats/core/ExcludedNumbersManager;->readFromFileSms(Ljava/lang/String;ZLjava/lang/String;)V

    .line 118
    const-string v9, "excludedtimesCalls.dat"

    invoke-virtual {v6, v9, v11, v5}, Lnitro/phonestats/core/ExcludedTimesManager;->readFromFile(Ljava/lang/String;ZLjava/lang/String;)V

    .line 119
    iget-object v9, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v9, v5}, Lnitro/phonestats/settings/core/Settings;->restoreSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object v9, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v9}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I

    move-result v9

    iget-object v10, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->ctx:Landroid/content/Context;

    invoke-static {v9, v10}, Lnitro/phonestats/core/traffic/TrafficEngine;->changeResetDate(ILandroid/content/Context;)V

    .line 122
    iget-object v9, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->statManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v9, v12, v13}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 125
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 104
    .local v0, dir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 105
    .local v7, timestamp:J
    cmp-long v10, v7, v3

    if-lez v10, :cond_0

    .line 106
    move-wide v3, v7

    goto :goto_0

    .line 107
    .end local v7           #timestamp:J
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 36
    iput-object p1, p0, Lnitro/phonestats/backup/DroidStatsBackupManager;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method
