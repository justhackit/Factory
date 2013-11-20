.class public Lnitro/phonestats/core/stat/TrafficCostStat;
.super Lnitro/phonestats/core/stat/CostStat;
.source "TrafficCostStat.java"


# instance fields
.field private costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TrafficLimitStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "costBase"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/CostStat;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    .line 15
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 4

    .prologue
    .line 21
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficCostStat;->useCostFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->useLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficCostStat;->getCostsPerUnit()D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 29
    :goto_0
    return-wide v0

    .line 25
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/TrafficLimitStat;->useLimit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficCostStat;->getCostsPerUnit()D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->costBase:Lnitro/phonestats/core/stat/TrafficLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;->getUsedValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 29
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCostsPerUnit()D
    .locals 2

    .prologue
    const/high16 v1, 0x4480

    .line 35
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getDataPrice(Landroid/content/Context;)F

    move-result v0

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public useCostFeature()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficCostStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useDataCostFeature(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
