.class public Lnitro/phonestats/core/stat/UnitCostsStats;
.super Lnitro/phonestats/core/stat/CostStat;
.source "UnitCostsStats.java"


# instance fields
.field private costBase:Lnitro/phonestats/core/stat/UnitLimitStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/UnitLimitStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "costBase"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/CostStat;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lnitro/phonestats/core/stat/UnitCostsStats;->costBase:Lnitro/phonestats/core/stat/UnitLimitStat;

    .line 13
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 4

    .prologue
    .line 17
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitCostsStats;->useCostFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitCostsStats;->costBase:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitCostsStats;->getCostsPerUnit()D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/UnitCostsStats;->costBase:Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v2}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 23
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCostsPerUnit()D
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitCostsStats;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getUnitsCosts(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public useCostFeature()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitCostsStats;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useUnitCosts(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
