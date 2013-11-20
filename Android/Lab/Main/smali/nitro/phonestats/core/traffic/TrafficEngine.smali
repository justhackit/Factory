.class public Lnitro/phonestats/core/traffic/TrafficEngine;
.super Ljava/lang/Object;
.source "TrafficEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/traffic/TrafficEngine$CountType;,
        Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;,
        Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$CountType:[I = null

.field private static synthetic $SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$TrafficType:[I = null

.field private static final CONTENTURI:Landroid/net/Uri; = null

.field public static final CRON_EXPRESSION_FORMAT:Ljava/lang/String; = "0 0 0 %1$s * ? *"

.field public static final CRON_EXPRESSION_PATTERN:Ljava/lang/String; = "0 0 0 ([0-9]{1,2}) \\* \\? \\*"

.field public static final DAILY_CRON_EXPRESSION:Ljava/lang/String; = "0 0 0 * * ? *"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION2:[Ljava/lang/String; = null

.field private static final PSEUDOUPDATESTAT:Landroid/net/Uri; = null

.field public static mobile_API_prefix:Ljava/lang/String; = null

.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener; = null

.field public static final wifi_API_prefix:Ljava/lang/String; = "api_wifi"


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$CountType()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$CountType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->values()[Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$CountType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$TrafficType()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$TrafficType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->values()[Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE_API:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    invoke-virtual {v1}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$TrafficType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    const-string v0, "api_mobile"

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->mobile_API_prefix:Ljava/lang/String;

    .line 70
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 71
    const-string v1, "InterfaceName"

    aput-object v1, v0, v2

    .line 72
    const-string v1, "ResetCronExpression"

    aput-object v1, v0, v4

    .line 73
    const-string v1, "LastUpdate"

    aput-object v1, v0, v5

    .line 70
    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION:[Ljava/lang/String;

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 81
    const-string v1, "InterfaceName"

    aput-object v1, v0, v2

    .line 82
    const-string v1, "InterfaceAlias"

    aput-object v1, v0, v4

    .line 83
    const-string v1, "BytesReceived"

    aput-object v1, v0, v5

    .line 84
    const-string v1, "BytesSent"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 85
    const-string v2, "BytesTransmissionLimit"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 86
    const-string v2, "LastUpdate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 87
    const-string v2, "LastReset"

    aput-object v2, v0, v1

    .line 80
    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION2:[Ljava/lang/String;

    .line 100
    const-string v0, "content://nitro.phonestats/interfacestats/3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->PSEUDOUPDATESTAT:Landroid/net/Uri;

    .line 102
    const-string v0, "content://nitro.phonestats/interfacestats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static backupData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "path"

    .prologue
    .line 671
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/nitro.phonestats/databases/datacounters.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v4, settingsFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 673
    .local v2, exportDir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, dir:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .local v5, sgDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 676
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 678
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v6, "datacounters.db"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 681
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 682
    invoke-static {v4, v3}, Lnitro/phonestats/core/helper/NitroUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 683
    const-string v6, "trafficdata backed up"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 686
    const-string v6, "trafficdata backup error"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static changeResetDate(ILandroid/content/Context;)V
    .locals 11
    .parameter "newDay"
    .parameter "ctx"

    .prologue
    const/4 v10, -0x1

    .line 276
    invoke-static {p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getCronExpression(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, cron:Ljava/lang/String;
    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 283
    :try_start_0
    invoke-static {p1}, Lnitro/phonestats/core/traffic/TrafficEngine;->get3gMonthlyID(Landroid/content/Context;)I

    move-result v1

    .line 284
    .local v1, id3G:I
    invoke-static {p1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getWifiMonthlyID(Landroid/content/Context;)I

    move-result v2

    .line 286
    .local v2, idWifi:I
    if-eq v1, v10, :cond_0

    .line 288
    sget-object v7, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 293
    .local v4, uri3G:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "ResetCronExpression"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onChangedDay: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    invoke-static {v4}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 299
    .local v3, resetterIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 301
    invoke-static {p1, v3, v0}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 308
    :goto_0
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useAPNDroid(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    invoke-static {p1}, Lnitro/phonestats/core/traffic/JuiceDefenderIntegration;->allowMobileData(Landroid/content/Context;)V

    .line 314
    .end local v3           #resetterIntent:Landroid/content/Intent;
    .end local v4           #uri3G:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    if-eq v2, v10, :cond_1

    .line 316
    sget-object v7, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 321
    .local v5, uriWifi:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v7, "ResetCronExpression"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onChangedDay: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    invoke-static {v5}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 327
    .restart local v3       #resetterIntent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 329
    invoke-static {p1, v3, v0}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 345
    .end local v1           #id3G:I
    .end local v2           #idWifi:I
    .end local v3           #resetterIntent:Landroid/content/Intent;
    .end local v5           #uriWifi:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-void

    .line 304
    .restart local v1       #id3G:I
    .restart local v2       #idWifi:I
    .restart local v3       #resetterIntent:Landroid/content/Intent;
    .restart local v4       #uri3G:Landroid/net/Uri;
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_2
    invoke-static {p1, v3}, Lnitro/phonestats/core/traffic/CronScheduler;->stopScheduledJob(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 336
    .end local v1           #id3G:I
    .end local v2           #idWifi:I
    .end local v3           #resetterIntent:Landroid/content/Intent;
    .end local v4           #uri3G:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 332
    .restart local v1       #id3G:I
    .restart local v2       #idWifi:I
    .restart local v3       #resetterIntent:Landroid/content/Intent;
    .restart local v5       #uriWifi:Landroid/net/Uri;
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_3
    invoke-static {p1, v3}, Lnitro/phonestats/core/traffic/CronScheduler;->stopScheduledJob(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static correct3G(Landroid/content/Context;I)V
    .locals 13
    .parameter "ctx"
    .parameter "addMBTraffic"

    .prologue
    const-wide/16 v3, 0x0

    .line 606
    :try_start_0
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p0, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v6

    .line 607
    .local v6, all:J
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p0, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v9

    .line 608
    .local v9, month:J
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p0, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v11

    .line 610
    .local v11, today:J
    cmp-long v0, v6, v3

    if-ltz v0, :cond_0

    cmp-long v0, v9, v3

    if-ltz v0, :cond_0

    cmp-long v0, v11, v3

    if-ltz v0, :cond_0

    .line 612
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v3, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    add-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->setStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;J)V

    .line 613
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v3, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    add-long/2addr v4, v9

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->setStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;J)V

    .line 614
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v3, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    mul-int/lit16 v0, p1, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    add-long/2addr v4, v11

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lnitro/phonestats/core/traffic/TrafficEngine;->setStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;J)V
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v6           #all:J
    .end local v9           #month:J
    .end local v11           #today:J
    :cond_0
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v8

    .line 618
    .local v8, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    goto :goto_0
.end method

.method public static formatDataNumber2(JZ)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "addMB"

    .prologue
    .line 452
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 453
    const-string v2, "negative bytes"

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 455
    :cond_0
    const-wide/32 v2, 0x100000

    div-long v0, p0, v2

    .line 456
    .local v0, megabytes:J
    if-eqz p2, :cond_1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static get3gMonthlyID(Landroid/content/Context;)I
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {v0, v1, p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getCronExpression(I)Ljava/lang/String;
    .locals 4
    .parameter "dayOfMonth"

    .prologue
    .line 348
    const-string v0, "0 0 0 %1$s * ? *"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J
    .locals 14
    .parameter "ctx"
    .parameter "trafficType"
    .parameter "countType"
    .parameter "direction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    sget-object v3, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION2:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {p1, v0, p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 372
    const-string v6, "InterfaceName DESC"

    .line 371
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 374
    .local v13, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 375
    .local v7, byteTotal:J
    const-wide/16 v9, -0x1

    .line 376
    .local v9, bytesIncoming:J
    const-wide/16 v11, -0x1

    .line 377
    .local v11, bytesOutgoing:J
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 380
    const/4 v1, 0x4

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 381
    add-long v7, v9, v11

    .line 384
    :cond_0
    if-eqz v13, :cond_1

    .line 385
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 393
    .end local v9           #bytesIncoming:J
    :goto_0
    return-wide v9

    .line 389
    .restart local v9       #bytesIncoming:J
    :cond_2
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_3

    move-wide v9, v11

    .line 390
    goto :goto_0

    :cond_3
    move-wide v9, v7

    .line 393
    goto :goto_0
.end method

.method public static getStatResetDataByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Date;
    .locals 2
    .parameter "key"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 564
    const-string v0, "DAILY_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    .line 566
    :cond_0
    const-string v0, "MONTHLY_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_1
    const-string v0, "ALLTIME_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_2
    const-string v0, "DAILY_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_3
    const-string v0, "MONTHLY_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 574
    :cond_4
    const-string v0, "ALLTIME_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStatResetDate(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;)Ljava/util/Date;
    .locals 8
    .parameter "ctx"
    .parameter "trafficType"
    .parameter "countType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION2:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 583
    const-string v5, "InterfaceName DESC"

    .line 582
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 585
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 586
    .local v7, resetDate:Ljava/util/Date;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v7, Ljava/util/Date;

    .end local v7           #resetDate:Ljava/util/Date;
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 591
    .restart local v7       #resetDate:Ljava/util/Date;
    :cond_0
    if-eqz v6, :cond_1

    .line 592
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_1
    return-object v7
.end method

.method public static getStatValueByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "key"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 523
    const-string v0, "DAILY_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const-string v0, "DAILY_MOBILE_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_1
    const-string v0, "DAILY_MOBILE_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_2
    const-string v0, "MONTHLY_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_3
    const-string v0, "MONTHLY_MOBILE_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_4
    const-string v0, "MONTHLY_MOBILE_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_5
    const-string v0, "ALLTIME_MOBILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 536
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :cond_6
    const-string v0, "ALLTIME_MOBILE_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 538
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 539
    :cond_7
    const-string v0, "ALLTIME_MOBILE_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 540
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->MOBILE:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 541
    :cond_8
    const-string v0, "DAILY_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 542
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 543
    :cond_9
    const-string v0, "DAILY_WIFI_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 544
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 545
    :cond_a
    const-string v0, "DAILY_WIFI_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 546
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->DAILY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 547
    :cond_b
    const-string v0, "MONTHLY_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 548
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 549
    :cond_c
    const-string v0, "MONTHLY_WIFI_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 550
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 551
    :cond_d
    const-string v0, "MONTHLY_WIFI_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 552
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 553
    :cond_e
    const-string v0, "ALLTIME_WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 554
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 555
    :cond_f
    const-string v0, "ALLTIME_WIFI_IN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 556
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 557
    :cond_10
    const-string v0, "ALLTIME_WIFI_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 558
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ALTIME:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-static {p1, v0, v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 559
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I
    .locals 9
    .parameter "trafficType"
    .parameter "countType"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 403
    const-string v8, ""

    .line 405
    .local v8, where:Ljava/lang/String;
    invoke-static {}, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$CountType()[I

    move-result-object v0

    invoke-virtual {p1}, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 411
    :goto_0
    invoke-static {}, Lnitro/phonestats/core/traffic/TrafficEngine;->$SWITCH_TABLE$nitro$phonestats$core$traffic$TrafficEngine$TrafficType()[I

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 427
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InterfaceName LIKE \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 428
    const-string v5, "InterfaceName DESC"

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 430
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 431
    .local v7, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 438
    :cond_0
    if-eqz v6, :cond_1

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_1
    return v7

    .line 407
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:I
    :pswitch_0
    const-string v8, "alltime_"

    .line 408
    goto :goto_0

    .line 410
    :pswitch_1
    const-string v8, "daily_"

    goto :goto_0

    .line 417
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifiMonthly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    goto :goto_1

    .line 420
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobileMonthly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 405
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 415
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getWifiMonthlyID(Landroid/content/Context;)I
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;->WIFI:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$CountType;->MONTHLY:Lnitro/phonestats/core/traffic/TrafficEngine$CountType;

    invoke-static {v0, v1, p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    .line 125
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "Initializing TrafficEngine.."

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x0

    .line 132
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 135
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->scheduleAutomaticUpdates(Landroid/content/Context;)V

    .line 181
    invoke-static {p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->registerSharedPreferencesListener(Landroid/content/Context;)V

    .line 183
    const/4 v1, 0x1

    .line 186
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_1
    return v1

    .line 137
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, cronExpression:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 144
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, statsId:Ljava/lang/String;
    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 146
    .local v9, itemUri:Landroid/net/Uri;
    new-instance v11, Ljava/util/Date;

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 154
    .local v11, lastUpdate:Ljava/util/Date;
    :try_start_0
    new-instance v1, Lnitro/phonestats/core/traffic/CronExpression;

    invoke-direct {v1, v6}, Lnitro/phonestats/core/traffic/CronExpression;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v11}, Lnitro/phonestats/core/traffic/CronExpression;->getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    .line 156
    .local v10, lastResetDueDate:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missed an automatic reset job for device with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Sending reset intent now.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 160
    invoke-static {p0, v9}, Lnitro/phonestats/core/traffic/Resetter;->broadcastResetIntent(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v10           #lastResetDueDate:Ljava/util/Date;
    :cond_2
    :goto_2
    invoke-static {v9}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    .line 169
    .local v12, resetterIntent:Landroid/content/Intent;
    invoke-static {p0, v12, v6}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 171
    .end local v9           #itemUri:Landroid/net/Uri;
    .end local v11           #lastUpdate:Ljava/util/Date;
    .end local v12           #resetterIntent:Landroid/content/Intent;
    .end local v13           #statsId:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 162
    .restart local v9       #itemUri:Landroid/net/Uri;
    .restart local v11       #lastUpdate:Ljava/util/Date;
    .restart local v13       #statsId:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 163
    .local v8, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse cron expression \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, "\' while checking for missed reset jobs ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 186
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cronExpression:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/text/ParseException;
    .end local v9           #itemUri:Landroid/net/Uri;
    .end local v11           #lastUpdate:Ljava/util/Date;
    .end local v13           #statsId:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static registerSharedPreferencesListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 223
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v1, :cond_0

    .line 224
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lnitro/phonestats/core/traffic/TrafficEngine$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/core/traffic/TrafficEngine$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 268
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 270
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static resetCounters(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->PROJECTION:[Ljava/lang/String;

    .line 494
    const-string v5, "InterfaceName DESC"

    move-object v4, v3

    .line 493
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 496
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v8, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 500
    if-nez v0, :cond_0

    .line 506
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 508
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 511
    return-void

    .line 508
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 509
    .local v7, id:Ljava/lang/Integer;
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lnitro/phonestats/core/traffic/Resetter;->broadcastResetIntent(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static resetInterfaces(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method public static restoreData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "path"

    .prologue
    .line 692
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/nitro.phonestats/databases/datacounters.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v4, settingsFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 694
    .local v2, exportDir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, dir:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v5, sgDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "datacounters.db"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 699
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 700
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 701
    invoke-static {v3, v4}, Lnitro/phonestats/core/helper/NitroUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 702
    const-string v6, "trafficdata restored"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v1

    .line 704
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 705
    const-string v6, "trafficdata restore error"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static scheduleAutomaticUpdates(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 198
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 200
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "nitro.phonestats.ACTION_UPDATE_COUNTERS_PLUS_WIDGET"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v7, i:Landroid/content/Intent;
    const-string v1, "Automatic updates scheduled"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getUpdateIntervallTraffic(Landroid/content/Context;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/high16 v8, 0x1000

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 207
    return-void
.end method

.method public static setDataLimit(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 6
    .parameter "ctx"
    .parameter "limit"

    .prologue
    .line 465
    :try_start_0
    invoke-static {p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->get3gMonthlyID(Landroid/content/Context;)I

    move-result v0

    .line 466
    .local v0, id3G:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 468
    sget-object v3, Lnitro/phonestats/core/traffic/TrafficEngine;->CONTENTURI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 471
    .local v1, uri3G:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "BytesTransmissionLimit"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    const-string v3, "NotificationLevel"

    .line 475
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 474
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0           #id3G:I
    .end local v1           #uri3G:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static setStat(Landroid/content/Context;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;J)V
    .locals 5
    .parameter "ctx"
    .parameter "trafficType"
    .parameter "countType"
    .parameter "direction"
    .parameter "amountBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 641
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    if-ne p3, v1, :cond_0

    .line 646
    const-string v1, "BytesSent"

    .line 647
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 646
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatsID(Lnitro/phonestats/core/traffic/TrafficEngine$TrafficType;Lnitro/phonestats/core/traffic/TrafficEngine$CountType;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 661
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    return-void

    .line 649
    :cond_0
    sget-object v1, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    if-ne p3, v1, :cond_1

    .line 651
    const-string v1, "BytesReceived"

    .line 652
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 651
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 656
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Please specifiy direction of traffic"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static updateStats(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nitro.phonestats.ACTION_UPDATE_COUNTERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    return-void
.end method
