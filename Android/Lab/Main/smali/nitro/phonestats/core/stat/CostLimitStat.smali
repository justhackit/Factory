.class public Lnitro/phonestats/core/stat/CostLimitStat;
.super Lnitro/phonestats/core/stat/LimitStat;
.source "CostLimitStat.java"


# static fields
.field private static final currency:Ljava/lang/String;

.field private static final currencydigits:I


# instance fields
.field costBase:Lnitro/phonestats/core/stat/CostStat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrency()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/stat/CostLimitStat;->currency:Ljava/lang/String;

    .line 15
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrencyDigits()I

    move-result v0

    sput v0, Lnitro/phonestats/core/stat/CostLimitStat;->currencydigits:I

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/TotalCostsStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "costBase"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/LimitStat;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lnitro/phonestats/core/stat/CostLimitStat;->costBase:Lnitro/phonestats/core/stat/CostStat;

    .line 21
    return-void
.end method


# virtual methods
.method public getCosts()D
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lnitro/phonestats/core/stat/CostLimitStat;->costBase:Lnitro/phonestats/core/stat/CostStat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/CostStat;->getCosts()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getMaxDouble()D

    move-result-wide v0

    sget v2, Lnitro/phonestats/core/stat/CostLimitStat;->currencydigits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDouble()D
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lnitro/phonestats/core/stat/CostLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->getCostlimit(Landroid/content/Context;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRemaining()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 32
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getRemainingDouble()D

    move-result-wide v0

    sget v2, Lnitro/phonestats/core/stat/CostLimitStat;->currencydigits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRemainingDouble()D
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getMaxDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getCosts()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getUsedPlainValue()J
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUsedValue()J
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getCosts()D

    move-result-wide v0

    sget v2, Lnitro/phonestats/core/stat/CostLimitStat;->currencydigits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 74
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->useLimit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostLimitStat;->getRemainingDouble()D

    move-result-wide v0

    .line 77
    .local v0, costsVal:D
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lnitro/phonestats/core/stat/CostLimitStat;->currencydigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    double-to-float v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, costsValS:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lnitro/phonestats/core/stat/CostLimitStat;->currency:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .end local v0           #costsVal:D
    .end local v2           #costsValS:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 78
    .restart local v0       #costsVal:D
    .restart local v2       #costsValS:Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 80
    .end local v0           #costsVal:D
    .end local v2           #costsValS:Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    goto :goto_1
.end method

.method public useLimit()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnitro/phonestats/core/stat/CostLimitStat;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
