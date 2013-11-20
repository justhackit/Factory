.class public Lnitro/phonestats/core/helper/Updater$UpdateService;
.super Landroid/app/Service;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/helper/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, updateMode:Ljava/lang/String;
    const-string v1, "NITRO_PHONESTATS_UPDATE_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnitro/phonestats/core/helper/Updater$UpdateService$1;

    invoke-direct {v2, p0}, Lnitro/phonestats/core/helper/Updater$UpdateService$1;-><init>(Lnitro/phonestats/core/helper/Updater$UpdateService;)V

    .line 65
    const-string v3, "UpdaterALL"

    .line 58
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "update all"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 143
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->stopSelf()V

    .line 145
    return-void

    .line 69
    :cond_1
    const-string v1, "NITRO_PHONESTATS_UPDATE_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnitro/phonestats/core/helper/Updater$UpdateService$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/core/helper/Updater$UpdateService$2;-><init>(Lnitro/phonestats/core/helper/Updater$UpdateService;)V

    .line 79
    const-string v3, "UpdaterSMS"

    .line 71
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "smsCheck"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "NITRO_PHONESTATS_UPDATE_CALLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnitro/phonestats/core/helper/Updater$UpdateService$3;

    invoke-direct {v2, p0}, Lnitro/phonestats/core/helper/Updater$UpdateService$3;-><init>(Lnitro/phonestats/core/helper/Updater$UpdateService;)V

    .line 93
    const-string v3, "UpdaterCalls"

    .line 85
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "newCallEvent"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v1, "de.ub0r.android.callmeter.SAVE_WEBSMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newWebSMS\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connector"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_4
    const-string v1, "de.ub0r.android.callmeter.SAVE_SIPCALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "newVOIPCall"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_5
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnitro/phonestats/core/helper/Updater$UpdateService$4;

    invoke-direct {v2, p0}, Lnitro/phonestats/core/helper/Updater$UpdateService$4;-><init>(Lnitro/phonestats/core/helper/Updater$UpdateService;)V

    .line 136
    const-string v3, "UpdaterSMS"

    .line 128
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 138
    invoke-virtual {p0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "smsReceived"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
