.class public Lnitro/phonestats/core/stat/TrafficEstimationStat;
.super Lnitro/phonestats/core/stat/EstimationStat;
.source "TrafficEstimationStat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "baseStat"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/core/stat/EstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V

    .line 14
    return-void
.end method


# virtual methods
.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "unitAdded"
    .parameter "forceMB"

    .prologue
    .line 27
    if-nez p3, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->getEstimated()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficEstimationStat;->getEstimated()J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    goto :goto_0

    .line 31
    .end local v1           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const-string v1, "-"

    goto :goto_0
.end method
