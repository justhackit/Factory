.class public Lnitro/phonestats/settings/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lnitro/phonestats/settings/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0a0089

    invoke-virtual {p0}, Lnitro/phonestats/settings/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPickerButton;->mNumberPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/NumberPicker;->cancelIncrement()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const v0, 0x7f0a008b

    invoke-virtual {p0}, Lnitro/phonestats/settings/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPickerButton;->mNumberPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPickerButton;->cancelLongpress()V

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 64
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPickerButton;->cancelLongpress()V

    .line 67
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lnitro/phonestats/settings/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lnitro/phonestats/settings/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lnitro/phonestats/settings/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 47
    iput-object p1, p0, Lnitro/phonestats/settings/NumberPickerButton;->mNumberPicker:Lnitro/phonestats/settings/NumberPicker;

    .line 48
    return-void
.end method
