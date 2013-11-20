.class public Lnitro/phonestats/core/StatManager;
.super Ljava/lang/Object;
.source "StatManager.java"

# interfaces
.implements Lnitro/phonestats/core/IStatManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static final DAYS_DONE_FOR_EXTRAPOLATE:I = 0x7

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final MSG_DATA_CHANGE:I = 0x0

.field public static final MSG_ERROR_POSTED:I = 0x1

.field public static final MSG_PREFERENCE_CHANGED:I = 0x2

.field public static final MSG_PREMIUM_INVALID:I = 0x3

.field public static final PREFERENCE_CHANGED_MESSAGE:Ljava/lang/String; = "preferenceChange"

.field private static inited:Z

.field private static instance:Lnitro/phonestats/core/IStatManager;

.field private static loaded:Z

.field private static sPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private analyzer:Lnitro/phonestats/core/IEventAnalyzer;

.field private backupManager:Lnitro/phonestats/backup/DroidStatsBackupManager;

.field private ctx:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

.field private handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private historicalStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private lastUpdated:J

.field private lock:Z

.field private mStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private sync:Lnitro/phonestats/core/DatabaseSyncer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lnitro/phonestats/core/StatManager;->instance:Lnitro/phonestats/core/IStatManager;

    .line 60
    sput-boolean v1, Lnitro/phonestats/core/StatManager;->inited:Z

    .line 61
    sput-boolean v1, Lnitro/phonestats/core/StatManager;->loaded:Z

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnitro/phonestats/core/StatManager;->lastUpdated:J

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/core/StatManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private bufferStats()V
    .locals 4

    .prologue
    .line 463
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->startTransaction()V

    .line 465
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/helper/PersistentBuffer;->commitTransaction()V

    .line 463
    monitor-exit v2

    .line 471
    return-void

    .line 465
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    .line 466
    .local v0, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->buffer()V

    goto :goto_0

    .line 463
    .end local v0           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createStats()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0, v2}, Lnitro/phonestats/core/StatFactory;->createMainStats(Ljava/util/Map;Landroid/content/Context;)V

    .line 192
    monitor-exit v1

    .line 196
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fireDataChange()V
    .locals 4

    .prologue
    .line 267
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->bufferStats()V

    .line 269
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/core/NotificationsChecker;->checkNotifications()V

    .line 280
    return-void

    .line 269
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 270
    .local v0, handler:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 80
    const-class v1, Lnitro/phonestats/core/StatManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnitro/phonestats/core/StatManager;->instance:Lnitro/phonestats/core/IStatManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lnitro/phonestats/core/StatManager;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/StatManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnitro/phonestats/core/StatManager;->instance:Lnitro/phonestats/core/IStatManager;

    .line 82
    const-string v0, "instance"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lnitro/phonestats/core/StatManager;->instance:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->init()V

    .line 87
    :cond_0
    sget-object v0, Lnitro/phonestats/core/StatManager;->instance:Lnitro/phonestats/core/IStatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isInited()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    sget-boolean v0, Lnitro/phonestats/core/StatManager;->inited:Z

    return v0
.end method

.method public static isLoaded()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lnitro/phonestats/core/StatManager;->loaded:Z

    return v0
.end method

.method private open()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lnitro/phonestats/core/helper/DatabaseHelper;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnitro/phonestats/core/helper/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    .line 223
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    invoke-virtual {v0}, Lnitro/phonestats/core/helper/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 225
    return-void
.end method

.method private registerSharedPreferenceListener()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lnitro/phonestats/core/StatManager$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/core/StatManager$1;-><init>(Lnitro/phonestats/core/StatManager;)V

    sput-object v1, Lnitro/phonestats/core/StatManager;->sPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 163
    sget-object v1, Lnitro/phonestats/core/StatManager;->sPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 164
    return-void
.end method

