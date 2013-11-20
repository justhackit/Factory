.class public Lnitro/phonestats/core/helper/SmsWatchServiceRestarter;
.super Landroid/content/BroadcastReceiver;
.source "SmsWatchServiceRestarter.java"


# static fields
.field public static final ACTION_RESTART_SMSWATCHSERVICE:Ljava/lang/String; = "nitro.phonestats.ACTION_RESTART_SMSWATCHSERVICE"

.field public static final DISABLE_SERVICE:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    const-string v0, "try to check if SmsWatchService needs restart"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lnitro/phonestats/core/helper/StatsUtils;->checkServiceConnection(Landroid/content/Context;)V

    .line 22
    return-void
.end method
