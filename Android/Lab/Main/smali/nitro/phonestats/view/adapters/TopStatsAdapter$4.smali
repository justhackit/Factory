.class Lnitro/phonestats/view/adapters/TopStatsAdapter$4;
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


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/TopStatsAdapter;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;->val$createUri:Landroid/net/Uri;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    iget-object v2, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;->val$createUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/view/adapters/TopStatsAdapter$4;->this$0:Lnitro/phonestats/view/adapters/TopStatsAdapter;

    iget-object v1, v1, Lnitro/phonestats/view/adapters/TopStatsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method
