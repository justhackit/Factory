.class public Lnitro/phonestats/view/WarningProgressBar2;
.super Lnitro/phonestats/view/MultiProgressBar;
.source "WarningProgressBar2.java"


# static fields
.field public static final NORMAL_LIMIT:D = 0.33

.field private static WARNIG_LIMIT:D


# instance fields
.field private mProgress:I

.field private use_treshold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide v0, 0x3fc3333333333333L

    sput-wide v0, Lnitro/phonestats/view/WarningProgressBar2;->WARNIG_LIMIT:D

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lnitro/phonestats/view/MultiProgressBar;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->mProgress:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->use_treshold:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/view/MultiProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->mProgress:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->use_treshold:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/MultiProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->mProgress:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->use_treshold:Z

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnitro/phonestats/view/WarningProgressBar2;->use_treshold:Z

    if-eqz v0, :cond_3

    .line 61
    int-to-double v0, p1

    const-wide v2, 0x3fd51eb851eb851fL

    invoke-virtual {p0}, Lnitro/phonestats/view/WarningProgressBar2;->getMax()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 62
    invoke-super {p0, p1}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 63
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 64
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 65
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V

    .line 100
    :goto_0
    iput p1, p0, Lnitro/phonestats/view/WarningProgressBar2;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    int-to-double v0, p1

    :try_start_1
    sget-wide v2, Lnitro/phonestats/view/WarningProgressBar2;->WARNIG_LIMIT:D

    invoke-virtual {p0}, Lnitro/phonestats/view/WarningProgressBar2;->getMax()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 67
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 68
    invoke-super {p0, p1}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 69
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 70
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_1
    if-lez p1, :cond_2

    .line 72
    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 73
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 74
    invoke-super {p0, p1}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 75
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 78
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 79
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 80
    invoke-virtual {p0}, Lnitro/phonestats/view/WarningProgressBar2;->getMax()I

    move-result v0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V

    goto :goto_0

    .line 86
    :cond_3
    if-lez p1, :cond_4

    .line 87
    invoke-super {p0, p1}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 88
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 89
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 90
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V

    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 95
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 96
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 97
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setUseWarningThreshold(Z)V
    .locals 0
    .parameter "use"

    .prologue
    .line 115
    iput-boolean p1, p0, Lnitro/phonestats/view/WarningProgressBar2;->use_treshold:Z

    .line 116
    return-void
.end method

.method public setWarningThreshold(D)V
    .locals 2
    .parameter "normalLimit"

    .prologue
    .line 110
    const-wide/high16 v0, 0x3ff0

    sub-double/2addr v0, p1

    sput-wide v0, Lnitro/phonestats/view/WarningProgressBar2;->WARNIG_LIMIT:D

    .line 111
    return-void
.end method
