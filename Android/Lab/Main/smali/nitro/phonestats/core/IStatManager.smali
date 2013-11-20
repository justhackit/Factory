.class public interface abstract Lnitro/phonestats/core/IStatManager;
.super Ljava/lang/Object;
.source "IStatManager.java"


# virtual methods
.method public abstract addHandler(Landroid/os/Handler;)V
.end method

.method public abstract checkNumberCorrection()V
.end method

.method public abstract close()V
.end method

.method public abstract createHistoricalStats(I)V
.end method

.method public abstract debugSomething()V
.end method

.method public abstract destroyAllHandlers()V
.end method

.method public abstract doManualCorrection(III)V
.end method

.method public abstract firePreferenceChange(Ljava/lang/String;)V
.end method

.method public abstract firstSyncNeeded()Z
.end method

.method public abstract getAnalyzer()Lnitro/phonestats/core/IEventAnalyzer;
.end method

.method public abstract getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;
.end method

.method public abstract getDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastUpdated()J
.end method

.method public abstract getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isHistoricalStatsAvalaible(I)Z
.end method

.method public abstract isInProcessing()Z
.end method

.method public abstract loadBufferedStats()V
.end method

.method public abstract loadEvents()V
.end method

.method public abstract newCallEvent()V
.end method

.method public abstract newSMSCheck()V
.end method

.method public abstract postError(Ljava/lang/String;)V
.end method

.method public abstract removeHandler(Landroid/os/Handler;)V
.end method

.method public abstract resetDatabase()V
.end method

.method public abstract resetStats()V
.end method

.method public abstract setInProcessing(Z)V
.end method

.method public abstract setLastUpdated(J)V
.end method

.method public abstract syncAndLoad()V
.end method

.method public abstract syncBackend()I
.end method
