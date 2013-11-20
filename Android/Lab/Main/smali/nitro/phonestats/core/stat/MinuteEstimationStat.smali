.class public Lnitro/phonestats/core/stat/MinuteEstimationStat;
.super Lnitro/phonestats/core/stat/EstimationStat;
.source "MinuteEstimationStat.java"


# instance fields
.field private incomingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private outgoingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private smsEstimationTransferBase:Lnitro/phonestats/core/stat/SmsEstimationStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "outgoingPayedMinutesMonthly"
    .parameter "incomingPayedMinutesMonthly"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/stat/EstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V

    .line 17
    iput-object p2, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->outgoingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 18
    iput-object p3, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->incomingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 19
    return-void
.end method


# virtual methods
.method public getEstimated()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getPlainEstimated()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useMinuteExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getMinuteExchangeRatio(Landroid/content/Context;)D

    move-result-wide v0

    iget-object v4, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->smsEstimationTransferBase:Lnitro/phonestats/core/stat/SmsEstimationStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getPlainEstimated()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v0, v4

    :goto_0
    const-wide/high16 v4, 0x404e

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getEstimatedMinutes()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getEstimated()J

    move-result-wide v2

    long-to-double v0, v2

    .line 39
    .local v0, estimated:D
    const-wide/high16 v2, -0x4010

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 40
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x404e

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getPlainEstimated()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v4, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->outgoingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {p0, v4}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getEstimation(Lnitro/phonestats/core/stat/Stat;)J

    move-result-wide v2

    .line 30
    .local v2, outgoingEstimation:J
    iget-object v4, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->incomingPayedMinutesMonthly:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {p0, v4}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getEstimation(Lnitro/phonestats/core/stat/Stat;)J

    move-result-wide v0

    .line 31
    .local v0, incomingEstimation:J
    :goto_0
    add-long v4, v2, v0

    return-wide v4

    .line 30
    .end local v0           #incomingEstimation:J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPlainEstimatedMinutes()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getPlainEstimated()J

    move-result-wide v2

    long-to-double v0, v2

    .line 47
    .local v0, estimated:D
    const-wide/high16 v2, -0x4010

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 48
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x404e

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setSmsEstimationTransferBase(Lnitro/phonestats/core/stat/SmsEstimationStat;)V
    .locals 0
    .parameter "smsEstimationTransferBase"

    .prologue
    .line 68
    iput-object p1, p0, Lnitro/phonestats/core/stat/MinuteEstimationStat;->smsEstimationTransferBase:Lnitro/phonestats/core/stat/SmsEstimationStat;

    .line 69
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getEstimated()J
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 62
    .local v1, estimated:J
    new-instance v3, Lnitro/phonestats/core/helper/formatter/CallLengthValue;

    invoke-direct {v3, v1, v2, p1}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;-><init>(JLandroid/content/Context;)V

    .line 63
    .local v3, val:Lnitro/phonestats/core/helper/formatter/CallLengthValue;
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useHoursDisplay(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->getTextRepresentation(ZZZ)Ljava/lang/String;

    move-result-object v4

    .end local v1           #estimated:J
    .end local v3           #val:Lnitro/phonestats/core/helper/formatter/CallLengthValue;
    :goto_0
    return-object v4

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const-string v4, "-"

    goto :goto_0
.end method
