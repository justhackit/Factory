.class public abstract Lnitro/phonestats/widget/BaseWidgetUpdateService;
.super Landroid/app/Service;
.source "BaseWidgetUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;
    }
.end annotation


# instance fields
.field protected views:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getLayout()I
.end method

.method protected getStatsValue(Lnitro/phonestats/core/stat/Stat;Z)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "addUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, stat1:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    const/4 v2, 0x1

    .line 177
    instance-of v1, p1, Lnitro/phonestats/core/stat/TrafficStat;

    if-eqz v1, :cond_0

    .line 178
    check-cast p1, Lnitro/phonestats/core/stat/TrafficStat;

    .end local p1           #stat1:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v2}, Lnitro/phonestats/core/stat/TrafficStat;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, value1:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 179
    .end local v0           #value1:Ljava/lang/String;
    .restart local p1       #stat1:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :cond_0
    instance-of v1, p1, Lnitro/phonestats/core/stat/TrafficLimitStat;

    if-eqz v1, :cond_1

    .line 180
    check-cast p1, Lnitro/phonestats/core/stat/TrafficLimitStat;

    .end local p1           #stat1:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v2}, Lnitro/phonestats/core/stat/TrafficLimitStat;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value1:Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0           #value1:Ljava/lang/String;
    .restart local p1       #stat1:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    :cond_1
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lnitro/phonestats/core/stat/Stat;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value1:Ljava/lang/String;
    goto :goto_0
.end method

