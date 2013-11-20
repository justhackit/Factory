.class Lnitro/phonestats/settings/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/NumberPicker;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mIncrement:Z
    invoke-static {v0}, Lnitro/phonestats/settings/NumberPicker;->access$0(Lnitro/phonestats/settings/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lnitro/phonestats/settings/NumberPicker;->access$1(Lnitro/phonestats/settings/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSlideUpInAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lnitro/phonestats/settings/NumberPicker;->access$2(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSlideUpOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lnitro/phonestats/settings/NumberPicker;->access$3(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;

    move-result-object v3

    #calls: Lnitro/phonestats/settings/NumberPicker;->changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    invoke-static {v0, v1, v2, v3}, Lnitro/phonestats/settings/NumberPicker;->access$4(Lnitro/phonestats/settings/NumberPicker;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 74
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lnitro/phonestats/settings/NumberPicker;->access$5(Lnitro/phonestats/settings/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lnitro/phonestats/settings/NumberPicker;->access$6(Lnitro/phonestats/settings/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mDecrement:Z
    invoke-static {v0}, Lnitro/phonestats/settings/NumberPicker;->access$7(Lnitro/phonestats/settings/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lnitro/phonestats/settings/NumberPicker;->access$1(Lnitro/phonestats/settings/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSlideDownInAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lnitro/phonestats/settings/NumberPicker;->access$8(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSlideDownOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lnitro/phonestats/settings/NumberPicker;->access$9(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;

    move-result-object v3

    #calls: Lnitro/phonestats/settings/NumberPicker;->changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    invoke-static {v0, v1, v2, v3}, Lnitro/phonestats/settings/NumberPicker;->access$4(Lnitro/phonestats/settings/NumberPicker;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 77
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lnitro/phonestats/settings/NumberPicker;->access$5(Lnitro/phonestats/settings/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker$2;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lnitro/phonestats/settings/NumberPicker;->access$6(Lnitro/phonestats/settings/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
