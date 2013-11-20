.class public Lnitro/phonestats/core/helper/formatter/CallDuration;
.super Ljava/lang/Object;
.source "CallDuration.java"


# instance fields
.field private seconds:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lnitro/phonestats/core/helper/formatter/CallDuration;->seconds:J

    .line 11
    return-void
.end method


# virtual methods
.method public getMinutes()D
    .locals 4

    .prologue
    .line 25
    iget-wide v0, p0, Lnitro/phonestats/core/helper/formatter/CallDuration;->seconds:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinutesCeiled()I
    .locals 4

    .prologue
    .line 20
    iget-wide v0, p0, Lnitro/phonestats/core/helper/formatter/CallDuration;->seconds:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x404e

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lnitro/phonestats/core/helper/formatter/CallDuration;->seconds:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
