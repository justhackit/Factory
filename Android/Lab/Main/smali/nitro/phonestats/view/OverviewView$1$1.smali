.class Lnitro/phonestats/view/OverviewView$1$1;
.super Ljava/lang/Object;
.source "OverviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/OverviewView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/OverviewView$1;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/OverviewView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/OverviewView$1$1;->this$1:Lnitro/phonestats/view/OverviewView$1;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnitro/phonestats/view/OverviewView$1$1;->this$1:Lnitro/phonestats/view/OverviewView$1;

    #getter for: Lnitro/phonestats/view/OverviewView$1;->this$0:Lnitro/phonestats/view/OverviewView;
    invoke-static {v0}, Lnitro/phonestats/view/OverviewView$1;->access$0(Lnitro/phonestats/view/OverviewView$1;)Lnitro/phonestats/view/OverviewView;

    move-result-object v0

    #calls: Lnitro/phonestats/view/OverviewView;->refreshUI()V
    invoke-static {v0}, Lnitro/phonestats/view/OverviewView;->access$0(Lnitro/phonestats/view/OverviewView;)V

    .line 93
    return-void
.end method