.method protected setAlphaBackground()V
    .locals 6

    .prologue
    const v5, 0x7f0a00cb

    .line 115
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/SettingsWidget;->getWidgetAlpha(Landroid/content/Context;)I

    move-result v0

    .line 116
    .local v0, alpha:I
    sget v1, Lnitro/phonestats/widget/WidgetProviderBase;->osVersion:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 117
    int-to-double v1, v0

    const-wide v3, 0x4004666666666666L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 118
    if-ltz v0, :cond_0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const-string v2, "setAlpha"

    invoke-virtual {v1, v5, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget v1, Lnitro/phonestats/widget/WidgetProviderBase;->osVersion:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 121
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f020025

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 123
    :cond_2
    const/16 v1, 0x50

    if-le v0, v1, :cond_3

    .line 124
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f02002a

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 125
    :cond_3
    const/16 v1, 0x3c

    if-le v0, v1, :cond_4

    .line 126
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f020029

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 127
    :cond_4
    const/16 v1, 0x28

    if-le v0, v1, :cond_5

    .line 128
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f020028

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 129
    :cond_5
    const/16 v1, 0x14

    if-le v0, v1, :cond_6

    .line 130
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f020027

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 131
    :cond_6
    if-lez v0, :cond_7

    .line 132
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f020026

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 134
    :cond_7
    iget-object v1, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    const v2, 0x7f02002b

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method protected setBufferedValues()V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 57
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getConfig()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 77
    return-void

    .line 59
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 61
    .local v1, config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;
    iget-object v9, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v10, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    iget-object v11, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v0, v11, v12}, Lnitro/phonestats/core/helper/PersistentBuffer;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 63
    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    if-eqz v9, :cond_1

    .line 64
    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Lnitro/phonestats/core/helper/PersistentBuffer;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    .line 65
    .local v5, progress:J
    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Lnitro/phonestats/core/helper/PersistentBuffer;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v3

    .line 66
    .local v3, max:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-eqz v9, :cond_2

    .line 67
    long-to-int v9, v5

    long-to-int v10, v3

    iget-object v11, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    iget-object v12, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Lnitro/phonestats/widget/WidgetProgressBarHelper;->setProgressColored(II[ILandroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 73
    .end local v3           #max:J
    .end local v5           #progress:J
    :cond_1
    :goto_1
    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    const v10, 0x7f0200ae

    invoke-virtual {v0, v9, v10}, Lnitro/phonestats/core/helper/PersistentBuffer;->getIntValue(Ljava/lang/String;I)I

    move-result v7

    .line 74
    .local v7, slotIcon:I
    iget v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v7, v10}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->setStatIcon(IILjava/lang/String;)V

    .line 75
    iget-object v9, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v10, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    const-string v11, "setImageLevel"

    iget v12, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 69
    .end local v7           #slotIcon:I
    .restart local v3       #max:J
    .restart local v5       #progress:J
    :cond_2
    const/16 v9, 0x64

    iget-object v10, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    iget-object v11, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lnitro/phonestats/widget/WidgetProgressBarHelper;->resetProgress(I[ILandroid/widget/RemoteViews;Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected setBufferedValues2()V
    .locals 10

    .prologue
    .line 81
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    .line 82
    .local v2, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getConfig()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    return-void

    .line 90
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 92
    .local v0, config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;
    iget-object v6, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    invoke-interface {v2, v6}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v3

    .line 94
    .local v3, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    iget-boolean v6, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    invoke-virtual {p0, v3, v6}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getStatsValue(Lnitro/phonestats/core/stat/Stat;Z)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, value:Ljava/lang/String;
    iget-object v6, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v7, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 98
    iget-object v6, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    if-eqz v6, :cond_1

    .line 99
    iget-object v6, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    iget-object v7, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    iget-object v8, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    invoke-virtual {p0, v3, v6, v7, v8}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->setProgressBar(Lnitro/phonestats/core/stat/Stat;[ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    iget v6, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    iget-object v8, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v8}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->setStatIcon(IILjava/lang/String;)V

    .line 102
    iget-object v6, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v7, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    const-string v8, "setImageLevel"

    iget v9, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method protected setProgressBar(Lnitro/phonestats/core/stat/Stat;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "goodWarnProgressIds"
    .parameter "keyBufferProgress"
    .parameter "keyBufferMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x400

    .line 152
    instance-of v4, p1, Lnitro/phonestats/core/stat/RemainingDaysStat;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 154
    check-cast v4, Lnitro/phonestats/core/stat/LimitStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/LimitStat;->getMax()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 155
    .local v0, max:J
    invoke-virtual {p1}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 156
    .local v2, progress:J
    long-to-int v4, v2

    long-to-int v5, v0

    iget-object v6, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v4, v5, p2, v6, v7}, Lnitro/phonestats/widget/WidgetProgressBarHelper;->setProgress(II[ILandroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 173
    .end local v0           #max:J
    .end local v2           #progress:J
    :goto_0
    return-void

    .line 158
    :cond_0
    instance-of v4, p1, Lnitro/phonestats/core/stat/LimitStat;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lnitro/phonestats/core/stat/LimitStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/LimitStat;->useLimit()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 159
    check-cast v4, Lnitro/phonestats/core/stat/LimitStat;

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/LimitStat;->getMax()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 160
    .restart local v0       #max:J
    invoke-virtual {p1}, Lnitro/phonestats/core/stat/Stat;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 161
    .restart local v2       #progress:J
    :goto_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 165
    long-to-int v4, v2

    long-to-int v5, v0

    iget-object v6, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v4, v5, p2, v6, v7}, Lnitro/phonestats/widget/WidgetProgressBarHelper;->setProgressColored(II[ILandroid/widget/RemoteViews;Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :cond_1
    div-long/2addr v0, v6

    .line 163
    div-long/2addr v2, v6

    goto :goto_1

    .line 168
    .end local v0           #max:J
    .end local v2           #progress:J
    :cond_2
    const/16 v4, 0x64

    iget-object v5, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, p2, v5, v6}, Lnitro/phonestats/widget/WidgetProgressBarHelper;->resetProgress(I[ILandroid/widget/RemoteViews;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected setStatIcon(IILjava/lang/String;)V
    .locals 1
    .parameter "resID"
    .parameter "iconRessource"
    .parameter "keyBufferIcon"

    .prologue
    .line 142
    iget-object v0, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    return-void
.end method

.method protected updateData()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    .line 35
    .local v3, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/core/helper/PersistentBuffer;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/helper/PersistentBuffer;

    move-result-object v0

    .line 36
    .local v0, buffer:Lnitro/phonestats/core/helper/PersistentBuffer;
    invoke-virtual {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getConfig()Ljava/util/List;

    move-result-object v2

    .line 37
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 51
    return-void

    .line 37
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 39
    .local v1, config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;
    iget-object v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    invoke-interface {v3, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v4

    .line 41
    .local v4, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;"
    iget-boolean v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    invoke-virtual {p0, v4, v7}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->getStatsValue(Lnitro/phonestats/core/stat/Stat;Z)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, value:Ljava/lang/String;
    iget-object v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    invoke-virtual {v0, v7, v5}, Lnitro/phonestats/core/helper/PersistentBuffer;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v7, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v8, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    iget-object v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    if-eqz v7, :cond_1

    .line 46
    iget-object v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    iget-object v8, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    invoke-virtual {p0, v4, v7, v8, v9}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->setProgressBar(Lnitro/phonestats/core/stat/Stat;[ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    iget v7, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    invoke-virtual {v4}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v8

    iget-object v9, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9}, Lnitro/phonestats/widget/BaseWidgetUpdateService;->setStatIcon(IILjava/lang/String;)V

    .line 49
    iget-object v7, p0, Lnitro/phonestats/widget/BaseWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iget v8, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    const-string v9, "setImageLevel"

    iget v10, v1, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method
