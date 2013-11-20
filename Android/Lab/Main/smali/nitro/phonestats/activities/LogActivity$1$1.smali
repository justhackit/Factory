.class Lnitro/phonestats/activities/LogActivity$1$1;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/activities/LogActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/activities/LogActivity$1;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$1$1;->this$1:Lnitro/phonestats/activities/LogActivity$1;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$1$1;->this$1:Lnitro/phonestats/activities/LogActivity$1;

    #getter for: Lnitro/phonestats/activities/LogActivity$1;->this$0:Lnitro/phonestats/activities/LogActivity;
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity$1;->access$0(Lnitro/phonestats/activities/LogActivity$1;)Lnitro/phonestats/activities/LogActivity;

    move-result-object v0

    #getter for: Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity;->access$0(Lnitro/phonestats/activities/LogActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/adapters/LogViewAdapter;

    .line 52
    iget-object v1, p0, Lnitro/phonestats/activities/LogActivity$1$1;->this$1:Lnitro/phonestats/activities/LogActivity$1;

    #getter for: Lnitro/phonestats/activities/LogActivity$1;->this$0:Lnitro/phonestats/activities/LogActivity;
    invoke-static {v1}, Lnitro/phonestats/activities/LogActivity$1;->access$0(Lnitro/phonestats/activities/LogActivity$1;)Lnitro/phonestats/activities/LogActivity;

    move-result-object v1

    iget-object v1, v1, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->getAnalyzer()Lnitro/phonestats/core/IEventAnalyzer;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Lnitro/phonestats/core/IEventAnalyzer;->getEventlist()Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->setData(Ljava/util/List;)V

    .line 54
    return-void
.end method
