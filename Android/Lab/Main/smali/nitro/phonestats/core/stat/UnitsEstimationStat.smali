.class public Lnitro/phonestats/core/stat/UnitsEstimationStat;
.super Lnitro/phonestats/core/stat/EstimationStat;
.source "UnitsEstimationStat.java"


# instance fields
.field private minutesBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

.field private smsBase:Lnitro/phonestats/core/stat/SmsEstimationStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/MinuteEstimationStat;Lnitro/phonestats/core/stat/SmsEstimationStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "minuteBase"
    .parameter "smsBase"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/stat/EstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V

    .line 19
    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/UnitsEstimationStat;->setUnitResource(I)V

    .line 20
    iput-object p2, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->minutesBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

    .line 21
    iput-object p3, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->smsBase:Lnitro/phonestats/core/stat/SmsEstimationStat;

    .line 22
    return-void
.end method


# virtual methods
.method public getEstimated()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v3, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->calcBillMonthBeginning(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v2

    .line 30
    .local v2, monthBeginning:Ljava/util/Date;
    invoke-static {v2}, Lnitro/phonestats/core/helper/StatsUtils;->daysFrom(Ljava/util/Date;)J

    move-result-wide v0

    .line 32
    .local v0, daysDone:J
    const-wide/16 v3, 0x7

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 33
    const-wide/16 v3, -0x1

    .line 35
    :goto_0
    return-wide v3

    :cond_0
    iget-object v3, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->minutesBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getPlainEstimatedMinutes()J

    move-result-wide v3

    iget-object v5, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lnitro/phonestats/settings/core/Settings;->getUnitsRatio(Landroid/content/Context;)D

    move-result-wide v5

    iget-object v7, p0, Lnitro/phonestats/core/stat/UnitsEstimationStat;->smsBase:Lnitro/phonestats/core/stat/SmsEstimationStat;

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getPlainEstimated()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_0
.end method
