.class public Lnitro/phonestats/core/stat/EstimationStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "EstimationStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/stat/Stat",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private baseStat:Lnitro/phonestats/core/stat/Stat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V
    .locals 0
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, baseStat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lnitro/phonestats/core/stat/EstimationStat;->baseStat:Lnitro/phonestats/core/stat/Stat;

    .line 20
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public getEstimated()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lnitro/phonestats/core/stat/EstimationStat;->baseStat:Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/EstimationStat;->getEstimation(Lnitro/phonestats/core/stat/Stat;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getEstimation(Lnitro/phonestats/core/stat/Stat;)J
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    const-wide/16 v6, -0x1

    .line 64
    .local v6, estimatedData:J
    iget-object v9, p0, Lnitro/phonestats/core/stat/EstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v9}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    new-instance v9, Lnitro/phonestats/core/helper/NotEnabledOptionException;

    const-string v10, "extrapolate off"

    invoke-direct {v9, v10}, Lnitro/phonestats/core/helper/NotEnabledOptionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 71
    :cond_0
    iget-object v9, p0, Lnitro/phonestats/core/stat/EstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v9}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v8

    .line 73
    .local v8, monthBeginning:Ljava/util/Date;
    invoke-static {v8}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v2

    .line 75
    .local v2, daysDone:J
    const-wide/16 v9, 0x7

    cmp-long v9, v2, v9

    if-lez v9, :cond_1

    .line 78
    invoke-virtual {p1}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-double v9, v9

    long-to-double v11, v2

    div-double v0, v9, v11

    .line 83
    .local v0, dataPerDay:D
    invoke-static {v8}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 82
    invoke-static {v9}, Lnitro/phonestats/core/helper/StatsUtils;->daysTill(Ljava/util/Date;)J

    move-result-wide v4

    .line 85
    .local v4, daysTill:J
    invoke-virtual {p1}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 86
    const-wide/16 v11, 0x1

    add-long/2addr v11, v4

    long-to-double v11, v11

    mul-double/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 85
    add-long v6, v9, v11

    .line 88
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "estimatedData: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 96
    return-wide v6

    .line 93
    .end local v0           #dataPerDay:D
    .end local v4           #daysTill:J
    :cond_1
    new-instance v9, Lnitro/phonestats/core/helper/NotEnabledOptionException;

    const-string v10, "too early for estimation"

    invoke-direct {v9, v10}, Lnitro/phonestats/core/helper/NotEnabledOptionException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public shouldDisplay()Z
    .locals 5

    .prologue
    .line 51
    iget-object v3, p0, Lnitro/phonestats/core/stat/EstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    .line 53
    .local v2, monthBeginning:Ljava/util/Date;
    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v0

    .line 55
    .local v0, daysDone:J
    const-wide/16 v3, 0x7

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/EstimationStat;->getEstimated()J
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 155
    .local v1, estimated:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnitro/phonestats/core/stat/EstimationStat;->getUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1           #estimated:J
    :goto_1
    return-object v3

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const-string v3, "-"

    goto :goto_1

    .line 155
    .end local v0           #e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    .restart local v1       #estimated:J
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public useEstimationFeature()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/core/stat/EstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useExtrapolateFeature(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
