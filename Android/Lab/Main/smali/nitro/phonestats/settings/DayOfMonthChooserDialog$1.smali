.class Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;
.super Ljava/lang/Object;
.source "DayOfMonthChooserDialog.java"

# interfaces
.implements Lnitro/phonestats/settings/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/DayOfMonthChooserDialog;-><init>(Landroid/content/Context;ILnitro/phonestats/settings/NumberPicker$OnChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/DayOfMonthChooserDialog;

.field private final synthetic val$callback:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/DayOfMonthChooserDialog;Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->this$0:Lnitro/phonestats/settings/DayOfMonthChooserDialog;

    iput-object p2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->val$callback:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lnitro/phonestats/settings/NumberPicker;II)V
    .locals 6
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 50
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->this$0:Lnitro/phonestats/settings/DayOfMonthChooserDialog;

    iget-object v1, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->this$0:Lnitro/phonestats/settings/DayOfMonthChooserDialog;

    invoke-virtual {v1}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07013e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 51
    iget-object v5, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->this$0:Lnitro/phonestats/settings/DayOfMonthChooserDialog;

    #getter for: Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;
    invoke-static {v5}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->access$0(Lnitro/phonestats/settings/DayOfMonthChooserDialog;)Lnitro/phonestats/settings/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->val$callback:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;->val$callback:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lnitro/phonestats/settings/NumberPicker$OnChangedListener;->onChanged(Lnitro/phonestats/settings/NumberPicker;II)V

    .line 55
    :cond_0
    return-void
.end method
