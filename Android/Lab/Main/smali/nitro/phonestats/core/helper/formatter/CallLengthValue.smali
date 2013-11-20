.class public Lnitro/phonestats/core/helper/formatter/CallLengthValue;
.super Ljava/lang/Object;
.source "CallLengthValue.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private seconds:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 0
    .parameter "seconds"
    .parameter "ctx"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->seconds:J

    .line 15
    iput-object p3, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->ctx:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private getCombinedValue(JZ)Ljava/lang/String;
    .locals 11
    .parameter "seconds"
    .parameter "secondsPrecision"

    .prologue
    .line 37
    if-nez p3, :cond_1

    .line 39
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->minuteValue()J

    move-result-wide v2

    .line 40
    .local v2, minutes:J
    const-wide/16 v9, 0x3c

    cmp-long v9, v2, v9

    if-lez v9, :cond_0

    .line 41
    const-wide/16 v9, 0x3c

    div-long v0, v2, v9

    .line 42
    .local v0, hours:J
    const-wide/16 v9, 0x3c

    rem-long v4, v2, v9

    .line 43
    .local v4, remainingMinutes:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " h "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, s:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getCombinedValue: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 82
    .end local v0           #hours:J
    .end local v4           #remainingMinutes:J
    :goto_0
    return-object v8

    .line 48
    .end local v8           #s:Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #s:Ljava/lang/String;
    goto :goto_0

    .line 55
    .end local v2           #minutes:J
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    const-wide/16 v0, 0x0

    .line 56
    .restart local v0       #hours:J
    const-wide/16 v2, 0x0

    .line 57
    .restart local v2       #minutes:J
    move-wide v6, p1

    .line 58
    .local v6, remainingSeconds:J
    const-wide/16 v9, 0xe10

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    .line 60
    const-wide/16 v9, 0xe10

    div-long v0, v6, v9

    .line 61
    const-wide/16 v9, 0xe10

    rem-long/2addr v6, v9

    .line 64
    :cond_2
    const-wide/16 v9, 0x3c

    cmp-long v9, v6, v9

    if-lez v9, :cond_3

    .line 65
    const-wide/16 v9, 0x3c

    div-long v2, v6, v9

    .line 66
    const-wide/16 v9, 0x3c

    rem-long/2addr v6, v9

    .line 70
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-lez v9, :cond_4

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " h "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " min"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #s:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_5

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " min"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #s:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #s:Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method getSeconds()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->seconds:J

    return-wide v0
.end method

.method public getTextRepresentation(ZZZ)Ljava/lang/String;
    .locals 4
    .parameter "unitsAdded"
    .parameter "useHoursFormat"
    .parameter "secondsPrecision"

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    .local v0, value:Ljava/lang/String;
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    iget-wide v1, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->seconds:J

    invoke-direct {p0, v1, v2, p3}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->getCombinedValue(JZ)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_3

    iget-object v1, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->ctx:Landroid/content/Context;

    const v3, 0x7f07010d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    return-object v0

    .line 29
    :cond_1
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->seconds:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->minuteValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->ctx:Landroid/content/Context;

    const v3, 0x7f07010e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method minuteValue()J
    .locals 4

    .prologue
    .line 23
    iget-wide v0, p0, Lnitro/phonestats/core/helper/formatter/CallLengthValue;->seconds:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
