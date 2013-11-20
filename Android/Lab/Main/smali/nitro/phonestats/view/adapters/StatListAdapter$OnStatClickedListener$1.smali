.class Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;
.super Ljava/lang/Object;
.source "StatListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnitro/phonestats/activities/PremiumAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener$1;->this$1:Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->this$0:Lnitro/phonestats/view/adapters/StatListAdapter;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter$OnStatClickedListener;)Lnitro/phonestats/view/adapters/StatListAdapter;

    move-result-object v1

    #getter for: Lnitro/phonestats/view/adapters/StatListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->access$0(Lnitro/phonestats/view/adapters/StatListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method
