.class Lnitro/phonestats/view/AboutDialogFactory$1;
.super Ljava/lang/Object;
.source "AboutDialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/view/AboutDialogFactory;->createAboutDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/view/AboutDialogFactory$1;->val$ctx:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnitro/phonestats/view/AboutDialogFactory$1;->val$ctx:Landroid/content/Context;

    const-class v2, Lnitro/phonestats/activities/PremiumAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/view/AboutDialogFactory$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
