.class Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;
.super Ljava/lang/Object;
.source "ExcludeTimesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;->this$1:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    iput p2, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;->val$position:I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;->this$1:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    #getter for: Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->access$0(Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter$1;->this$1:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    invoke-virtual {v0}, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method