.method private roundToMinutes(J)I
    .locals 4
    .parameter "sec"

    .prologue
    .line 565
    long-to-double v0, p1

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 318
    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_0
    monitor-exit p1

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkNumberCorrection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 962
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getCorrectionState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 992
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getCorrectionState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 969
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    new-instance v0, Lnitro/phonestats/core/NumberCorrector;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lnitro/phonestats/core/NumberCorrector;-><init>(Landroid/content/Context;IZ)V

    .line 971
    .local v0, corrector:Lnitro/phonestats/core/NumberCorrector;
    invoke-virtual {v0}, Lnitro/phonestats/core/NumberCorrector;->correct()V

    .line 977
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1, v3}, Lnitro/phonestats/settings/core/Settings;->setCorrectionState(Landroid/content/Context;I)V

    goto :goto_0

    .line 973
    .end local v0           #corrector:Lnitro/phonestats/core/NumberCorrector;
    :cond_1
    new-instance v0, Lnitro/phonestats/core/NumberCorrector;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lnitro/phonestats/core/NumberCorrector;-><init>(Landroid/content/Context;Z)V

    .line 974
    .restart local v0       #corrector:Lnitro/phonestats/core/NumberCorrector;
    invoke-virtual {v0}, Lnitro/phonestats/core/NumberCorrector;->correct()V

    goto :goto_1

    .line 981
    .end local v0           #corrector:Lnitro/phonestats/core/NumberCorrector;
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 982
    new-instance v0, Lnitro/phonestats/core/NumberCorrector;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getCountryCode(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lnitro/phonestats/core/NumberCorrector;-><init>(Landroid/content/Context;IZ)V

    .line 983
    .restart local v0       #corrector:Lnitro/phonestats/core/NumberCorrector;
    invoke-virtual {v0}, Lnitro/phonestats/core/NumberCorrector;->correct()V

    .line 989
    :goto_2
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v1, v3}, Lnitro/phonestats/settings/core/Settings;->setCorrectionState(Landroid/content/Context;I)V

    goto :goto_0

    .line 985
    .end local v0           #corrector:Lnitro/phonestats/core/NumberCorrector;
    :cond_3
    new-instance v0, Lnitro/phonestats/core/NumberCorrector;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lnitro/phonestats/core/NumberCorrector;-><init>(Landroid/content/Context;Z)V

    .line 986
    .restart local v0       #corrector:Lnitro/phonestats/core/NumberCorrector;
    invoke-virtual {v0}, Lnitro/phonestats/core/NumberCorrector;->correct()V

    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 218
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->databaseHelper:Lnitro/phonestats/core/helper/DatabaseHelper;

    invoke-virtual {v0}, Lnitro/phonestats/core/helper/DatabaseHelper;->close()V

    .line 219
    return-void
.end method

.method public createHistoricalStats(I)V
    .locals 5
    .parameter "monthOffset"

    .prologue
    .line 531
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v2, prevStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v2, v3}, Lnitro/phonestats/core/StatFactory;->createMainStats(Ljava/util/Map;Landroid/content/Context;)V

    .line 534
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 535
    .local v0, periodBeginning:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 536
    .local v1, periodEnd:Ljava/util/Date;
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v3, v0, v1, p1}, Lnitro/phonestats/core/helper/StatsUtils;->calcPeriodDates(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;I)V

    .line 538
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    invoke-interface {v3, v2, v0, v1}, Lnitro/phonestats/core/IEventAnalyzer;->analyze(Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;)V

    .line 540
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->fireDataChange()V

    .line 543
    return-void
.end method

.method public debugSomething()V
    .locals 0

    .prologue
    .line 776
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    .line 944
    return-void
.end method

.method public destroyAllHandlers()V
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    monitor-enter v2

    .line 340
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 339
    monitor-exit v2

    .line 345
    return-void

    .line 340
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 341
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 339
    .end local v0           #handler:Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doManualCorrection(III)V
    .locals 2
    .parameter "addMinutes"
    .parameter "addSMS"
    .parameter "addMBTraffic"

    .prologue
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 1000
    if-lez p1, :cond_0

    .line 1001
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0, p1}, Lnitro/phonestats/core/DatabaseSyncer;->correctMinutes(I)V

    .line 1002
    :cond_0
    if-lez p2, :cond_1

    .line 1003
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0, p2}, Lnitro/phonestats/core/DatabaseSyncer;->correctSMS(I)V

    .line 1004
    :cond_1
    if-lez p3, :cond_2

    .line 1005
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0, p3}, Lnitro/phonestats/core/traffic/TrafficEngine;->correct3G(Landroid/content/Context;I)V

    .line 1007
    :cond_2
    const-string v0, "pref_manual_correction"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method public firePreferenceChange(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 173
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "preferenceChange"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "PREFERENCE_CHANGED"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    monitor-exit v4

    .line 189
    return-void

    .line 182
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 183
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 184
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v2, Landroid/os/Message;->what:I

    .line 185
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 181
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public firstSyncNeeded()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0}, Lnitro/phonestats/core/DatabaseSyncer;->needsFullSync()Z

    move-result v0

    return v0
.end method

.method public getAnalyzer()Lnitro/phonestats/core/IEventAnalyzer;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    return-object v0
.end method

