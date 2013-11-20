.class public Lnitro/phonestats/settings/WarningTresholdPreference;
.super Lnitro/phonestats/settings/ValueSeekBarPreference;
.source "WarningTresholdPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctxt"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/settings/WarningTresholdPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "ctxt"
    .parameter "attrs"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/settings/WarningTresholdPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/settings/ValueSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0x32

    const/16 v1, 0x5f

    const/16 v2, 0x55

    const-string v3, "%"

    invoke-virtual {p0, v0, v1, v2, v3}, Lnitro/phonestats/settings/WarningTresholdPreference;->init(IIILjava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    const/16 v1, 0x32

    .line 30
    invoke-super {p0, p1, p2}, Lnitro/phonestats/settings/ValueSeekBarPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 33
    iget v0, p0, Lnitro/phonestats/settings/WarningTresholdPreference;->lastValue:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lnitro/phonestats/settings/WarningTresholdPreference;->lastValue:I

    .line 34
    :cond_0
    return-void
.end method
