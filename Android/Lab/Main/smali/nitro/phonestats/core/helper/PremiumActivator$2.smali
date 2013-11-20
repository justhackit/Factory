.class Lnitro/phonestats/core/helper/PremiumActivator$2;
.super Ljava/lang/Object;
.source "PremiumActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/helper/PremiumActivator;->consultKey(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/helper/PremiumActivator;

.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/helper/PremiumActivator;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    iput-object p2, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->val$ctx:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->val$ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "nitro.phonestats.key.IDroidStatsKey"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->svcConn:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$9(Lnitro/phonestats/core/helper/PremiumActivator;)Landroid/content/ServiceConnection;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->isConnecting:Z
    invoke-static {v0, v3}, Lnitro/phonestats/core/helper/PremiumActivator;->access$8(Lnitro/phonestats/core/helper/PremiumActivator;Z)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator$2;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    sget-object v1, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->INVALID:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/PremiumActivator;->access$5(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;)V

    goto :goto_0
.end method
