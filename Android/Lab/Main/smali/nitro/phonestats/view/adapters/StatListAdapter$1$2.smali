.class Lnitro/phonestats/view/adapters/StatListAdapter$1$2;
.super Ljava/lang/Object;
.source "StatListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/StatListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/StatListAdapter$1;

.field private final synthetic val$data:Lnitro/phonestats/core/stat/Stat;

.field private final synthetic val$qa:Lnitro/phonestats/view/quickaction/QuickAction;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/StatListAdapter$1;Lnitro/phonestats/core/stat/Stat;Lnitro/phonestats/view/quickaction/QuickAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$1;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->val$data:Lnitro/phonestats/core/stat/Stat;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->val$qa:Lnitro/phonestats/view/quickaction/QuickAction;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 222
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->val$data:Lnitro/phonestats/core/stat/Stat;

    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->val$data:Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v0}, Lnitro/phonestats/core/stat/Stat;->isInFavories()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lnitro/phonestats/core/stat/Stat;->setInFavories(Z)V

    .line 223
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$1;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v0}, Lnitro/phonestats/view/adapters/StatListAdapter$1;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter$1;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v0

    #calls: Lnitro/phonestats/view/adapters/StatListAdapter;->refreshDisplayedData()V
    invoke-static {v0}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$5(Lnitro/phonestats/view/adapters/StatListAdapter;)V

    .line 224
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;->val$qa:Lnitro/phonestats/view/quickaction/QuickAction;

    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/QuickAction;->dismiss()V

    .line 225
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
