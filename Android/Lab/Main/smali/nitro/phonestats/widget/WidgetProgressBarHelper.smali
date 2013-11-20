.class public Lnitro/phonestats/widget/WidgetProgressBarHelper;
.super Ljava/lang/Object;
.source "WidgetProgressBarHelper.java"


# static fields
.field public static final GOOD:I = 0x0

.field public static final WARN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetProgress(I[ILandroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "max"
    .parameter "goodWarnProgressId"
    .parameter "views"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    aget v0, p1, v2

    invoke-virtual {p2, v0, p0, v2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 79
    aget v0, p1, v2

    const-string v1, "setSecondaryProgress"

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 81
    aget v0, p1, v3

    invoke-virtual {p2, v0, p0, v2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 82
    aget v0, p1, v3

    const-string v1, "setSecondaryProgress"

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 83
    return-void
.end method

.method public static setProgress(II[ILandroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "progress"
    .parameter "max"
    .parameter "goodWarnProgressId"
    .parameter "views"
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    const-wide/high16 v2, 0x3ff0

    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 60
    .local v0, warningLimit:D
    aget v2, p2, v6

    invoke-virtual {p3, v2, p1, p0, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 61
    aget v2, p2, v6

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 63
    aget v2, p2, v7

    invoke-virtual {p3, v2, p1, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 64
    aget v2, p2, v7

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 66
    return-void
.end method

.method public static setProgressColored(II[ILandroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 10
    .parameter "progress"
    .parameter "max"
    .parameter "goodWarnProgressId"
    .parameter "views"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 21
    const-wide/high16 v2, 0x3ff0

    invoke-static {p4}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v4

    sub-double v0, v2, v4

    .line 22
    .local v0, warningLimit:D
    int-to-double v2, p0

    const-wide v4, 0x3fd51eb851eb851fL

    int-to-double v6, p1

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 24
    aget v2, p2, v8

    invoke-virtual {p3, v2, p1, p0, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 25
    aget v2, p2, v8

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 27
    aget v2, p2, v9

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 28
    aget v2, p2, v9

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 51
    :goto_0
    return-void

    .line 29
    :cond_0
    int-to-double v2, p0

    int-to-double v4, p1

    mul-double/2addr v4, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 31
    aget v2, p2, v8

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 32
    aget v2, p2, v8

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 34
    aget v2, p2, v9

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 35
    aget v2, p2, v9

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 36
    :cond_1
    if-lez p0, :cond_2

    .line 38
    aget v2, p2, v8

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 39
    aget v2, p2, v8

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 41
    aget v2, p2, v9

    invoke-virtual {p3, v2, p1, p0, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 42
    aget v2, p2, v9

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 45
    :cond_2
    aget v2, p2, v8

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 46
    aget v2, p2, v8

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 48
    aget v2, p2, v9

    invoke-virtual {p3, v2, p1, v8, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 49
    aget v2, p2, v9

    const-string v3, "setSecondaryProgress"

    invoke-virtual {p3, v2, v3, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method
