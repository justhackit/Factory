.class Lnitro/phonestats/view/adapters/StatListAdapter$1$1;
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

.field private final synthetic val$infoBtn:Landroid/widget/ImageView;

.field private final synthetic val$qa:Lnitro/phonestats/view/quickaction/QuickAction;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/StatListAdapter$1;Lnitro/phonestats/view/quickaction/QuickAction;Lnitro/phonestats/core/stat/Stat;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$1;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$qa:Lnitro/phonestats/view/quickaction/QuickAction;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    iput-object p4, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$infoBtn:Landroid/widget/ImageView;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 204
    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$qa:Lnitro/phonestats/view/quickaction/QuickAction;

    invoke-virtual {v2}, Lnitro/phonestats/view/quickaction/QuickAction;->dismiss()V

    .line 205
    new-instance v1, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-direct {v1}, Lnitro/phonestats/view/quickaction/ActionItem;-><init>()V

    .line 206
    .local v1, infoText:Lnitro/phonestats/view/quickaction/ActionItem;
    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$1;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/StatListAdapter$1;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter$1;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v2

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->getDescriptionResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/view/quickaction/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 207
    new-instance v0, Lnitro/phonestats/view/quickaction/QuickAction;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;->val$infoBtn:Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Lnitro/phonestats/view/quickaction/QuickAction;-><init>(Landroid/view/View;)V

    .line 208
    .local v0, infoQa:Lnitro/phonestats/view/quickaction/QuickAction;
    invoke-virtual {v0, v1}, Lnitro/phonestats/view/quickaction/QuickAction;->addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V

    .line 209
    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/QuickAction;->show()V

    .line 210
    return-void
.end method
