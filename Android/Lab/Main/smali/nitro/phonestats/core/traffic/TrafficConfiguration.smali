.class public final Lnitro/phonestats/core/traffic/TrafficConfiguration;
.super Ljava/lang/Object;
.source "TrafficConfiguration.java"


# static fields
.field public static final CRON_EVERY_DAY:Ljava/lang/String; = "0 0 0 * * ? *"

.field public static final CRON_EVERY_MONTH:Ljava/lang/String; = "0 0 0 1 * ? *"

.field public static final DEFAULT_TRANSMISSION_LIMIT:J = 0xc800000L

.field public static final DEFAULT_UPDATE_INTERVAL:Ljava/lang/String; = null

.field public static final DEFAULT_USAGE_THRESHOLD_HIGH:Ljava/lang/String; = "90"

.field public static final DEFAULT_USAGE_THRESHOLD_MEDIUM:Ljava/lang/String; = "75"

.field public static final NOTIFICATION_ID_USAGE:I = 0x5

.field public static final PREFERENCE_USAGE_THRESHOLD_HIGH:Ljava/lang/String; = "traffic_usage_threshold_high"

.field public static final PREFERENCE_USAGE_THRESHOLD_MEDIUM:Ljava/lang/String; = "traffic_usage_threshold_medium"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/traffic/TrafficConfiguration;->DEFAULT_UPDATE_INTERVAL:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsageThresholdHigh(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 89
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getUsageThresholdMedium(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v0

    .line 77
    .local v0, treshold:D
    const-wide v2, 0x4055400000000000L

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2
.end method
