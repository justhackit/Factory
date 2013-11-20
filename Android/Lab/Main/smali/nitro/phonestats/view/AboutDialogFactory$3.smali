.class Lnitro/phonestats/view/AboutDialogFactory$3;
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
    iput-object p1, p0, Lnitro/phonestats/view/AboutDialogFactory$3;->val$ctx:Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, goToMarket:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #goToMarket:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://nitroflash-apps.appspot.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .restart local v0       #goToMarket:Landroid/content/Intent;
    iget-object v1, p0, Lnitro/phonestats/view/AboutDialogFactory$3;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
