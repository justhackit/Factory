.class public Lnitro/phonestats/core/traffic/InterfaceStatsProvider;
.super Landroid/content/ContentProvider;
.source "InterfaceStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;,
        Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "nitro.phonestats"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/interfacestats"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "datacounters.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final INTERFACESTATS:I = 0x1

.field private static final INTERFACESTATS_ID:I = 0x2

.field public static final INTERFACE_NAME_TYPE_ETHERNET:Ljava/lang/String; = "eth"

.field private static final INTERFACE_STATS_TABLE_NAME:Ljava/lang/String; = "InterfaceStats"

.field public static final ITEM_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/interfacestats"

.field private static final MOBILE_INTERFACE_BUFFERED:Ljava/lang/String; = "MOBILE_INTERFACE_BUFFERED"

.field private static final WIFI_INTERFACE_BUFFERED:Ljava/lang/String; = "WIFI_INTERFACE_BUFFERED"

.field private static mobileBuffered:Ljava/lang/String;

.field private static final sProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final uriMatcher:Landroid/content/UriMatcher;

.field private static wifiBuffered:Ljava/lang/String;


# instance fields
.field private databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "content://nitro.phonestats/interfacestats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 119
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats"

    const-string v2, "interfacestats"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "nitro.phonestats"

    const-string v2, "interfacestats/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    .line 123
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "InterfaceName"

    .line 125
    const-string v2, "InterfaceName"

    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "InterfaceAlias"

    .line 127
    const-string v2, "InterfaceAlias"

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "BytesReceived"

    .line 129
    const-string v2, "BytesReceived"

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "BytesReceivedSystem"

    .line 131
    const-string v2, "BytesReceivedSystem"

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "BytesSent"

    const-string v2, "BytesSent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "BytesSentSystem"

    .line 134
    const-string v2, "BytesSentSystem"

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "BytesTransmissionLimit"

    .line 136
    const-string v2, "BytesTransmissionLimit"

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "ResetCronExpression"

    .line 138
    const-string v2, "ResetCronExpression"

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "ShowInList"

    const-string v2, "ShowInList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "NotificationLevel"

    .line 141
    const-string v2, "NotificationLevel"

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "LastUpdate"

    const-string v2, "LastUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "LastReset"

    const-string v2, "LastReset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/ContentValues;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->setDefaultInterfaceStatsValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method public static getConnectionType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "interfaceName"
    .parameter "ctx"

    .prologue
    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, wifiInterface:Ljava/lang/String;
    const/4 v1, 0x0

    .line 527
    .local v1, mobileInterface:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifi(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 533
    :goto_0
    :try_start_1
    invoke-static {p1}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobile(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 539
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    const-string v3, "wifi"

    .line 544
    :goto_2
    return-object v3

    .line 528
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    invoke-virtual {v0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;->printStackTrace()V

    goto :goto_0

    .line 534
    .end local v0           #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    :catch_1
    move-exception v0

    .line 536
    .restart local v0       #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    invoke-virtual {v0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;->printStackTrace()V

    goto :goto_1

    .line 541
    .end local v0           #e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    const-string v3, "mobile"

    goto :goto_2

    .line 544
    :cond_1
    const-string v3, "invalid"

    goto :goto_2
.end method

.method public static getInterfaceNameMobile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 455
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 456
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 487
    :goto_0
    return-object v2

    .line 459
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 460
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    const-string v2, "MOBILE_INTERFACE_BUFFERED"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 462
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useOldDataCountings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    invoke-static {}, Lnitro/phonestats/core/traffic/LegacyDevice;->getDevice()Lnitro/phonestats/core/traffic/LegacyDevice;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/core/traffic/LegacyDevice;->getCell()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, mobile:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 469
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 470
    const-string v2, "MOBILE_INTERFACE_BUFFERED"

    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v1           #mobile:Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    goto :goto_0

    .line 473
    .restart local v1       #mobile:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 474
    new-instance v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;

    invoke-direct {v2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;-><init>()V

    throw v2

    .line 481
    .end local v1           #mobile:Ljava/lang/String;
    :cond_3
    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine;->mobile_API_prefix:Ljava/lang/String;

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    .line 482
    const-string v2, "MOBILE_INTERFACE_BUFFERED"

    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->mobileBuffered:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInterfaceNameMobileAlltime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alltime_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceNameMobileDaily(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "daily_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceNameMobileMonthly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceNameWifi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 416
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    .line 447
    :goto_0
    return-object v2

    .line 420
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 421
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    const-string v2, "WIFI_INTERFACE_BUFFERED"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    .line 422
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useOldDataCountings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 425
    invoke-static {}, Lnitro/phonestats/core/traffic/LegacyDevice;->getDevice()Lnitro/phonestats/core/traffic/LegacyDevice;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/core/traffic/LegacyDevice;->getWiFi()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, wifi:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 429
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    .line 430
    const-string v2, "WIFI_INTERFACE_BUFFERED"

    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v1           #wifi:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wifi interface: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 447
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    goto :goto_0

    .line 433
    .restart local v1       #wifi:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    .line 434
    new-instance v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;

    invoke-direct {v2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;-><init>()V

    throw v2

    .line 440
    .end local v1           #wifi:Ljava/lang/String;
    :cond_3
    const-string v2, "api_wifi"

    sput-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    .line 441
    const-string v2, "WIFI_INTERFACE_BUFFERED"

    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->wifiBuffered:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lnitro/phonestats/core/helper/PersistentBuffer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInterfaceNameWifiAlltime(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alltime_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceNameWifiDaily(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "daily_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterfaceNameWifiMonthly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getInterfaceNameWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "interfaceName"

    .prologue
    .line 548
    const-string v0, "daily_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "daily"

    .line 555
    :goto_0
    return-object v0

    .line 550
    :cond_0
    const-string v0, "alltime_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "alltime"

    goto :goto_0

    .line 552
    :cond_1
    const-string v0, "weekly_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    const-string v0, "weekly"

    goto :goto_0

    .line 555
    :cond_2
    const-string v0, "monthly"

    goto :goto_0
.end method

.method private static setDefaultInterfaceStatsValues(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    const-wide/16 v2, 0x0

    .line 247
    const-string v0, "BytesReceived"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string v0, "BytesReceived"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    :cond_0
    const-string v0, "BytesReceivedSystem"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const-string v0, "BytesReceivedSystem"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    :cond_1
    const-string v0, "BytesSent"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    const-string v0, "BytesSent"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    :cond_2
    const-string v0, "BytesSentSystem"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    const-string v0, "BytesSentSystem"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    :cond_3
    const-string v0, "BytesTransmissionLimit"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    const-string v0, "BytesTransmissionLimit"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    :cond_4
    const-string v0, "NotificationLevel"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    const-string v0, "NotificationLevel"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    :cond_5
    const-string v0, "ShowInList"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 268
    const-string v0, "ShowInList"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    :cond_6
    const-string v0, "LastUpdate"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 271
    const-string v0, "LastUpdate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    :cond_7
    const-string v0, "LastReset"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 274
    const-string v0, "LastReset"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    :cond_8
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 281
    iget-object v3, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 283
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 296
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :pswitch_0
    const-string v3, "InterfaceStats"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 300
    return v0

    .line 289
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 290
    .local v2, noteId:Ljava/lang/String;
    const-string v4, "InterfaceStats"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v1, v4, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 293
    .restart local v0       #count:I
    goto :goto_0

    .line 292
    .end local v0           #count:I
    :cond_0
    const-string v3, ""

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 341
    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 351
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/interfacestats"

    .line 354
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 347
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/interfacestats"

    .line 348
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 207
    sget-object v5, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 208
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URI "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 214
    .local v4, values:Landroid/content/ContentValues;
    invoke-static {v4}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->setDefaultInterfaceStatsValues(Landroid/content/ContentValues;)V

    .line 217
    const-string v5, "InterfaceName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Could not store entry: missing interface name."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 221
    :cond_1
    const-string v5, "InterfaceAlias"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    const-string v5, "InterfaceAlias"

    .line 224
    const-string v6, "InterfaceName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_2
    iget-object v5, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 228
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "InterfaceStats"

    .line 229
    const-string v6, "ResetCronExpression"

    .line 228
    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 230
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 231
    sget-object v5, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, interfaceStatsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 234
    return-object v1

    .line 237
    .end local v1           #interfaceStatsUri:Landroid/net/Uri;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DB locked: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 239
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to insert row into "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    .line 155
    iget-object v0, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    iget-object v0, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 163
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 165
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :pswitch_0
    const-string v2, "InterfaceStats"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 168
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 183
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v7, "InterfaceName DESC"

    .line 190
    .local v7, orderBy:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 191
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 195
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 196
    return-object v8

    .line 172
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "InterfaceStats"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 173
    sget-object v2, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->sProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_0
    move-object v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 308
    iget-object v3, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->databaseHelper:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 312
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "LastUpdate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 315
    sget-object v3, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :pswitch_0
    const-string v3, "InterfaceStats"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 333
    return v0

    .line 322
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    .local v2, noteId:Ljava/lang/String;
    const-string v4, "InterfaceStats"

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 325
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 326
    .restart local v0       #count:I
    goto :goto_0

    .line 325
    .end local v0           #count:I
    :cond_0
    const-string v3, ""

    goto :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
