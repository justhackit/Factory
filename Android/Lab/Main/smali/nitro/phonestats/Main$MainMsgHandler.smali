.class final Lnitro/phonestats/Main$MainMsgHandler;
.super Landroid/os/Handler;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/Main;


# direct methods
.method private constructor <init>(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnitro/phonestats/Main;Lnitro/phonestats/Main$MainMsgHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lnitro/phonestats/Main$MainMsgHandler;-><init>(Lnitro/phonestats/Main;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 129
    const-string v2, "errorMessage"

    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v1, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lnitro/phonestats/Main;->access$0(Lnitro/phonestats/Main;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    const-string v2, "Error"

    .line 130
    invoke-static {v1, v2, v0, v5, v6}, Lnitro/phonestats/core/helper/NitroUtils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 144
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    iget-object v1, v1, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 137
    const-string v1, "PREFERENCE_CHANGED HANDLER"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lnitro/phonestats/Main;->access$0(Lnitro/phonestats/Main;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    const v3, 0x7f070068

    invoke-virtual {v2, v3}, Lnitro/phonestats/Main;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/Main$MainMsgHandler;->this$0:Lnitro/phonestats/Main;

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Lnitro/phonestats/Main;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v6}, Lnitro/phonestats/core/helper/NitroUtils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
