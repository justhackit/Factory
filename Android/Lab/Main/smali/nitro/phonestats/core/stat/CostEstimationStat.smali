.class public Lnitro/phonestats/core/stat/CostEstimationStat;
.super Lnitro/phonestats/core/stat/EstimationStat;
.source "CostEstimationStat.java"


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

    sput-object v0, Lnitro/phonestats/core/stat/CostEstimationStat;->currency:Ljava/lang/String;

    .line 10
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrencyDigits()I

    move-result v0

    sput v0, Lnitro/phonestats/core/stat/CostEstimationStat;->currencydigits:I

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnitro/phonestats/core/stat/CostStat;)V
    .locals 0
    .parameter "ctx"
    .parameter "baseStat"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/core/stat/EstimationStat;-><init>(Landroid/content/Context;Lnitro/phonestats/core/stat/Stat;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getEstimatedCosts()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnitro/phonestats/core/helper/NotEnabledOptionException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostEstimationStat;->getEstimated()J

    move-result-wide v0

    .line 36
    .local v0, estimated:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 37
    const-wide/high16 v2, -0x4010

    .line 39
    :goto_0
    return-wide v2

    :cond_0
    long-to-double v2, v0

    sget v4, Lnitro/phonestats/core/stat/CostEstimationStat;->currencydigits:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/CostEstimationStat;->getEstimatedCosts()D
    :try_end_0
    .catch Lnitro/phonestats/core/helper/NotEnabledOptionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 29
    .local v1, costsVal:D
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lnitro/phonestats/core/stat/CostEstimationStat;->currencydigits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    double-to-float v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, costs:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lnitro/phonestats/core/stat/CostEstimationStat;->currency:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0           #costs:Ljava/lang/String;
    .end local v1           #costsVal:D
    :goto_1
    return-object v4

    .line 25
    :catch_0
    move-exception v3

    .line 27
    .local v3, e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    const-string v4, "-"

    goto :goto_1

    .line 30
    .end local v3           #e:Lnitro/phonestats/core/helper/NotEnabledOptionException;
    .restart local v0       #costs:Ljava/lang/String;
    .restart local v1       #costsVal:D
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
