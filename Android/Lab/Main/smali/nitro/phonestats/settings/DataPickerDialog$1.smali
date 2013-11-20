.class Lnitro/phonestats/settings/DataPickerDialog$1;
.super Ljava/lang/Object;
.source "DataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/DataPickerDialog;-><init>(Landroid/content/Context;JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/DataPickerDialog;

.field private final synthetic val$bytes:J

.field private final synthetic val$callBack:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/DataPickerDialog;Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->this$0:Lnitro/phonestats/settings/DataPickerDialog;

    iput-object p2, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$callBack:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    iput-wide p3, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$bytes:J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 50
    iget-object v0, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$callBack:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    iget-object v1, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->this$0:Lnitro/phonestats/settings/DataPickerDialog;

    #getter for: Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;
    invoke-static {v1}, Lnitro/phonestats/settings/DataPickerDialog;->access$0(Lnitro/phonestats/settings/DataPickerDialog;)Lnitro/phonestats/settings/DataPicker;

    move-result-object v1

    iget-object v2, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->this$0:Lnitro/phonestats/settings/DataPickerDialog;

    #getter for: Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;
    invoke-static {v2}, Lnitro/phonestats/settings/DataPickerDialog;->access$0(Lnitro/phonestats/settings/DataPickerDialog;)Lnitro/phonestats/settings/DataPicker;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/settings/DataPicker;->getBytes()J

    move-result-wide v2

    iget-wide v4, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$bytes:J

    invoke-interface/range {v0 .. v5}, Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;->onChanged(Lnitro/phonestats/settings/DataPicker;JJ)V

    .line 51
    iget-object v0, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->this$0:Lnitro/phonestats/settings/DataPickerDialog;

    #getter for: Lnitro/phonestats/settings/DataPickerDialog;->mDataPicker:Lnitro/phonestats/settings/DataPicker;
    invoke-static {v0}, Lnitro/phonestats/settings/DataPickerDialog;->access$0(Lnitro/phonestats/settings/DataPickerDialog;)Lnitro/phonestats/settings/DataPicker;

    move-result-object v0

    iget-wide v1, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$bytes:J

    iget-object v3, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->val$callBack:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    invoke-virtual {v0, v1, v2, v3}, Lnitro/phonestats/settings/DataPicker;->init(JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;)V

    .line 53
    iget-object v0, p0, Lnitro/phonestats/settings/DataPickerDialog$1;->this$0:Lnitro/phonestats/settings/DataPickerDialog;

    invoke-virtual {v0, p1, p2}, Lnitro/phonestats/settings/DataPickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 54
    return-void
.end method
