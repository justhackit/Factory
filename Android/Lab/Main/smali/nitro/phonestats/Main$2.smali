.class Lnitro/phonestats/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->resumeActivity()V
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
    iput-object p1, p0, Lnitro/phonestats/Main$2;->this$0:Lnitro/phonestats/Main;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lnitro/phonestats/Main$2;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lnitro/phonestats/Main;->access$2(Lnitro/phonestats/Main;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/Main$2;->this$0:Lnitro/phonestats/Main;

    iget-object v2, p0, Lnitro/phonestats/Main$2;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->whichView:I
    invoke-static {v2}, Lnitro/phonestats/Main;->access$3(Lnitro/phonestats/Main;)I

    move-result v2

    #calls: Lnitro/phonestats/Main;->getTabBtnIdByIndex(I)I
    invoke-static {v1, v2}, Lnitro/phonestats/Main;->access$4(Lnitro/phonestats/Main;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 285
    return-void
.end method
