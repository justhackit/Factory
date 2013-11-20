.class public Lnitro/phonestats/settings/CountryCodeCorrectionPreference;
.super Landroid/preference/DialogPreference;
.source "CountryCodeCorrectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;
    }
.end annotation


# instance fields
.field countrycode:Landroid/widget/EditText;

.field private initialSelection:Z

.field private initialValue:I

.field private lastSelection:Z

.field private lastValue:I

.field useCountrcode:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctxt"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "ctxt"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->setPositiveButtonText(I)V

    .line 49
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->setNegativeButtonText(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->useCountrcode:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    iget-boolean v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    invoke-virtual {p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;-><init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 72
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    .line 77
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->useCountrcode:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    .line 78
    iget v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->persistInt(I)Z

    .line 79
    invoke-virtual {p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    invoke-static {v0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseCountryCorrection(Landroid/content/Context;Z)V

    .line 80
    iget-boolean v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    iget-boolean v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->initialSelection:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    iget v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->initialValue:I

    if-eq v0, v1, :cond_1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnitro/phonestats/settings/core/Settings;->setCorrectionState(Landroid/content/Context;I)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 89
    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    iput v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    .line 98
    invoke-virtual {p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->useCountryCodeCorrection(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->initialSelection:Z

    .line 99
    iget-boolean v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->initialSelection:Z

    iput-boolean v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastSelection:Z

    .line 100
    iget v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->lastValue:I

    iput v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->initialValue:I

    .line 101
    return-void

    .line 96
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
