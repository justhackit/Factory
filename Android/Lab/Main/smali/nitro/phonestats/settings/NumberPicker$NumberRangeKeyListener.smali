.class Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/NumberPicker;


# direct methods
.method private constructor <init>(Lnitro/phonestats/settings/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;->this$0:Lnitro/phonestats/settings/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnitro/phonestats/settings/NumberPicker;Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;-><init>(Lnitro/phonestats/settings/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 378
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 379
    .local v0, filtered:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 380
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 383
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, result:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 389
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #calls: Lnitro/phonestats/settings/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v3, v1}, Lnitro/phonestats/settings/NumberPicker;->access$13(Lnitro/phonestats/settings/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, val:I
    iget-object v3, p0, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;->this$0:Lnitro/phonestats/settings/NumberPicker;

    #getter for: Lnitro/phonestats/settings/NumberPicker;->mEnd:I
    invoke-static {v3}, Lnitro/phonestats/settings/NumberPicker;->access$14(Lnitro/phonestats/settings/NumberPicker;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 397
    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 399
    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lnitro/phonestats/settings/NumberPicker;->access$12()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x2

    return v0
.end method