.method public getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->backupManager:Lnitro/phonestats/backup/DroidStatsBackupManager;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->open()V

    .line 553
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getExtrapolatedMinutes()I
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    const/4 v6, -0x1

    .line 606
    .local v6, estimatedMin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 607
    const/16 v16, -0x1

    .line 636
    :goto_0
    return v16

    .line 610
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v10

    .line 612
    .local v10, monthBeginning:Ljava/util/Date;
    invoke-static {v10}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v2

    .line 614
    .local v2, daysDone:J
    const-wide/16 v16, 0x7

    cmp-long v16, v2, v16

    if-lez v16, :cond_3

    .line 616
    const-string v16, "out_sec_payed_month"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v11

    check-cast v11, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 617
    .local v11, out:Lnitro/phonestats/core/stat/CallSecondsStat;
    const-string v16, "in_sec_payed_month"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    check-cast v7, Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 618
    .local v7, in:Lnitro/phonestats/core/stat/CallSecondsStat;
    invoke-virtual {v11}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v16, v16, v2

    move-wide/from16 v0, v16

    long-to-double v14, v0

    .line 619
    .local v14, secsPerDayOut:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/CallSecondsStat;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v16, v16, v2

    :goto_1
    move-wide/from16 v0, v16

    long-to-double v12, v0

    .line 621
    .local v12, secsPerDayIn:D
    add-double v16, v14, v12

    const-wide/high16 v18, 0x404e

    div-double v8, v16, v18

    .line 623
    .local v8, minsPerDay:D
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "minsPerDay: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 625
    invoke-static {v10}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/core/helper/StatsUtils;->daysTill(Ljava/util/Date;)J

    move-result-wide v4

    .line 627
    .local v4, daysTill:J
    invoke-virtual {v11}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    :goto_2
    add-long v16, v16, v18

    .line 628
    const-wide/16 v18, 0x1

    add-long v18, v18, v4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    .line 627
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 630
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "estimatedMin: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    move/from16 v16, v6

    .line 636
    goto/16 :goto_0

    .line 619
    .end local v4           #daysTill:J
    .end local v8           #minsPerDay:D
    .end local v12           #secsPerDayIn:D
    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_1

    .line 627
    .restart local v4       #daysTill:J
    .restart local v8       #minsPerDay:D
    .restart local v12       #secsPerDayIn:D
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_2

    .line 633
    .end local v4           #daysTill:J
    .end local v7           #in:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v8           #minsPerDay:D
    .end local v11           #out:Lnitro/phonestats/core/stat/CallSecondsStat;
    .end local v12           #secsPerDayIn:D
    .end local v14           #secsPerDayOut:D
    :cond_3
    const/16 v16, -0x1

    goto/16 :goto_0
.end method

.method public getExtrapolatedSMS()I
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 571
    const/4 v4, -0x1

    .line 573
    .local v4, estimatedSMS:I
    iget-object v10, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v10}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v9

    .line 577
    :cond_1
    iget-object v10, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v10}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v7

    .line 579
    .local v7, monthBeginning:Ljava/util/Date;
    invoke-static {v7}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v0

    .line 581
    .local v0, daysDone:J
    const-string v10, "free_sms"

    invoke-virtual {p0, v10}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v8

    check-cast v8, Lnitro/phonestats/core/stat/LimitStat;

    .line 583
    .local v8, sms:Lnitro/phonestats/core/stat/LimitStat;
    const-wide/16 v10, 0x7

    cmp-long v10, v0, v10

    if-lez v10, :cond_0

    .line 585
    invoke-static {v7}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/StatsUtils;->daysTill(Ljava/util/Date;)J

    move-result-wide v2

    .line 587
    .local v2, daysTill:J
    invoke-virtual {v8}, Lnitro/phonestats/core/stat/LimitStat;->getUsedValue()J

    move-result-wide v9

    long-to-double v9, v9

    long-to-double v11, v0

    div-double v5, v9, v11

    .line 589
    .local v5, messagesPerDay:D
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "messagesPerDay: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v8}, Lnitro/phonestats/core/stat/LimitStat;->getUsedValue()J

    move-result-wide v9

    long-to-double v11, v2

    const-wide/high16 v13, 0x3ff0

    mul-double/2addr v13, v5

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-long v11, v11

    add-long/2addr v9, v11

    long-to-int v4, v9

    .line 593
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "estimatedSMS: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    move v9, v4

    .line 599
    goto :goto_0
.end method

