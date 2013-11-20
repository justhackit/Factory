.class public Lnitro/phonestats/widget/WidgetProgressBar;
.super Landroid/widget/ProgressBar;
.source "WidgetProgressBar.java"


# static fields
.field private static final NORMAL_LIMIT:I = 0x28

.field private static final WARNIG_LIMIT:I = 0x14


# instance fields
.field private mAlarmProgress:Landroid/graphics/drawable/Drawable;

.field private mNormalProgress:Landroid/graphics/drawable/Drawable;

.field private mOverLimitProgress:Landroid/graphics/drawable/Drawable;

.field private mWarningProgress:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->initProgressDrawables()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->initProgressDrawables()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->initProgressDrawables()V

    .line 52
    return-void
.end method

.method private chooseProgressDrawable(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const v3, 0x102000d

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 83
    .local v0, progressBar:Landroid/graphics/drawable/LayerDrawable;
    const/16 v1, 0x28

    if-le p1, v1, :cond_0

    .line 84
    iget-object v1, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mNormalProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 85
    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProgressBar;->setSecondaryProgress(I)V

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_0
    const/16 v1, 0x14

    if-ge p1, v1, :cond_1

    .line 87
    iget-object v1, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mWarningProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 88
    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 89
    :cond_1
    if-lez p1, :cond_2

    .line 90
    iget-object v1, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mAlarmProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 91
    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 93
    :cond_2
    const v1, 0x102000f

    iget-object v2, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mOverLimitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 94
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/widget/WidgetProgressBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method private initProgressDrawables()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 55
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mNormalProgress:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mWarningProgress:Landroid/graphics/drawable/Drawable;

    .line 57
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mAlarmProgress:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mOverLimitProgress:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProgressBar;->mNormalProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lnitro/phonestats/widget/WidgetProgressBar;->initProgressDrawables()V

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lnitro/phonestats/widget/WidgetProgressBar;->chooseProgressDrawable(I)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
