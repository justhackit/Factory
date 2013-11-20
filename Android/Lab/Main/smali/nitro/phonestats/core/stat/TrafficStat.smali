.class public Lnitro/phonestats/core/stat/TrafficStat;
.super Lnitro/phonestats/core/stat/Stat;
.source "TrafficStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/stat/TrafficStat$AsyncResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnitro/phonestats/core/stat/Stat",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mIncomingKey:Ljava/lang/String;

.field private mOutgoingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnitro/phonestats/core/stat/Stat;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public buffer()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public getIncomingKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficStat;->mIncomingKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingValue()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getIncomingKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficStat;->ctx:Landroid/content/Context;

    invoke-static {v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatValueByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastReset()Ljava/util/Date;
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficStat;->ctx:Landroid/content/Context;

    invoke-static {v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatResetDataByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Date;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutgoingKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnitro/phonestats/core/stat/TrafficStat;->mOutgoingKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoingValue()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getOutgoingKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficStat;->ctx:Landroid/content/Context;

    invoke-static {v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatValueByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/core/stat/TrafficStat;->ctx:Landroid/content/Context;

    invoke-static {v1, v2}, Lnitro/phonestats/core/traffic/TrafficEngine;->getStatValueByKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;
    :try_end_0
    .catch Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lnitro/phonestats/core/traffic/InterfaceStatsProvider$InterfaceNotAvailableException;
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public loadBuffered()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setIncomingKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 28
    iput-object p1, p0, Lnitro/phonestats/core/stat/TrafficStat;->mIncomingKey:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setOutgoingKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 38
    iput-object p1, p0, Lnitro/phonestats/core/stat/TrafficStat;->mOutgoingKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setValue(Ljava/lang/Long;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnitro/phonestats/core/stat/TrafficStat;->setValue(Ljava/lang/Long;)V

    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "unitAdded"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "unitAdded"
    .parameter "forceMB"

    .prologue
    .line 131
    sget-object v0, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->TOTAL:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    invoke-virtual {p0, p1, p2, p3, v0}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;ZZLnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;ZZLnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;)Ljava/lang/String;
    .locals 6
    .parameter "ctx"
    .parameter "unitAdded"
    .parameter "forceMB"
    .parameter "direction"

    .prologue
    .line 138
    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->INCOMING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    if-ne p4, v2, :cond_0

    .line 139
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getIncomingValue()Ljava/lang/Long;

    move-result-object v0

    .line 145
    .local v0, lValue:Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 146
    const v2, 0x7f0700b2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, value:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 140
    .end local v0           #lValue:Ljava/lang/Long;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    sget-object v2, Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;->OUTGOING:Lnitro/phonestats/core/traffic/TrafficEngine$TrafficDirection;

    if-ne p4, v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getOutgoingValue()Ljava/lang/Long;

    move-result-object v0

    .restart local v0       #lValue:Ljava/lang/Long;
    goto :goto_0

    .line 143
    .end local v0           #lValue:Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0}, Lnitro/phonestats/core/stat/TrafficStat;->getValue()Ljava/lang/Long;

    move-result-object v0

    .restart local v0       #lValue:Ljava/lang/Long;
    goto :goto_0

    .line 148
    :cond_2
    if-nez p3, :cond_3

    .line 149
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lnitro/phonestats/core/traffic/TrafficEngine;->formatDataNumber2(JZ)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_1
.end method
