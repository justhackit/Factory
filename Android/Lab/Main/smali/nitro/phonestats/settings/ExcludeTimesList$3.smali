.class Lnitro/phonestats/settings/ExcludeTimesList$3;
.super Ljava/lang/Object;
.source "ExcludeTimesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeTimesList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeTimesList;

.field private final synthetic val$daySpinner:Landroid/widget/Spinner;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$endtimeSpinner:Landroid/widget/Spinner;

.field private final synthetic val$starttimeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/app/Dialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    iput-object p2, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$daySpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$starttimeSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$endtimeSpinner:Landroid/widget/Spinner;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    #getter for: Lnitro/phonestats/settings/ExcludeTimesList;->items:Ljava/util/ArrayList;
    invoke-static {v0}, Lnitro/phonestats/settings/ExcludeTimesList;->access$0(Lnitro/phonestats/settings/ExcludeTimesList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;

    iget-object v2, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$daySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$starttimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->val$endtimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lnitro/phonestats/core/ExcludedTimesManager$ExcludedTime;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$3;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    #getter for: Lnitro/phonestats/settings/ExcludeTimesList;->adapter:Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;
    invoke-static {v0}, Lnitro/phonestats/settings/ExcludeTimesList;->access$1(Lnitro/phonestats/settings/ExcludeTimesList;)Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/settings/ExcludeTimesList$ListAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
