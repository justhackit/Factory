.class public Lnitro/phonestats/settings/ValueSeekBar;
.super Landroid/widget/RelativeLayout;
.source "ValueSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final SUPERSTATE:Ljava/lang/String; = "superState"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private label:Landroid/widget/TextView;

.field private listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

.field private onSeek:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

.field private postfix:Ljava/lang/String;

.field private seek:Landroid/widget/SeekBar;

.field private shift:I

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    .line 21
    iput-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;

    .line 22
    iput-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    .line 24
    iput-object v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;

    .line 154
    new-instance v0, Lnitro/phonestats/settings/ValueSeekBar$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/settings/ValueSeekBar$1;-><init>(Lnitro/phonestats/settings/ValueSeekBar;)V

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->onSeek:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 34
    invoke-direct {p0, v1}, Lnitro/phonestats/settings/ValueSeekBar;->initBar(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    .line 21
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    .line 24
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;

    .line 154
    new-instance v0, Lnitro/phonestats/settings/ValueSeekBar$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/settings/ValueSeekBar$1;-><init>(Lnitro/phonestats/settings/ValueSeekBar;)V

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->onSeek:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 41
    invoke-direct {p0, p2}, Lnitro/phonestats/settings/ValueSeekBar;->initBar(Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    .line 21
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    .line 24
    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;

    .line 154
    new-instance v0, Lnitro/phonestats/settings/ValueSeekBar$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/settings/ValueSeekBar$1;-><init>(Lnitro/phonestats/settings/ValueSeekBar;)V

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->onSeek:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 48
    invoke-direct {p0, p2}, Lnitro/phonestats/settings/ValueSeekBar;->initBar(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/ValueSeekBar;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/settings/ValueSeekBar;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/settings/ValueSeekBar;)Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    return-object v0
.end method

.method private initBar(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 101
    new-instance v4, Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "nitro-valueseekbar"

    invoke-virtual {p0}, Lnitro/phonestats/settings/ValueSeekBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    .line 103
    invoke-virtual {p0}, Lnitro/phonestats/settings/ValueSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 104
    iget-object v5, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v6, "main"

    invoke-virtual {v5, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getLayoutId(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 103
    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "valueView"

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getItemId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ValueSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->valueView:Landroid/widget/TextView;

    .line 108
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "seek"

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getItemId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ValueSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    .line 109
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    iget-object v5, p0, Lnitro/phonestats/settings/ValueSeekBar;->onSeek:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 110
    invoke-virtual {p0, v7, v8}, Lnitro/phonestats/settings/ValueSeekBar;->setRange(II)V

    .line 111
    invoke-virtual {p0, v7}, Lnitro/phonestats/settings/ValueSeekBar;->setValue(I)V

    .line 112
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "label"

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getItemId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ValueSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->label:Landroid/widget/TextView;

    .line 113
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->label:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    if-eqz p1, :cond_0

    .line 117
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "ValueSeekBar"

    invoke-virtual {v4, v5}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getStyleableArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 118
    .local v3, styleable:[I
    invoke-virtual {p0}, Lnitro/phonestats/settings/ValueSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "ValueSeekBar"

    const-string v6, "maxValue"

    invoke-virtual {v4, v5, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 123
    .local v1, max:I
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "ValueSeekBar"

    const-string v6, "minValue"

    invoke-virtual {v4, v5, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 125
    .local v2, min:I
    invoke-virtual {p0, v2, v1}, Lnitro/phonestats/settings/ValueSeekBar;->setRange(II)V

    .line 126
    iget-object v4, p0, Lnitro/phonestats/settings/ValueSeekBar;->parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v5, "ValueSeekBar"

    const-string v6, "value"

    invoke-virtual {v4, v5, v6}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getStyleableId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/ValueSeekBar;->setValue(I)V

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #max:I
    .end local v2           #min:I
    .end local v3           #styleable:[I
    :cond_0
    return-void
.end method


# virtual methods
.method public getOnValueChangedListener()Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    return-object v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->shift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "ss"

    .prologue
    .line 147
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 149
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "superState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 151
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/ValueSeekBar;->setValue(I)V

    .line 152
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "superState"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v1, "value"

    invoke-virtual {p0}, Lnitro/phonestats/settings/ValueSeekBar;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    return-object v0
.end method

.method public setOnValueChangedListener(Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lnitro/phonestats/settings/ValueSeekBar;->listener:Lnitro/phonestats/settings/ValueSeekBar$OnValueChangedListener;

    .line 59
    return-void
.end method

.method public setPostfix(Ljava/lang/String;)V
    .locals 0
    .parameter "postfix"

    .prologue
    .line 72
    iput-object p1, p0, Lnitro/phonestats/settings/ValueSeekBar;->postfix:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 77
    iput p1, p0, Lnitro/phonestats/settings/ValueSeekBar;->shift:I

    .line 78
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->label:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->label:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBar;->seek:Landroid/widget/SeekBar;

    iget v1, p0, Lnitro/phonestats/settings/ValueSeekBar;->shift:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    return-void
.end method
