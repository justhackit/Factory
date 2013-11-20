.class Lnitro/phonestats/settings/Prefs$22;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Lnitro/phonestats/settings/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->createMonthPickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$22;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lnitro/phonestats/settings/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 519
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$22;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lnitro/phonestats/settings/core/Settings;->setMonthBeginning(Landroid/content/Context;I)V

    .line 520
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$22;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-static {p3, v0}, Lnitro/phonestats/core/traffic/TrafficEngine;->changeResetDate(ILandroid/content/Context;)V

    .line 521
    return-void
.end method
