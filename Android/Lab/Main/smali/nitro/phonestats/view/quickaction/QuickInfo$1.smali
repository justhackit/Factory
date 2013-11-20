.class Lnitro/phonestats/view/quickaction/QuickInfo$1;
.super Ljava/lang/Object;
.source "QuickInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/quickaction/QuickInfo;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

.field private final synthetic val$infoText:Lnitro/phonestats/view/quickaction/ActionItem;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/quickaction/QuickInfo;Lnitro/phonestats/view/quickaction/ActionItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$1;->this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

    iput-object p2, p0, Lnitro/phonestats/view/quickaction/QuickInfo$1;->val$infoText:Lnitro/phonestats/view/quickaction/ActionItem;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    new-instance v0, Lnitro/phonestats/view/quickaction/QuickAction;

    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$1;->this$0:Lnitro/phonestats/view/quickaction/QuickInfo;

    invoke-direct {v0, v1}, Lnitro/phonestats/view/quickaction/QuickAction;-><init>(Landroid/view/View;)V

    .line 78
    .local v0, qa:Lnitro/phonestats/view/quickaction/QuickAction;
    iget-object v1, p0, Lnitro/phonestats/view/quickaction/QuickInfo$1;->val$infoText:Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-virtual {v0, v1}, Lnitro/phonestats/view/quickaction/QuickAction;->addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V

    .line 79
    invoke-virtual {v0}, Lnitro/phonestats/view/quickaction/QuickAction;->show()V

    .line 80
    return-void
.end method