.method public getExtrapolatedTraffic()J
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    const-wide/16 v6, -0x1

    .line 644
    .local v6, estimatedData:J
    iget-object v9, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v9}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 645
    const-wide/16 v9, -0x1

    .line 666
    :goto_0
    return-wide v9

    .line 648
    :cond_0
    iget-object v9, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v9}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v8

    .line 650
    .local v8, monthBeginning:Ljava/util/Date;
    invoke-static {v8}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v2

    .line 652
    .local v2, daysDone:J
    const-wide/16 v9, 0x7

    cmp-long v9, v2, v9

    if-lez v9, :cond_1

    .line 654
    const-string v9, "MONTHLY_MOBILE"

    invoke-virtual {p0, v9}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v9

    invoke-virtual {v9}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    div-long/2addr v9, v2

    long-to-double v0, v9

    .line 656
    .local v0, dataPerDay:D
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dataPerDay: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 658
    invoke-static {v8}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/StatsUtils;->daysTill(Ljava/util/Date;)J

    move-result-wide v4

    .line 660
    .local v4, daysTill:J
    const-string v9, "MONTHLY_MOBILE"

    invoke-virtual {p0, v9}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v9

    invoke-virtual {v9}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    add-long/2addr v11, v4

    long-to-double v11, v11

    mul-double/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    add-long v6, v9, v11

    .line 662
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "estimatedData: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .end local v0           #dataPerDay:D
    .end local v4           #daysTill:J
    :cond_1
    move-wide v9, v6

    .line 666
    goto :goto_0
.end method

.method public getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;
    .locals 3
    .parameter "key"
    .parameter "monthOffset"
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

    .prologue
    .line 509
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    monitor-exit v1

    return-object v0

    .line 516
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Historical statistic set not calculated"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastUpdated()J
    .locals 2

    .prologue
    .line 1040
    iget-wide v0, p0, Lnitro/phonestats/core/StatManager;->lastUpdated:J

    return-wide v0
.end method

.method public getRemainingMinutes()Ljava/lang/Long;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    const-string v4, "free_min"

    invoke-virtual {p0, v4}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/core/stat/LimitStat;

    .line 244
    .local v3, calls:Lnitro/phonestats/core/stat/LimitStat;
    invoke-virtual {v3}, Lnitro/phonestats/core/stat/LimitStat;->getUsedValue()J

    move-result-wide v0

    .line 245
    .local v0, actualMinutes:J
    const/4 v2, 0x0

    .line 246
    .local v2, callLimit:I
    iget-object v4, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->getCalltimeLimit(Landroid/content/Context;)I

    move-result v2

    .line 249
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 251
    new-instance v4, Ljava/lang/Long;

    int-to-long v5, v2

    sub-long/2addr v5, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4
.end method

.method public getRemainingSMS()Ljava/lang/Long;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    const-string v4, "free_sms"

    invoke-virtual {p0, v4}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/LimitStat;

    .line 257
    .local v2, sms:Lnitro/phonestats/core/stat/LimitStat;
    invoke-virtual {v2}, Lnitro/phonestats/core/stat/LimitStat;->getUsedValue()J

    move-result-wide v0

    .line 258
    .local v0, actualSMS:J
    const/4 v3, 0x0

    .line 259
    .local v3, smsLimit:I
    iget-object v4, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->getSMSLimit(Landroid/content/Context;)I

    move-result v3

    .line 262
    :cond_0
    new-instance v4, Ljava/lang/Long;

    int-to-long v5, v3

    sub-long/2addr v5, v0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4
.end method

.method public getRemainingTraffic()J
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getDataLimit(Landroid/content/Context;)J

    move-result-wide v1

    const-string v0, "MONTHLY_MOBILE"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 766
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "MONTHLY_MOBILE"

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    goto :goto_0
.end method

