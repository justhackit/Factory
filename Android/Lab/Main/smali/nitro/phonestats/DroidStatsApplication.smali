.class public Lnitro/phonestats/DroidStatsApplication;
.super Landroid/app/Application;
.source "DroidStatsApplication.java"


# instance fields
.field private activator:Lnitro/phonestats/core/helper/PremiumActivator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivator()Lnitro/phonestats/core/helper/PremiumActivator;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnitro/phonestats/DroidStatsApplication;->activator:Lnitro/phonestats/core/helper/PremiumActivator;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lnitro/phonestats/core/helper/PremiumActivator;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/helper/PremiumActivator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/DroidStatsApplication;->activator:Lnitro/phonestats/core/helper/PremiumActivator;

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->destroyAllHandlers()V

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 32
    return-void
.end method
