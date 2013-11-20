.class public abstract Lnitro/phonestats/settings/ValueSeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "ValueSeekBarPreference.java"


# instance fields
.field private defaultVal:I

.field protected lastValue:I

.field private max:I

.field private min:I

.field private postfix:Ljava/lang/String;

.field protected seek:Lnitro/phonestats/settings/ValueSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Lcom/commonsware/cwac/parcel/ParcelHelper;

    const-string v1, "nitro-valueseekbar"

    invoke-direct {v0, v1, p1}, Lcom/commonsware/cwac/parcel/ParcelHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 30
    .local v0, parcel:Lcom/commonsware/cwac/parcel/ParcelHelper;
    const-string v1, "set"

    .line 31
    const-string v2, "string"

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/ValueSeekBarPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 32
    const-string v1, "cancel"

    .line 33
    const-string v2, "string"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/commonsware/cwac/parcel/ParcelHelper;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/ValueSeekBarPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected init(IIILjava/lang/String;)V
    .locals 0
    .parameter "min"
    .parameter "max"
    .parameter "defaultVal"
    .parameter "postfix"

    .prologue
    .line 37
    iput p1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->min:I

    .line 38
    iput p2, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->max:I

    .line 39
    iput p3, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->defaultVal:I

    .line 40
    iput-object p4, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->postfix:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    iget v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/ValueSeekBar;->setValue(I)V

    .line 55
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lnitro/phonestats/settings/ValueSeekBar;

    invoke-virtual {p0}, Lnitro/phonestats/settings/ValueSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnitro/phonestats/settings/ValueSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    .line 47
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    iget v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->min:I

    iget v2, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->max:I

    invoke-virtual {v0, v1, v2}, Lnitro/phonestats/settings/ValueSeekBar;->setRange(II)V

    .line 48
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    iget-object v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->postfix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/ValueSeekBar;->setPostfix(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 60
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    invoke-virtual {v0}, Lnitro/phonestats/settings/ValueSeekBar;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/ValueSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->seek:Lnitro/phonestats/settings/ValueSeekBar;

    invoke-virtual {v0}, Lnitro/phonestats/settings/ValueSeekBar;->getValue()I

    move-result v0

    iput v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    .line 65
    iget v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/ValueSeekBarPreference;->persistInt(I)Z

    .line 68
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 72
    iget v0, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->defaultVal:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 77
    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    iget v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/ValueSeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local p2
    :goto_0
    return-void

    .line 80
    .restart local p2
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/ClassCastException;
    if-eqz p2, :cond_0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 82
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    goto :goto_0

    .line 84
    .restart local p2
    :cond_0
    const/16 v1, 0x64

    iput v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lnitro/phonestats/settings/ValueSeekBarPreference;->lastValue:I

    goto :goto_0
.end method
