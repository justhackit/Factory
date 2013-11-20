.class public Lnitro/phonestats/view/MultiProgressBar;
.super Landroid/widget/ProgressBar;
.source "MultiProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;,
        Lnitro/phonestats/view/MultiProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mForthProgress:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mProgress:I

.field private mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

.field private mSecondaryProgress:I

.field private mThirdProgress:I

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/view/MultiProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    .line 110
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    .line 111
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    .line 112
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mUiThreadId:J

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    .line 110
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    .line 111
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    .line 112
    iput v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mUiThreadId:J

    .line 133
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/MultiProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/MultiProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$1(Lnitro/phonestats/view/MultiProgressBar;Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lnitro/phonestats/view/MultiProgressBar;->mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v5

    if-lez v5, :cond_2

    int-to-float v5, p2

    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 163
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 164
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "##Updating: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 166
    const/4 v3, 0x0

    .line 168
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 169
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 173
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 179
    .end local v2           #level:I
    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 180
    invoke-virtual {p0, v4, p3}, Lnitro/phonestats/view/MultiProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    .line 162
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 173
    goto :goto_1

    .line 175
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    const-string v5, "##Drawable null"

    invoke-static {v5}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 162
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/view/MultiProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 194
    iget-object v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

    .line 196
    .local v0, r:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mRefreshProgressRunnable:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

    .line 197
    invoke-virtual {v0, p1, p2, p3}, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 202
    :goto_1
    invoke-virtual {p0, v0}, Lnitro/phonestats/view/MultiProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #r:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    :cond_1
    :try_start_2
    new-instance v0, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;-><init>(Lnitro/phonestats/view/MultiProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lnitro/phonestats/view/MultiProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getForthProgress()I
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThirdProgress()I
    .locals 1

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 185
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 435
    move-object v0, p1

    check-cast v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;

    .line 436
    .local v0, ss:Lnitro/phonestats/view/MultiProgressBar$SavedState;
    invoke-virtual {v0}, Lnitro/phonestats/view/MultiProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    iget v1, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(I)V

    .line 439
    iget v1, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/MultiProgressBar;->setSecondaryProgress(I)V

    .line 440
    iget v1, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->thridProgress:I

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/MultiProgressBar;->setThirdProgress(I)V

    .line 441
    iget v1, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->forthProgress:I

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/MultiProgressBar;->setForthProgress(I)V

    .line 442
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 422
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 423
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;

    invoke-direct {v0, v1}, Lnitro/phonestats/view/MultiProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 425
    .local v0, ss:Lnitro/phonestats/view/MultiProgressBar$SavedState;
    iget v2, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    iput v2, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->progress:I

    .line 426
    iget v2, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->secondaryProgress:I

    .line 427
    iget v2, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    iput v2, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->thridProgress:I

    .line 428
    iget v2, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I

    iput v2, v0, Lnitro/phonestats/view/MultiProgressBar$SavedState;->forthProgress:I

    .line 430
    return-object v0
.end method

.method public declared-synchronized setForthProgress(I)V
    .locals 3
    .parameter "forthProgress"

    .prologue
    .line 303
    monitor-enter p0

    if-gez p1, :cond_0

    .line 304
    const/4 p1, 0x0

    .line 307
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result p1

    .line 311
    :cond_1
    iput p1, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I

    .line 312
    const v0, 0x7f0a00fd

    iget v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mForthProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/view/MultiProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 219
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnitro/phonestats/view/MultiProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 223
    monitor-enter p0

    if-gez p1, :cond_0

    .line 224
    const/4 p1, 0x0

    .line 227
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result p1

    .line 231
    :cond_1
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 232
    iput p1, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    .line 233
    const v0, 0x102000d

    iget v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lnitro/phonestats/view/MultiProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_2
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"

    .prologue
    .line 251
    monitor-enter p0

    if-gez p1, :cond_0

    .line 252
    const/4 p1, 0x0

    .line 255
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result p1

    .line 259
    :cond_1
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 260
    iput p1, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    .line 261
    const v0, 0x102000f

    iget v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/view/MultiProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_2
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setThirdProgress(I)V
    .locals 3
    .parameter "thirdProgress"

    .prologue
    .line 277
    monitor-enter p0

    if-gez p1, :cond_0

    .line 278
    const/4 p1, 0x0

    .line 281
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lnitro/phonestats/view/MultiProgressBar;->getMax()I

    move-result p1

    .line 285
    :cond_1
    iget v0, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    if-eq p1, v0, :cond_2

    .line 286
    iput p1, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    .line 287
    const v0, 0x7f0a00fc

    iget v1, p0, Lnitro/phonestats/view/MultiProgressBar;->mThirdProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/view/MultiProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_2
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
