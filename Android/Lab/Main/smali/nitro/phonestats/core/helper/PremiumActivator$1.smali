.class Lnitro/phonestats/core/helper/PremiumActivator$1;
.super Ljava/lang/Object;
.source "PremiumActivator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/helper/PremiumActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/helper/PremiumActivator;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/helper/PremiumActivator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 30
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    invoke-static {p2}, Lnitro/phonestats/key/IDroidStatsKey$Stub;->asInterface(Landroid/os/IBinder;)Lnitro/phonestats/key/IDroidStatsKey;

    move-result-object v2

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$0(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/key/IDroidStatsKey;)V

    .line 34
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    iget-object v2, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;
    invoke-static {v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$1(Lnitro/phonestats/core/helper/PremiumActivator;)Lnitro/phonestats/key/IDroidStatsKey;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/key/IDroidStatsKey;->getKeySource()Ljava/lang/String;

    move-result-object v2

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$2(Lnitro/phonestats/core/helper/PremiumActivator;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    iget-object v2, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;
    invoke-static {v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$1(Lnitro/phonestats/core/helper/PremiumActivator;)Lnitro/phonestats/key/IDroidStatsKey;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/key/IDroidStatsKey;->getKeyVersion()Ljava/lang/String;

    move-result-object v2

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->keyVersion:Ljava/lang/String;
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$3(Lnitro/phonestats/core/helper/PremiumActivator;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;
    invoke-static {v1}, Lnitro/phonestats/core/helper/PremiumActivator;->access$4(Lnitro/phonestats/core/helper/PremiumActivator;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    sget-object v2, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->INVALID:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$5(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;)V

    .line 42
    :goto_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/core/helper/PremiumActivator;->access$6(Lnitro/phonestats/core/helper/PremiumActivator;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->keySource:Ljava/lang/String;
    invoke-static {v3}, Lnitro/phonestats/core/helper/PremiumActivator;->access$4(Lnitro/phonestats/core/helper/PremiumActivator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->keyVersion:Ljava/lang/String;
    invoke-static {v3}, Lnitro/phonestats/core/helper/PremiumActivator;->access$7(Lnitro/phonestats/core/helper/PremiumActivator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    const/4 v2, 0x0

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->isConnecting:Z
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$8(Lnitro/phonestats/core/helper/PremiumActivator;Z)V

    .line 44
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    #getter for: Lnitro/phonestats/core/helper/PremiumActivator;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/core/helper/PremiumActivator;->access$6(Lnitro/phonestats/core/helper/PremiumActivator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 45
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    invoke-virtual {v1}, Lnitro/phonestats/core/helper/PremiumActivator;->stopIt()V

    .line 51
    :goto_1
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    sget-object v2, Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;->PREMIUM_VERIFIED:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->state:Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;
    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/PremiumActivator;->access$5(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/core/helper/PremiumActivator$PremiumState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 55
    iget-object v0, p0, Lnitro/phonestats/core/helper/PremiumActivator$1;->this$0:Lnitro/phonestats/core/helper/PremiumActivator;

    const/4 v1, 0x0

    #setter for: Lnitro/phonestats/core/helper/PremiumActivator;->service:Lnitro/phonestats/key/IDroidStatsKey;
    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/PremiumActivator;->access$0(Lnitro/phonestats/core/helper/PremiumActivator;Lnitro/phonestats/key/IDroidStatsKey;)V

    .line 56
    return-void
.end method
