.class Lnitro/phonestats/view/OverviewView$1;
.super Landroid/os/Handler;
.source "OverviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/OverviewView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/OverviewView;

.field private final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/OverviewView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/OverviewView$1;->this$0:Lnitro/phonestats/view/OverviewView;

    iput-object p2, p0, Lnitro/phonestats/view/OverviewView$1;->val$parent:Landroid/view/View;

    .line 83
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/OverviewView$1;)Lnitro/phonestats/view/OverviewView;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lnitro/phonestats/view/OverviewView$1;->this$0:Lnitro/phonestats/view/OverviewView;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lnitro/phonestats/view/OverviewView$1;->val$parent:Landroid/view/View;

    new-instance v1, Lnitro/phonestats/view/OverviewView$1$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/view/OverviewView$1$1;-><init>(Lnitro/phonestats/view/OverviewView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_0
    return-void
.end method
