.class Lnitro/phonestats/settings/CostSettings$1;
.super Ljava/lang/Object;
.source "CostSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lnitro/phonestats/settings/CostSettings$1;->this$0:Lnitro/phonestats/settings/CostSettings;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings$1;->this$0:Lnitro/phonestats/settings/CostSettings;

    invoke-virtual {v0}, Lnitro/phonestats/settings/CostSettings;->finish()V

    .line 56
    return-void
.end method
