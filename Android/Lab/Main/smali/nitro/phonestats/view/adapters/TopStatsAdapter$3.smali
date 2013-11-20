.class Lnitro/phonestats/view/adapters/TopStatsAdapter$3;
.super Ljava/lang/Object;
.source "TopStatsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/TopStatsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

.field private final synthetic val$createUri:Landroid/net/Uri;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->val$createUri:Landroid/net/Uri;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 214
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->val$phone:Ljava/lang/String;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v2, v2, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->getContactUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 215
    .local v0, mContactUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v1, v1, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->showQuickContact(Landroid/view/View;Landroid/net/Uri;Landroid/content/Context;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v1, v1, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$3;->val$createUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->showOrCreateContact(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method
