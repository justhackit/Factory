.class public abstract Lnitro/phonestats/core/stat/CostStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "CostStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/stat/Stat",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final currency:Ljava/lang/String;

.field private static final currencydigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrency()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/core/stat/CostStat;->currency:Ljava/lang/String;

    .line 10
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrencyDigits()I

    move-result v0

    sput v0, Lnitro/phonestats/core/stat/CostStat;->currencydigits:I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public abstract getCosts()D
.end method

.method public abstract getCostsPerUnit()D
.end method

.method public getValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostStat;->getCosts()D

    move-result-wide v0

    sget v2, Lnitro/phonestats/core/stat/CostStat;->currencydigits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/stat/CostStat;->mValue:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 34
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostStat;->useCostFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostStat;->getCosts()D

    move-result-wide v0

    .line 38
    .local v0, callCostsVal:D
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lnitro/phonestats/core/stat/CostStat;->currencydigits:I

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

    .line 39
    .local v2, minuteCosts:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lnitro/phonestats/core/stat/CostStat;->currency:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .end local v0           #callCostsVal:D
    .end local v2           #minuteCosts:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 39
    .restart local v0       #callCostsVal:D
    .restart local v2       #minuteCosts:Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 41
    .end local v0           #callCostsVal:D
    .end local v2           #minuteCosts:Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    goto :goto_1
.end method

.method public abstract useCostFeature()Z
.end method
