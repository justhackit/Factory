.class public Lnitro/phonestats/core/stat/TrafficLimitStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "TrafficLimitStat.java"


# instance fields
.field private actualData:Lnitro/phonestats/core/stat/TrafficStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "actualData"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lnitro/phonestats/core/stat/TrafficLimitStat;->actualData:Lnitro/phonestats/core/stat/TrafficStat;

    .line 18
    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getDataLimit(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getUsedValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getUsedPlainValue()J
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUsedValue()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficLimitStat;->actualData:Lnitro/phonestats/core/stat/TrafficStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/TrafficStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 6
    .parameter "ctx"
    .parameter "unitAdded"
    .parameter "forceMB"

    .prologue
    .line 36
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->useLimit()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "-"

    .line 50
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    .line 41
    .local v0, lValue:Ljava/lang/Long;
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 42
    const v2, 0x7f0700b2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    goto :goto_0

    .line 44
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
