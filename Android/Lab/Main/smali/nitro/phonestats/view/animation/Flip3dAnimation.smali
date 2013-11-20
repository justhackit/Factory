.class public Lnitro/phonestats/view/animation/Flip3dAnimation;
.super Landroid/view/animation/Animation;
.source "Flip3dAnimation.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private forward:Z

.field private view1:Landroid/view/View;

.field private view2:Landroid/view/View;

.field private visibilitySwapped:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIZ)V
    .locals 2
    .parameter "view1"
    .parameter "view2"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "forward"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 71
    iput-object p1, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view1:Landroid/view/View;

    .line 72
    iput-object p2, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view2:Landroid/view/View;

    .line 73
    int-to-float v0, p3

    iput v0, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerX:F

    .line 74
    int-to-float v0, p4

    iput v0, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerY:F

    .line 75
    iput-boolean p5, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->forward:Z

    .line 77
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lnitro/phonestats/view/animation/Flip3dAnimation;->setDuration(J)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/animation/Flip3dAnimation;->setFillAfter(Z)V

    .line 79
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/animation/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide v6, 0x400921fb54442d18L

    .line 102
    float-to-double v4, p1

    mul-double v2, v6, v4

    .line 103
    .local v2, radians:D
    const-wide v4, 0x4066800000000000L

    mul-double/2addr v4, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 110
    .local v0, degrees:F
    const/high16 v4, 0x3f00

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 111
    const/high16 v4, 0x4334

    sub-float/2addr v0, v4

    .line 113
    iget-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->visibilitySwapped:Z

    if-nez v4, :cond_0

    .line 114
    iget-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->forward:Z

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view1:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view2:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->visibilitySwapped:Z

    .line 126
    :cond_0
    iget-boolean v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->forward:Z

    if-nez v4, :cond_1

    .line 127
    neg-float v0, v0

    .line 129
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 131
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 132
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    const-wide v5, 0x4073600000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v9, v9, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 133
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 134
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 135
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 137
    iget v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerX:F

    neg-float v4, v4

    iget v5, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerY:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 138
    iget v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerX:F

    iget v5, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->centerY:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    return-void

    .line 118
    .end local v1           #matrix:Landroid/graphics/Matrix;
    :cond_2
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view2:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->view1:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 95
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->camera:Landroid/graphics/Camera;

    .line 96
    return-void
.end method

.method public setBackward()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->forward:Z

    .line 88
    return-void
.end method

.method public setForward()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/view/animation/Flip3dAnimation;->forward:Z

    .line 84
    return-void
.end method
