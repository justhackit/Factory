.class public Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;
.super Lnitro/phonestats/core/stat/AverageCountStat;
.source "CallMinuteAverageCountStat.java"

# interfaces
.implements Lnitro/phonestats/core/stat/base/IsDynamic;


# instance fields
.field private secondsPrecision:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 16
    const v0, 0x7f07010d

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/stat/AverageCountStat;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "ctx"
    .parameter "secondsPrecision"

    .prologue
    .line 22
    const v0, 0x7f07010d

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/core/stat/AverageCountStat;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-boolean p2, p0, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->secondsPrecision:Z

    .line 25
    return-void
.end method


# virtual methods
.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 30
    new-instance v0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->getAverage()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;-><init>(JLandroid/content/Context;)V

    .line 31
    .local v0, val:Lnitro/phonestats/core/helper/formatter/CallLengthValue;
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useHoursDisplay(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, p0, Lnitro/phonestats/core/stat/CallMinuteAverageCountStat;->secondsPrecision:Z

    invoke-virtual {v0, p2, v1, v2}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->getTextRepresentation(ZZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
