.class Lnitro/phonestats/settings/Prefs$21;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->createDataPickerDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$21;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lnitro/phonestats/settings/DataPicker;JJ)V
    .locals 2
    .parameter "view"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 506
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$21;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lnitro/phonestats/settings/core/Settings;->setDataLimit(Landroid/content/Context;Ljava/lang/Long;)V

    .line 507
    return-void
.end method
