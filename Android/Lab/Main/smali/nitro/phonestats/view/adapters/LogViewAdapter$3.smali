.class Lnitro/phonestats/view/adapters/LogViewAdapter$3;
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


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/LogViewAdapter;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$3;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    iput-object p2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$3;->val$createUri:Landroid/net/Uri;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    iget-object v2, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$3;->val$createUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/view/adapters/LogViewAdapter$3;->this$0:Lnitro/phonestats/view/adapters/LogViewAdapter;

    #getter for: Lnitro/phonestats/view/adapters/LogViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/LogViewAdapter;->access$9(Lnitro/phonestats/view/adapters/LogViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
