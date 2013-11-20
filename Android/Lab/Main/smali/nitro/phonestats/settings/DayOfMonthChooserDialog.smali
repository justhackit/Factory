.class public Lnitro/phonestats/settings/DayOfMonthChooserDialog;
.super Landroid/app/AlertDialog;
.source "DayOfMonthChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnitro/phonestats/settings/NumberPicker$OnChangedListener;)V
    .locals 5
    .parameter "context"
    .parameter "day"
    .parameter "callback"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07013d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->setView(Landroid/view/View;)V

    .line 40
    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/settings/NumberPicker;

    iput-object v2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    .line 41
    iget-object v2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lnitro/phonestats/settings/NumberPicker;->setSpeed(J)V

    .line 42
    iget-object v2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    const/4 v3, 0x1

    const/16 v4, 0x1f

    invoke-virtual {v2, v3, v4}, Lnitro/phonestats/settings/NumberPicker;->setRange(II)V

    .line 43
    iget-object v2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v2, p2}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 44
    iget-object v2, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    new-instance v3, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;

    invoke-direct {v3, p0, p3}, Lnitro/phonestats/settings/DayOfMonthChooserDialog$1;-><init>(Lnitro/phonestats/settings/DayOfMonthChooserDialog;Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V

    invoke-virtual {v2, v3}, Lnitro/phonestats/settings/NumberPicker;->setOnChangeListener(Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/DayOfMonthChooserDialog;)Lnitro/phonestats/settings/NumberPicker;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    return-object v0
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/NumberPicker;->clearFocus()V

    .line 64
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 1
    .parameter "day"

    .prologue
    .line 79
    iget-object v0, p0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->mDayOfMonth:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 80
    return-void
.end method
