.class public Lnitro/phonestats/core/helper/Updater;
.super Landroid/content/BroadcastReceiver;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/core/helper/Updater$UpdateService;
    }
.end annotation


# static fields
.field public static final INSERT_VOIP_CALL:Ljava/lang/String; = "de.ub0r.android.callmeter.SAVE_SIPCALL"

.field public static final INSERT_WEB_SMS:Ljava/lang/String; = "de.ub0r.android.callmeter.SAVE_WEBSMS"

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final UPDATE_ALL:Ljava/lang/String; = "NITRO_PHONESTATS_UPDATE_ALL"

.field public static final UPDATE_CALLS:Ljava/lang/String; = "NITRO_PHONESTATS_UPDATE_CALLS"

.field public static final UPDATE_SMS:Ljava/lang/String; = "NITRO_PHONESTATS_UPDATE_SMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    const-class v1, Lnitro/phonestats/core/helper/Updater$UpdateService;

    .line 27
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, intent2:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 33
    const-string v1, "panic"

    invoke-static {p1, v1}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method
