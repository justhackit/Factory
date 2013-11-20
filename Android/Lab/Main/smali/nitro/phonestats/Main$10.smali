.class Lnitro/phonestats/Main$10;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/Main;->registerAnimationListener()V
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
    iput-object p1, p0, Lnitro/phonestats/Main$10;->this$0:Lnitro/phonestats/Main;

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 856
    iget-object v0, p0, Lnitro/phonestats/Main$10;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lnitro/phonestats/Main;->access$2(Lnitro/phonestats/Main;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/Main$10;->this$0:Lnitro/phonestats/Main;

    iget-object v2, p0, Lnitro/phonestats/Main$10;->this$0:Lnitro/phonestats/Main;

    #getter for: Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;
    invoke-static {v2}, Lnitro/phonestats/Main;->access$0(Lnitro/phonestats/Main;)Landroid/widget/ViewFlipper;

    move-result-object v2

    .line 857
    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 856
    #calls: Lnitro/phonestats/Main;->getTabBtnIdByIndex(I)I
    invoke-static {v1, v2}, Lnitro/phonestats/Main;->access$4(Lnitro/phonestats/Main;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 858
    const/4 v0, 0x0

    invoke-static {v0}, Lnitro/phonestats/Main;->access$7(Z)V

    .line 859
    const-string v0, "stopAnim"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 851
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 845
    return-void
.end method
