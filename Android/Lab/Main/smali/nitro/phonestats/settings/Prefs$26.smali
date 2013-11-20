.class Lnitro/phonestats/settings/Prefs$26;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->createResetDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;

.field private final synthetic val$alert:Landroid/app/AlertDialog;

.field private final synthetic val$dataCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$26;->this$0:Lnitro/phonestats/settings/Prefs;

    iput-object p2, p0, Lnitro/phonestats/settings/Prefs$26;->val$dataCheck:Landroid/widget/CheckBox;

    iput-object p3, p0, Lnitro/phonestats/settings/Prefs$26;->val$alert:Landroid/app/AlertDialog;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "paramCompoundButton"
    .parameter "isChecked"

    .prologue
    const/4 v1, -0x1

    .line 583
    if-nez p2, :cond_0

    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$26;->val$dataCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$26;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$26;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
