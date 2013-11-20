.class Lnitro/phonestats/settings/ValueSeekBar$1;
.super Ljava/lang/Object;
.source "ValueSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/ValueSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/ValueSeekBar;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/ValueSeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 159
    iget-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    invoke-virtual {v1}, Lnitro/phonestats/settings/ValueSeekBar;->getValue()I

    move-result v0

    .line 161
    .local v0, value:I
    iget-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    #getter for: Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;
    invoke-static {v1}, Lnitro/phonestats/settings/ValueSeekBar;->access$0(Lnitro/phonestats/settings/ValueSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    #getter for: Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;
    invoke-static {v3}, Lnitro/phonestats/settings/ValueSeekBar;->access$1(Lnitro/phonestats/settings/ValueSeekBar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    #getter for: Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;
    invoke-static {v1}, Lnitro/phonestats/settings/ValueSeekBar;->access$2(Lnitro/phonestats/settings/ValueSeekBar;)Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar$1;->this$0:Lnitro/phonestats/settings/ValueSeekBar;

    #getter for: Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;
    invoke-static {v1}, Lnitro/phonestats/settings/ValueSeekBar;->access$2(Lnitro/phonestats/settings/ValueSeekBar;)Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;->onValueChange(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 172
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 177
    return-void
.end method
