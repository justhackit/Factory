.class Lnitro/phonestats/Main$13;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->registerGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/Main;


# direct methods
.method constructor <init>(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/Main$13;->this$0:Lnitro/phonestats/Main;

    .line 912
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x43fa

    const/high16 v4, 0x42a0

    .line 918
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 932
    :goto_0
    return v0

    .line 921
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 922
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 924
    iget-object v1, p0, Lnitro/phonestats/Main$13;->this$0:Lnitro/phonestats/Main;

    #calls: Lnitro/phonestats/Main;->flingRight()V
    invoke-static {v1}, Lnitro/phonestats/Main;->access$8(Lnitro/phonestats/Main;)V

    goto :goto_0

    .line 926
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 927
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 929
    iget-object v1, p0, Lnitro/phonestats/Main$13;->this$0:Lnitro/phonestats/Main;

    #calls: Lnitro/phonestats/Main;->flingLeft()V
    invoke-static {v1}, Lnitro/phonestats/Main;->access$9(Lnitro/phonestats/Main;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 932
    goto :goto_0
.end method
