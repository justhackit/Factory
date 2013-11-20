.class Lnitro/phonestats/core/helper/Updater$UpdateService$1;
.super Ljava/lang/Object;
.source "Updater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/helper/Updater$UpdateService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/core/helper/Updater$UpdateService;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/helper/Updater$UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/helper/Updater$UpdateService$1;->this$1:Lnitro/phonestats/core/helper/Updater$UpdateService;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnitro/phonestats/core/helper/Updater$UpdateService$1;->this$1:Lnitro/phonestats/core/helper/Updater$UpdateService;

    invoke-virtual {v0}, Lnitro/phonestats/core/helper/Updater$UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->syncAndLoad()V

    .line 64
    return-void
.end method
