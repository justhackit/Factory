.class Lnitro/phonestats/core/helper/NitroUtils$1;
.super Ljava/lang/Object;
.source "NitroUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/helper/NitroUtils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$exitApp:Z

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/helper/NitroUtils$1;->val$msg:Ljava/lang/String;

    iput-boolean p2, p0, Lnitro/phonestats/core/helper/NitroUtils$1;->val$exitApp:Z

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 216
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->access$0()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/core/helper/NitroUtils$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    iget-boolean v0, p0, Lnitro/phonestats/core/helper/NitroUtils$1;->val$exitApp:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 220
    :cond_0
    return-void
.end method
