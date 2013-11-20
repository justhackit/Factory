.class Lnitro/phonestats/activities/LogActivity$1;
.super Landroid/os/Handler;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/activities/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/activities/LogActivity;


# direct methods
.method constructor <init>(Lnitro/phonestats/activities/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/activities/LogActivity$1;->this$0:Lnitro/phonestats/activities/LogActivity;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/LogActivity$1;)Lnitro/phonestats/activities/LogActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$1;->this$0:Lnitro/phonestats/activities/LogActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity$1;->this$0:Lnitro/phonestats/activities/LogActivity;

    #getter for: Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lnitro/phonestats/activities/LogActivity;->access$0(Lnitro/phonestats/activities/LogActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lnitro/phonestats/activities/LogActivity$1$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/activities/LogActivity$1$1;-><init>(Lnitro/phonestats/activities/LogActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    return-void
.end method
