.class Lnitro/phonestats/view/OverviewView$4;
.super Ljava/lang/Object;
.source "OverviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lnitro/phonestats/view/OverviewView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/OverviewView$4;->this$0:Lnitro/phonestats/view/OverviewView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView$4;->this$0:Lnitro/phonestats/view/OverviewView;

    invoke-virtual {v1}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/Main;

    .line 160
    .local v0, app:Lnitro/phonestats/Main;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnitro/phonestats/Main;->showView(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0           #app:Lnitro/phonestats/Main;
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    goto :goto_0
.end method
