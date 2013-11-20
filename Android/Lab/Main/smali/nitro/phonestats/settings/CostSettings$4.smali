.class Lnitro/phonestats/settings/CostSettings$4;
.super Ljava/lang/Object;
.source "CostSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/CostSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/CostSettings;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/CostSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/CostSettings$4;->this$0:Lnitro/phonestats/settings/CostSettings;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings$4;->this$0:Lnitro/phonestats/settings/CostSettings;

    #getter for: Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;
    invoke-static {v0}, Lnitro/phonestats/settings/CostSettings;->access$2(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings$4;->this$0:Lnitro/phonestats/settings/CostSettings;

    #getter for: Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;
    invoke-static {v0}, Lnitro/phonestats/settings/CostSettings;->access$2(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
