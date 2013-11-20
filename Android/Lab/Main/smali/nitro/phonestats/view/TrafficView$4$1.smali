.class Lnitro/phonestats/view/TrafficView$4$1;
.super Ljava/lang/Object;
.source "TrafficView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/TrafficView$4;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/TrafficView$4;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/TrafficView$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/TrafficView$4$1;->this$1:Lnitro/phonestats/view/TrafficView$4;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lnitro/phonestats/view/TrafficView$4$1;->this$1:Lnitro/phonestats/view/TrafficView$4;

    #getter for: Lnitro/phonestats/view/TrafficView$4;->this$0:Lnitro/phonestats/view/TrafficView;
    invoke-static {v0}, Lnitro/phonestats/view/TrafficView$4;->access$0(Lnitro/phonestats/view/TrafficView$4;)Lnitro/phonestats/view/TrafficView;

    move-result-object v0

    #getter for: Lnitro/phonestats/view/TrafficView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/TrafficView;->access$4(Lnitro/phonestats/view/TrafficView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 213
    return-void
.end method
