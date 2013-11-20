.class Lnitro/phonestats/view/TrafficView$1;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/TrafficView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/TrafficView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/TrafficView$1;->this$0:Lnitro/phonestats/view/TrafficView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$1;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v0}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnitro/phonestats/view/TrafficView$1;->this$0:Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v2}, Lnitro/phonestats/view/TrafficView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lnitro/phonestats/activities/AppList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
