.class public Lnitro/phonestats/core/watcher/SmsWatchService;
.super Landroid/app/Service;
.source "SmsWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;,
        Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final SMS_UPDATE_DELAY:I = 0x3

.field private static lastNotified:J


# instance fields
.field private final binder:Landroid/os/IBinder;

.field public smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lnitro/phonestats/core/watcher/SmsWatchService;->lastNotified:J

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/watcher/SmsWatchService$ServiceBinder;-><init>(Lnitro/phonestats/core/watcher/SmsWatchService;)V

    iput-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->binder:Landroid/os/IBinder;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/core/watcher/SmsWatchService;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->onSMSSend()V

    return-void
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lnitro/phonestats/core/watcher/SmsWatchService;->lastNotified:J

    return-wide v0
.end method

.method static synthetic access$2(J)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-wide p0, Lnitro/phonestats/core/watcher/SmsWatchService;->lastNotified:J

    return-void
.end method

.method private onSMSSend()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 236
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lnitro/phonestats/core/helper/Updater;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "NITRO_PHONESTATS_UPDATE_SMS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 241
    .local v3, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 242
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 243
    const/16 v4, 0xd

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 246
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 247
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 249
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 250
    const-string v5, "It was an SMS send"

    .line 249
    invoke-static {v4, v5}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private unregisterSmsObserver()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    .line 130
    const-string v0, "SMSObserver unregistered"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 73
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->unregisterSmsObserver()V

    .line 118
    const-string v0, "SMSService destroyed"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 120
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 83
    const-string v0, "SMSService started"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->registerSmsObserver()V

    .line 98
    return-void
.end method

.method public registerSmsObserver()V
    .locals 5

    .prologue
    .line 102
    new-instance v2, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;-><init>(Lnitro/phonestats/core/watcher/SmsWatchService;Landroid/os/Handler;)V

    iput-object v2, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    .line 103
    const-string v1, "content://sms/"

    .line 104
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    .line 106
    iget-object v4, p0, Lnitro/phonestats/core/watcher/SmsWatchService;->smsObserver:Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;

    .line 105
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    const-string v2, "SMSObserver registered"

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 109
    return-void
.end method
