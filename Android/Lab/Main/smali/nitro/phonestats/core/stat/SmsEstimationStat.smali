.class public Lnitro/phonestats/core/stat/SmsEstimationStat;
.super Lnitro/phonestats/core/stat/EstimationStat;
.source "SmsEstimationStat.java"


# instance fields
.field private incomingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;

.field private minuteEstimationTransferBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

.field private outgoingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/MinuteEstimationStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "outgoingPaidSMSMonthly"
    .parameter "incomingPaidSMSMonthly"
    .parameter "minuteEstimationTransferBase"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/stat/EstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V

    .line 18
    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/SmsEstimationStat;->setUnitResource(I)V

    .line 19
    iput-object p2, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->outgoingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 20
    iput-object p3, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->incomingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 21
    iput-object p4, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->minuteEstimationTransferBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

    .line 22
    invoke-virtual {p4, p0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->setSmsEstimationTransferBase(Lnitro/phonestats/core/stat/SmsEstimationStat;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getEstimated()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getPlainEstimated()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useMinuteExchange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->minuteEstimationTransferBase:Lnitro/phonestats/core/stat/MinuteEstimationStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/MinuteEstimationStat;->getPlainEstimatedMinutes()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getPlainEstimated()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->outgoingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getEstimation(Lnitro/phonestats/core/stat/Stat;)J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/SmsEstimationStat;->incomingPaidSMSMonthly:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/SmsEstimationStat;->getEstimation(Lnitro/phonestats/core/stat/Stat;)J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
