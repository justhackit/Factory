.class Lnitro/phonestats/core/StatManager$1;
.super Ljava/lang/Object;
.source "StatManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/StatManager;->registerSharedPreferenceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/StatManager;


# direct methods
.method constructor <init>(Lnitro/phonestats/core/StatManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/StatManager$1;->this$0:Lnitro/phonestats/core/StatManager;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 156
    const-string v0, "pref_update_intervall_traffic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "Update intervall for traffic changed"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lnitro/phonestats/core/StatManager$1;->this$0:Lnitro/phonestats/core/StatManager;

    #getter for: Lnitro/phonestats/core/StatManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->access$0(Lnitro/phonestats/core/StatManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->scheduleAutomaticUpdates(Landroid/content/Context;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/core/StatManager$1;->this$0:Lnitro/phonestats/core/StatManager;

    invoke-virtual {v0, p2}, Lnitro/phonestats/core/StatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 161
    return-void
.end method
