.class Lnitro/phonestats/settings/ExcludeTimesList$4;
.super Ljava/lang/Object;
.source "ExcludeTimesList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/ExcludeTimesList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ExcludeTimesList;

.field private final synthetic val$button:Landroid/widget/Button;

.field private final synthetic val$endtimeSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ExcludeTimesList;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->this$0:Lnitro/phonestats/settings/ExcludeTimesList;

    iput-object p2, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->val$endtimeSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->val$button:Landroid/widget/Button;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->val$endtimeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    .line 198
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->val$button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/ExcludeTimesList$4;->val$button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
