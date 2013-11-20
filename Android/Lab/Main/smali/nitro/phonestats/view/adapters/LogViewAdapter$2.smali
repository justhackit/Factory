.class Lnitro/phonestats/view/adapters/LogViewAdapter$2;
.super Ljava/lang/Object;
.source "LogViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/LogViewAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

.field private final synthetic val$createUri:Landroid/net/Uri;

.field private final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->val$createUri:Landroid/net/Uri;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 217
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->val$phone:Ljava/lang/String;

    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->getContactUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, mContactUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->showQuickContact(Landroid/view/View;Landroid/net/Uri;Landroid/content/Context;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$2;->val$createUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lnitro/phonestats/core/wrapper/EclairContactsWrapper;->showOrCreateContact(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method
