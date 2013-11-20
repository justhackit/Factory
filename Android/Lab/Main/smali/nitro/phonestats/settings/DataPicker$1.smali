.class Lnitro/phonestats/settings/DataPicker$1;
.super Ljava/lang/Object;
.source "DataPicker.java"

# interfaces
.implements Lnitro/phonestats/settings/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/DataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/DataPicker;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/DataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lnitro/phonestats/settings/NumberPicker;II)V
    .locals 6
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 61
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    #getter for: Lnitro/phonestats/settings/DataPicker;->mBytes:J
    invoke-static {v0}, Lnitro/phonestats/settings/DataPicker;->access$0(Lnitro/phonestats/settings/DataPicker;)J

    move-result-wide v2

    .line 62
    .local v2, oldValue:J
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    #calls: Lnitro/phonestats/settings/DataPicker;->updateBytes()V
    invoke-static {v0}, Lnitro/phonestats/settings/DataPicker;->access$1(Lnitro/phonestats/settings/DataPicker;)V

    .line 63
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    #getter for: Lnitro/phonestats/settings/DataPicker;->mOnBytesChangedListener:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;
    invoke-static {v0}, Lnitro/phonestats/settings/DataPicker;->access$2(Lnitro/phonestats/settings/DataPicker;)Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    #getter for: Lnitro/phonestats/settings/DataPicker;->mOnBytesChangedListener:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;
    invoke-static {v0}, Lnitro/phonestats/settings/DataPicker;->access$2(Lnitro/phonestats/settings/DataPicker;)Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    iget-object v4, p0, Lnitro/phonestats/settings/DataPicker$1;->this$0:Lnitro/phonestats/settings/DataPicker;

    #getter for: Lnitro/phonestats/settings/DataPicker;->mBytes:J
    invoke-static {v4}, Lnitro/phonestats/settings/DataPicker;->access$0(Lnitro/phonestats/settings/DataPicker;)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;->onChanged(Lnitro/phonestats/settings/DataPicker;JJ)V

    .line 67
    :cond_0
    return-void
.end method
