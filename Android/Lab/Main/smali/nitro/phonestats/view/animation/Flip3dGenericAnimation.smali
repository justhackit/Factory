.class public Lnitro/phonestats/view/animation/Flip3dGenericAnimation;
.super Landroid/view/animation/Animation;
.source "Flip3dGenericAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;
    }
.end annotation


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private forward:Z

.field private mOnViewsSwappedListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;

.field private view1:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private visibilitySwapped:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIZLnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;)V
    .locals 2
    .parameter "view1"
    .parameter "view2"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "forward"
    .parameter "onViewsSwappedListener"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 78
    iput-object p1, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->view1:Landroid/view/View;

    .line 79
    iput-object p2, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->view2:Landroid/view/View;

    .line 80
    int-to-float v0, p3

    iput v0, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerX:F

    .line 81
    int-to-float v0, p4

    iput v0, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerY:F

    .line 82
    iput-boolean p5, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->forward:Z

    .line 83
    iput-object p6, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->mOnViewsSwappedListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;

    .line 85
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->setDuration(J)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->setFillAfter(Z)V

    .line 87
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v9, 0x0

    const-wide v6, 0x400921fb54442d18L

    .line 110
    float-to-double v4, p1

    mul-double v2, v6, v4

    .line 111
    .local v2, radians:D
    const-wide v4, 0x4066800000000000L

    mul-double/2addr v4, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 118
    .local v0, degrees:F
    const/high16 v4, 0x3f00

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 119
    const/high16 v4, 0x4334

    sub-float/2addr v0, v4

    .line 121
    iget-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->visibilitySwapped:Z

    if-nez v4, :cond_0

    .line 122
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->mOnViewsSwappedListener:Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;

    iget-object v5, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->view1:Landroid/view/View;

    iget-object v6, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->view2:Landroid/view/View;

    iget-boolean v7, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->forward:Z

    invoke-interface {v4, v5, v6, v7}, Lnitro/phonestats/view/animation/Flip3dGenericAnimation$OnViewsSwappedListener;->onViewsSwapped(Landroid/view/View;Landroid/view/View;Z)V

    .line 123
    const/4 v4, 0x1

    iput-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->visibilitySwapped:Z

    .line 127
    :cond_0
    iget-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->forward:Z

    if-nez v4, :cond_1

    .line 128
    neg-float v0, v0

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 132
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 133
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    const-wide v5, 0x4073600000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v9, v9, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 134
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 135
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 138
    iget v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerX:F

    neg-float v4, v4

    iget v5, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerY:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 139
    iget v4, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerX:F

    iget v5, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->centerY:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 103
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->camera:Landroid/graphics/Camera;

    .line 104
    return-void
.end method

.method public setBackward()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->forward:Z

    .line 96
    return-void
.end method

.method public setForward()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/view/animation/Flip3dGenericAnimation;->forward:Z

    .line 92
    return-void
.end method
