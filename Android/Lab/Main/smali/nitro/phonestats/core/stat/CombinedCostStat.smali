.class public Lnitro/phonestats/core/stat/CombinedCostStat;
.super Lnitro/phonestats/core/stat/CostStat;
.source "CombinedCostStat.java"

# interfaces
.implements Lnitro/phonestats/core/stat/base/IsDynamic;


# instance fields
.field private callCosts:Lnitro/phonestats/core/stat/CallCostStat;

.field private smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;

.field private trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;

.field private unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallCostStat;Lnitro/phonestats/core/stat/SmsCostStat;Lnitro/phonestats/core/stat/TrafficCostStat;Lnitro/phonestats/core/stat/UnitCostsStats;)V
    .locals 0
    .parameter "ctx"
    .parameter "callCosts"
    .parameter "smsCosts"
    .parameter "trafficCosts"
    .parameter "unitCosts"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/CostStat;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->callCosts:Lnitro/phonestats/core/stat/CallCostStat;

    .line 18
    iput-object p3, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;

    .line 19
    iput-object p4, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;

    .line 20
    iput-object p5, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;

    .line 21
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->callCosts:Lnitro/phonestats/core/stat/CallCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallCostStat;->getCosts()D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/SmsCostStat;->getCosts()D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/TrafficCostStat;->getCosts()D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitCostsStats;->getCosts()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCostsPerUnit()D
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public useCostFeature()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->callCosts:Lnitro/phonestats/core/stat/CallCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallCostStat;->useCostFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->smsCosts:Lnitro/phonestats/core/stat/SmsCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/SmsCostStat;->useCostFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->trafficCosts:Lnitro/phonestats/core/stat/TrafficCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/TrafficCostStat;->useCostFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/CombinedCostStat;->unitCosts:Lnitro/phonestats/core/stat/UnitCostsStats;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/UnitCostsStats;->useCostFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
