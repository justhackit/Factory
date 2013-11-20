.class public Lnitro/phonestats/Main$FirstSyncService;
.super Landroid/app/IntentService;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstSyncService"
.end annotation


# static fields
.field public static running:Z

.field public static syncedAlready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1082
    sput-boolean v0, Lnitro/phonestats/Main$FirstSyncService;->syncedAlready:Z

    .line 1083
    sput-boolean v0, Lnitro/phonestats/Main$FirstSyncService;->running:Z

    .line 1080
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1087
    const-string v0, "FirstSyncService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 1088
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 1094
    sget-boolean v0, Lnitro/phonestats/Main$FirstSyncService;->syncedAlready:Z

    if-nez v0, :cond_0

    .line 1097
    sput-boolean v1, Lnitro/phonestats/Main$FirstSyncService;->running:Z

    .line 1098
    const-string v0, "IntentService"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lnitro/phonestats/Main$FirstSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->syncBackend()I

    .line 1102
    const-string v0, "IntentService finished"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 1104
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/Main$FirstSyncService;->running:Z

    .line 1105
    sput-boolean v1, Lnitro/phonestats/Main$FirstSyncService;->syncedAlready:Z

    .line 1113
    :goto_0
    return-void

    .line 1109
    :cond_0
    const-string v0, "IntentService again"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
