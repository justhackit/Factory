.class public Lnitro/phonestats/core/watcher/BootDetector;
.super Landroid/content/BroadcastReceiver;
.source "BootDetector.java"


# static fields
.field private static final BOOT_COMPLETED_INTENT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final MODEL_INIT_DELAY:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deliverUpdate(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 76
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lnitro/phonestats/core/helper/Updater;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "NITRO_PHONESTATS_UPDATE_ALL"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {p1, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 84
    .local v3, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 85
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    const/16 v4, 0xd

    const/16 v5, 0x28

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 89
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 90
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    return-void
.end method

.method private startSMSWatchService(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p1}, Lnitro/phonestats/core/helper/StatsUtils;->checkServiceConnection(Landroid/content/Context;)V

    .line 66
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "nitro.phonestats.ACTION_RESTART_SMSWATCHSERVICE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v7, i:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    const/4 v6, 0x0

    const/high16 v8, 0x1000

    invoke-static {p1, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->backgroundServicesDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "Boot detected"

    invoke-static {p1, v0}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lnitro/phonestats/core/watcher/BootDetector;->startSMSWatchService(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lnitro/phonestats/core/watcher/BootDetector;->deliverUpdate(Landroid/content/Context;)V

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received unexpected intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {p1, v0}, Lnitro/phonestats/core/helper/NitroUtils;->error(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
