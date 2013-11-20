.class Lnitro/phonestats/view/quickaction/QuickInfo$2;
.super Ljava/lang/Object;
.source "QuickInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/quickaction/QuickInfo;->setView(ILjava/util/List;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

.field private final synthetic val$additionalOnClickListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$item:Lnitro/phonestats/view/quickaction/AdvancedActionItem;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/quickaction/QuickInfo;Landroid/view/View$OnClickListener;Lnitro/phonestats/view/quickaction/AdvancedActionItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

    iput-object p2, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->val$additionalOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->val$item:Lnitro/phonestats/view/quickaction/AdvancedActionItem;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 94
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->val$additionalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->val$additionalOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    :cond_0
    new-instance v0, Lnitro/phonestats/view/quickaction/QuickAction;

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

    invoke-direct {v0, v1}, Lnitro/phonestats/view/quickaction/QuickAction;-><init>(Landroid/view/View;)V

    .line 97
    .local v0, qa:Lnitro/phonestats/view/quickaction/QuickAction;
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$2;->val$item:Lnitro/phonestats/view/quickaction/AdvancedActionItem;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/quickaction/QuickAction;->addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V

    .line 98
    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/QuickAction;->show()V

    .line 99
    return-void
.end method
