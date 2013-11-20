.class public abstract Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.super Lnitro/phonestats/widget/BaseWidgetUpdateService;
.source "HomescreenWidgetUpdateService.java"


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$core$stat$Stat$ViewType:[I

.field public static _intentID:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$core$stat$Stat$ViewType()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->$SWITCH_TABLE$nitro$phonestats$core$stat$Stat$ViewType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/core/stat/Stat$ViewType;->values()[Lnitro/phonestats/core/stat/Stat$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->CALLS:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->OVERVIEW:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->SMS:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnitro/phonestats/core/stat/Stat$ViewType;->TRAFFIC:Lnitro/phonestats/core/stat/Stat$ViewType;

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->$SWITCH_TABLE$nitro$phonestats$core$stat$Stat$ViewType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->_intentID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;-><init>()V

    return-void
.end method


# virtual methods
.method createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnitro/phonestats/Main;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->_intentID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    const-string v2, "nitro.phonestats.ShowView"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method createOpenCallsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnitro/phonestats/Main;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v0, callsIntent:Landroid/content/Intent;
    sget-object v2, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->_intentID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    const-string v2, "nitro.phonestats.ShowView"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    .local v1, pendingCallsIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method createOpenDataIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lnitro/phonestats/Main;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, dataIntent:Landroid/content/Intent;
    sget-object v2, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->_intentID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v2, "nitro.phonestats.ShowView"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 183
    .local v1, pendingDataIntent:Landroid/app/PendingIntent;
    return-object v1
.end method

.method createOpenSMSIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnitro/phonestats/Main;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, smsIntent:Landroid/content/Intent;
    sget-object v2, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->_intentID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const-string v2, "nitro.phonestats.ShowView"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    .local v0, pendingSmsIntent:Landroid/app/PendingIntent;
    return-object v0
.end method

.method protected decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/stat/Stat",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    instance-of v0, p1, Lnitro/phonestats/core/stat/CallSecondsStat;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnitro/phonestats/core/stat/CallMinuteLimitStat;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnitro/phonestats/core/stat/CallCountStat;

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenCallsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 123
    :cond_1
    instance-of v0, p1, Lnitro/phonestats/core/stat/SmsCountLimitStat;

    if-nez v0, :cond_2

    instance-of v0, p1, Lnitro/phonestats/core/stat/SmsCountStat;

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenSMSIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_3
    instance-of v0, p1, Lnitro/phonestats/core/stat/TrafficStat;

    if-nez v0, :cond_4

    instance-of v0, p1, Lnitro/phonestats/core/stat/TrafficLimitStat;

    if-eqz v0, :cond_5

    .line 126
    :cond_4
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenDataIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_5
    invoke-static {}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->$SWITCH_TABLE$nitro$phonestats$core$stat$Stat$ViewType()[I

    move-result-object v0

    invoke-virtual {p1}, Lnitro/phonestats/core/stat/Stat;->getOpensView()Lnitro/phonestats/core/stat/Stat$ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/stat/Stat$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenCallsIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenSMSIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->createOpenDataIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 111
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getProvider()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected abstract getProvider()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 34
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService$1;-><init>(Lnitro/phonestats/widget/HomescreenWidgetUpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->updateWidget(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->stopSelf()V

    goto :goto_0
.end method

.method protected abstract setOnClickIntents()V
.end method

.method protected abstract setSimpleOnClickIntents()V
.end method

.method public updateWidget(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 65
    .local v2, thisWidget:Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 70
    .local v0, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->getLayout()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    .line 73
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->setAlphaBackground()V

    .line 76
    :cond_0
    invoke-static {p1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 77
    .local v1, statManager:Lnitro/phonestats/core/IStatManager;
    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->loadBufferedStats()V

    .line 100
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->setOnClickIntents()V

    .line 101
    invoke-virtual {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->setBufferedValues2()V

    .line 106
    iget-object v3, p0, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 108
    return-void
.end method
