.class Lnitro/phonestats/view/adapters/StatListAdapter$1;
.super Ljava/lang/Object;
.source "StatListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/StatListAdapter;->getStatView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

.field private final synthetic val$data:Lnitro/phonestats/core/stat/Stat;

.field private final synthetic val$infoBtn:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/StatListAdapter;Landroid/widget/ImageView;Lnitro/phonestats/core/stat/Stat;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$infoBtn:Landroid/widget/ImageView;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/adapters/StatListAdapter$1;)Lnitro/phonestats/view/adapters/StatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 196
    new-instance v1, Lnitro/phonestats/view/quickaction/QuickAction;

    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$infoBtn:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lnitro/phonestats/view/quickaction/QuickAction;-><init>(Landroid/view/View;)V

    .line 198
    .local v1, qa:Lnitro/phonestats/view/quickaction/QuickAction;
    new-instance v2, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-direct {v2}, Lnitro/phonestats/view/quickaction/ActionItem;-><init>()V

    .line 199
    .local v2, showInfo:Lnitro/phonestats/view/quickaction/ActionItem;
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070078

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 201
    new-instance v3, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    iget-object v5, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$infoBtn:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v1, v4, v5}, Lnitro/phonestats/view/adapters/StatListAdapter$1$1;-><init>(Lnitro/phonestats/view/adapters/StatListAdapter$1;Lnitro/phonestats/view/quickaction/QuickAction;Lnitro/phonestats/core/stat/Stat;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-direct {v0}, Lnitro/phonestats/view/quickaction/ActionItem;-><init>()V

    .line 214
    .local v0, favoriteToggle:Lnitro/phonestats/view/quickaction/ActionItem;
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    invoke-virtual {v3}, Lnitro/phonestats/core/stat/Stat;->isInFavories()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 219
    :goto_0
    new-instance v3, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;

    iget-object v4, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->val$data:Lnitro/phonestats/core/stat/Stat;

    invoke-direct {v3, p0, v4, v1}, Lnitro/phonestats/view/adapters/StatListAdapter$1$2;-><init>(Lnitro/phonestats/view/adapters/StatListAdapter$1;Lnitro/phonestats/core/stat/Stat;Lnitro/phonestats/view/quickaction/QuickAction;)V

    invoke-virtual {v0, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {v1, v2}, Lnitro/phonestats/view/quickaction/QuickAction;->addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V

    .line 229
    invoke-virtual {v1, v0}, Lnitro/phonestats/view/quickaction/QuickAction;->addActionItem(Lnitro/phonestats/view/quickaction/ActionItem;)V

    .line 230
    invoke-virtual {v1}, Lnitro/phonestats/view/quickaction/QuickAction;->show()V

    .line 231
    return-void

    .line 218
    :cond_0
    iget-object v3, p0, Lnitro/phonestats/view/adapters/StatListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnitro/phonestats/view/quickaction/ActionItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