.method public getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;
    .locals 2
    .parameter "key"
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

    .prologue
    .line 487
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    monitor-exit v1

    return-object v0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStats()Ljava/util/Map;
    .locals 2
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

    .prologue
    .line 498
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->open()V

    .line 93
    new-instance v0, Lnitro/phonestats/core/DatabaseSyncer;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnitro/phonestats/core/DatabaseSyncer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    .line 94
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    .line 96
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->migrateSettings(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->registerSharedPreferenceListener()V

    .line 99
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->createStats()V

    .line 100
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->resetStats()V

    .line 102
    new-instance v0, Lnitro/phonestats/core/EventAnalyzer;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnitro/phonestats/core/EventAnalyzer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    .line 104
    new-instance v0, Lnitro/phonestats/backup/DroidStatsBackupManager;

    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-direct {v0, v1, v2, v3}, Lnitro/phonestats/backup/DroidStatsBackupManager;-><init>(Landroid/content/Context;Lnitro/phonestats/core/IEventAnalyzer;Lnitro/phonestats/core/DatabaseSyncer;)V

    iput-object v0, p0, Lnitro/phonestats/core/StatManager;->backupManager:Lnitro/phonestats/backup/DroidStatsBackupManager;

    .line 108
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->initialize(Landroid/content/Context;)Z

    .line 111
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->backgroundServicesDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->initialize(Landroid/content/Context;)Z

    .line 115
    :cond_0
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 117
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 121
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 126
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/core/StatManager;->loaded:Z

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lnitro/phonestats/core/StatManager;->inited:Z

    .line 128
    return-void
.end method

.method public isHistoricalStatsAvalaible(I)Z
    .locals 2
    .parameter "monthshift"

    .prologue
    .line 522
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->historicalStats:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInProcessing()Z
    .locals 1

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnitro/phonestats/core/StatManager;->lock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadBufferedStats()V
    .locals 4

    .prologue
    .line 1016
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v2

    .line 1017
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1016
    monitor-exit v2

    .line 1033
    return-void

    .line 1017
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    .line 1018
    .local v0, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->loadBuffered()V

    goto :goto_0

    .line 1016
    .end local v0           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized loadEvents()V
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    const-string v0, "load events"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->resetStats()V

    .line 403
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/core/StatManager;->loaded:Z

    .line 408
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->analyzer:Lnitro/phonestats/core/IEventAnalyzer;

    invoke-interface {v0}, Lnitro/phonestats/core/IEventAnalyzer;->analyze()V

    .line 413
    const/4 v0, 0x1

    sput-boolean v0, Lnitro/phonestats/core/StatManager;->loaded:Z

    .line 415
    invoke-direct {p0}, Lnitro/phonestats/core/StatManager;->fireDataChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newCallEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->isInProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 357
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0}, Lnitro/phonestats/core/DatabaseSyncer;->refreshLatestEventTime()V

    .line 358
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0, v1, v1}, Lnitro/phonestats/core/DatabaseSyncer;->syncCalls(ZZ)I

    .line 360
    const-string v0, "new call event"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->loadEvents()V

    .line 364
    invoke-virtual {p0, v1}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method public newSMSCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->isInProcessing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, newentries:I
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v1}, Lnitro/phonestats/core/DatabaseSyncer;->refreshLatestEventTime()V

    .line 379
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v1, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncIncomingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v1, v2, v2}, Lnitro/phonestats/core/DatabaseSyncer;->syncOutgoingSMS(ZZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    const-string v1, "new sms event"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 384
    if-lez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->loadEvents()V

    .line 387
    :cond_0
    invoke-virtual {p0, v2}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 388
    .end local v0           #newentries:I
    :cond_1
    return-void
.end method

.method public postError(Ljava/lang/String;)V
    .locals 5
    .parameter "errorMsg"

    .prologue
    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "errorMessage"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    return-void

    .line 304
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 305
    .local v1, handler:Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 306
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 307
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public removeHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 329
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 329
    monitor-exit v1

    .line 332
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetDatabase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "smsevents"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "callevents"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method public resetStats()V
    .locals 4

    .prologue
    .line 423
    iget-object v2, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    monitor-enter v2

    .line 424
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    monitor-exit v2

    .line 460
    return-void

    .line 424
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/core/stat/Stat;

    .line 425
    .local v0, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->reset()V

    goto :goto_0

    .line 423
    .end local v0           #stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setInProcessing(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lnitro/phonestats/core/StatManager;->lock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    monitor-exit p0

    return-void

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastUpdated(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1048
    iput-wide p1, p0, Lnitro/phonestats/core/StatManager;->lastUpdated:J

    .line 1049
    return-void
.end method

.method public syncAndLoad()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->isInProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 143
    iget-object v0, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v0}, Lnitro/phonestats/core/DatabaseSyncer;->needsFullSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->syncBackend()I

    .line 145
    invoke-virtual {p0}, Lnitro/phonestats/core/StatManager;->loadEvents()V

    .line 148
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/StatManager;->setInProcessing(Z)V

    .line 149
    :cond_1
    return-void
.end method

.method public syncBackend()I
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lnitro/phonestats/core/StatManager;->sync:Lnitro/phonestats/core/DatabaseSyncer;

    invoke-virtual {v1}, Lnitro/phonestats/core/DatabaseSyncer;->syncData()I

    move-result v0

    .line 238
    .local v0, newEvents:I
    return v0
.end method
