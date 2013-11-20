.class Lnitro/phonestats/view/StatView$1;
.super Landroid/os/Handler;
.source "StatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/StatView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$view$StatView$CurrentDisplay:[I


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/StatView;


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$view$StatView$CurrentDisplay()[I
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lnitro/phonestats/view/StatView$1;->$SWITCH_TABLE$nitro$phonestats$view$StatView$CurrentDisplay:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/view/StatView$CurrentDisplay;->values()[Lnitro/phonestats/view/StatView$CurrentDisplay;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/view/StatView$CurrentDisplay;->MONTHLY:Lnitro/phonestats/view/StatView$CurrentDisplay;

    invoke-virtual {v1}, Lnitro/phonestats/view/StatView$CurrentDisplay;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/view/StatView$CurrentDisplay;->TOTAL:Lnitro/phonestats/view/StatView$CurrentDisplay;

    invoke-virtual {v1}, Lnitro/phonestats/view/StatView$CurrentDisplay;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lnitro/phonestats/view/StatView$1;->$SWITCH_TABLE$nitro$phonestats$view$StatView$CurrentDisplay:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lnitro/phonestats/view/StatView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    invoke-static {}, Lnitro/phonestats/view/StatView$1;->$SWITCH_TABLE$nitro$phonestats$view$StatView$CurrentDisplay()[I

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;
    invoke-static {v1}, Lnitro/phonestats/view/StatView;->access$0(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/StatView$CurrentDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/view/StatView$CurrentDisplay;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    iget-object v0, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v2, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$1(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/StatView;->getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v1

    #calls: Lnitro/phonestats/view/StatView;->initStats(Ljava/util/List;)V
    invoke-static {v0, v1}, Lnitro/phonestats/view/StatView;->access$2(Lnitro/phonestats/view/StatView;Ljava/util/List;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    iget-object v2, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;
    invoke-static {v2}, Lnitro/phonestats/view/StatView;->access$1(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/StatView;->getTotalData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v1

    #calls: Lnitro/phonestats/view/StatView;->initStats(Ljava/util/List;)V
    invoke-static {v0, v1}, Lnitro/phonestats/view/StatView;->access$2(Lnitro/phonestats/view/StatView;Ljava/util/List;)V

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lnitro/phonestats/view/StatView$1;->this$0:Lnitro/phonestats/view/StatView;

    #getter for: Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;
    invoke-static {v0}, Lnitro/phonestats/view/StatView;->access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
