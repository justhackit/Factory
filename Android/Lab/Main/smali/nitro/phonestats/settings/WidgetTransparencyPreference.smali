.class public Lnitro/phonestats/settings/WidgetTransparencyPreference;
.super Lnitro/phonestats/settings/ValueSeekBarPreference;
.source "WidgetTransparencyPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctxt"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/settings/WidgetTransparencyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "ctxt"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/settings/WidgetTransparencyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v2, 0x64

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/settings/ValueSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    const-string v1, "%"

    invoke-virtual {p0, v0, v2, v2, v1}, Lnitro/phonestats/settings/WidgetTransparencyPreference;->init(IIILjava/lang/String;)V

    .line 25
    return-void
.end method
