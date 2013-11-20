.class public Lnitro/phonestats/settings/DataPickerDialog;
.super Landroid/app/AlertDialog;
.source "DataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mDataPicker:Lnitro/phonestats/settings/DataPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "bytes"
    .parameter "callBack"
    .parameter "infoText"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/DataPickerDialog;->setView(Landroid/view/View;)V

    .line 43
    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnitro/phonestats/settings/DataPicker;

    iput-object v3, p0, Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;

    .line 44
    iget-object v3, p0, Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;

    invoke-virtual {v3, p2, p3, p4}, Lnitro/phonestats/settings/DataPicker;->init(JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;)V

    .line 46
    const/4 v3, -0x1

    const v4, 0x7f0700b4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lnitro/phonestats/settings/DataPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    const/4 v3, -0x2

    const v4, 0x7f0700b3

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnitro/phonestats/settings/DataPickerDialog$1;

    invoke-direct {v5, p0, p4, p2, p3}, Lnitro/phonestats/settings/DataPickerDialog$1;-><init>(Lnitro/phonestats/settings/DataPickerDialog;Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;J)V

    invoke-virtual {p0, v3, v4, v5}, Lnitro/phonestats/settings/DataPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    if-eqz p5, :cond_0

    .line 58
    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, infoTextView:Landroid/widget/TextView;
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .end local v1           #infoTextView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/DataPickerDialog;)Lnitro/phonestats/settings/DataPicker;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/DataPicker;->clearFocus()V

    .line 71
    return-void
.end method
