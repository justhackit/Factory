.class public Lnitro/phonestats/core/stat/TotalCostsStat;
.super Lnitro/phonestats/core/stat/CostStat;
.source "TotalCostsStat.java"


# instance fields
.field private costsBase:Lnitro/phonestats/core/stat/CombinedCostStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CombinedCostStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "costsBase"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/CostStat;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lnitro/phonestats/core/stat/TotalCostsStat;->costsBase:Lnitro/phonestats/core/stat/CombinedCostStat;

    .line 13
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lnitro/phonestats/core/stat/TotalCostsStat;->costsBase:Lnitro/phonestats/core/stat/CombinedCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CombinedCostStat;->getCosts()D

    move-result-wide v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/TotalCostsStat;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getBasicFees(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCostsPerUnit()D
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public useCostFeature()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnitro/phonestats/core/stat/TotalCostsStat;->costsBase:Lnitro/phonestats/core/stat/CombinedCostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CombinedCostStat;->useCostFeature()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/TotalCostsStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useBasicFees(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
