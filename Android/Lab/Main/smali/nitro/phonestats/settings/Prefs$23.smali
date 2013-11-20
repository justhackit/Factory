.class Lnitro/phonestats/settings/Prefs$23;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->createResetDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;

.field private final synthetic val$dataCheck:Landroid/widget/CheckBox;

.field private final synthetic val$interfacesCheck:Landroid/widget/CheckBox;

.field private final synthetic val$standartCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$23;->this$0:Lnitro/phonestats/settings/Prefs;

    iput-object p2, p0, Lnitro/phonestats/settings/Prefs$23;->val$standartCheck:Landroid/widget/CheckBox;

    iput-object p3, p0, Lnitro/phonestats/settings/Prefs$23;->val$dataCheck:Landroid/widget/CheckBox;

    iput-object p4, p0, Lnitro/phonestats/settings/Prefs$23;->val$interfacesCheck:Landroid/widget/CheckBox;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 541
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->val$standartCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->resetDatabase()V

    .line 545
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->val$dataCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->val$interfacesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-static {v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->resetCounters(Landroid/content/Context;)V

    .line 551
    :cond_1
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    const-string v1, "db reset"

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 552
    return-void

    .line 547
    :cond_2
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->val$dataCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->val$interfacesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$23;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-static {v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->resetInterfaces(Landroid/content/Context;)V

    goto :goto_0
.end method
