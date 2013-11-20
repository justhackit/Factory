.class Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;
.super Ljava/lang/Object;
.source "ExcludeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnitro/phonestats/view/adapters/ExcludeListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    iput p2, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;->val$position:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lnitro/phonestats/view/adapters/ExcludeListAdapter$1;->this$0:Lnitro/phonestats/view/adapters/ExcludeListAdapter;

    invoke-virtual {v0}, Lnitro/phonestats/view/adapters/ExcludeListAdapter;->notifyDataSetChanged()V

    .line 90
    return-void
.end method
