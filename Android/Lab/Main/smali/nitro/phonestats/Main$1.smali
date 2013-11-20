.class Lnitro/phonestats/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/Main;


# direct methods
.method constructor <init>(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/Main$1;->this$0:Lnitro/phonestats/Main;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v0, p0, Lnitro/phonestats/Main$1;->this$0:Lnitro/phonestats/Main;

    #calls: Lnitro/phonestats/Main;->resumeActivity()V
    invoke-static {v0}, Lnitro/phonestats/Main;->access$1(Lnitro/phonestats/Main;)V

    .line 256
    return-void
.end method
