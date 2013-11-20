.class Lnitro/phonestats/settings/Prefs$25;
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

.field private final synthetic val$interfacesCheck:Landroid/widget/CheckBox;

.field private final synthetic val$standartCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$25;->this$0:Lnitro/phonestats/settings/Prefs;

    iput-object p2, p0, Lnitro/phonestats/settings/Prefs$25;->val$standartCheck:Landroid/widget/CheckBox;

    iput-object p3, p0, Lnitro/phonestats/settings/Prefs$25;->val$alert:Landroid/app/AlertDialog;

    iput-object p4, p0, Lnitro/phonestats/settings/Prefs$25;->val$interfacesCheck:Landroid/widget/CheckBox;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "paramCompoundButton"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 565
    if-nez p2, :cond_0

    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$25;->val$standartCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$25;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
    :goto_0
    if-eqz p2, :cond_1

    .line 571
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$25;->val$interfacesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 575
    :goto_1
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$25;->val$alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs$25;->val$interfacesCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method
