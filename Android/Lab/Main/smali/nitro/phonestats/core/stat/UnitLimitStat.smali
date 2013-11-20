.class public Lnitro/phonestats/core/stat/UnitLimitStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "UnitLimitStat.java"


# instance fields
.field private inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

.field private outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

.field private outMsg:Lnitro/phonestats/core/stat/SmsCountStat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/CallSecondsStat;Lnitro/phonestats/core/stat/SmsCountStat;Lnitro/phonestats/core/stat/SmsCountStat;)V
    .locals 1
    .parameter "ctx"
    .parameter "outMin"
    .parameter "inMin"
    .parameter "outMsg"
    .parameter "inMsg"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 16
    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lnitro/phonestats/core/stat/UnitLimitStat;->setUnitResource(I)V

    .line 17
    iput-object p2, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 18
    iput-object p3, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    .line 19
    iput-object p4, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->outMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 20
    iput-object p5, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    .line 21
    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getMinuteUnits(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getUsedValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingSMS()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getMax()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getUsedValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getUnitsRatio(Landroid/content/Context;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSmsWeight()J
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->useLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getUnitsRatio(Landroid/content/Context;)D

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getUsedSMS()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsedMinutes()J
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->outMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->inMin:Lnitro/phonestats/core/stat/CallSecondsStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CallSecondsStat;->getMinuteValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsedPlainValue()J
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUsedSMS()J
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->outMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->inMsg:Lnitro/phonestats/core/stat/SmsCountStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/SmsCountStat;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUsedValue()J
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getUsedMinutes()J

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getSmsWeight()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnitro/phonestats/core/stat/UnitLimitStat;->getUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/core/stat/UnitLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
