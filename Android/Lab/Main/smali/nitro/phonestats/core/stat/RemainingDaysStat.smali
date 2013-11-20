.class public Lnitro/phonestats/core/stat/RemainingDaysStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "RemainingDaysStat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 13
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/RemainingDaysStat;->setUnitResource(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public getMax()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 36
    iget-object v4, p0, Lnitro/phonestats/core/stat/RemainingDaysStat;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    .line 37
    .local v3, monthStart:Ljava/util/Date;
    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 38
    .local v2, monthEnd:Ljava/util/Date;
    invoke-static {v3, v2}, Lnitro/phonestats/core/helper/StatsUtils;->daysBetween(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 39
    .local v0, daysThisMonth:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 5

    .prologue
    .line 44
    iget-object v4, p0, Lnitro/phonestats/core/stat/RemainingDaysStat;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v3

    .line 45
    .local v3, monthStart:Ljava/util/Date;
    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->incrMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 46
    .local v2, monthEnd:Ljava/util/Date;
    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->daysTill(Ljava/util/Date;)J

    move-result-wide v0

    .line 48
    .local v0, daysLeft:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method public getUsedPlainValue()J
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getRemaining()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsedValue()J
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getUsedPlainValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getRemaining()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
