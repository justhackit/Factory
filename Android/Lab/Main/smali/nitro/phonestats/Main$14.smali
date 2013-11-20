.class Lnitro/phonestats/Main$14;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$mFlingDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lnitro/phonestats/Main;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/Main$14;->this$0:Lnitro/phonestats/Main;

    iput-object p2, p0, Lnitro/phonestats/Main$14;->val$mFlingDetector:Landroid/view/GestureDetector;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 941
    iget-object v0, p0, Lnitro/phonestats/Main$14;->val$mFlingDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 942
    const/4 v0, 0x1

    return v0
.end method
