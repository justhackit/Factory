.class Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$1;
.super Ljava/lang/Object;
.source "CountryCodeCorrectionPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;-><init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$1;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 134
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$1;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    invoke-virtual {v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->checkExamples()V

    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 121
    return-void
.end method
