.class public Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;
.super Landroid/widget/LinearLayout;
.source "CountryCodeCorrectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/settings/CountryCodeCorrectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryCodeCorrectionView"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;


# direct methods
.method public constructor <init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 108
    iput-object p1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    .line 109
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const v0, 0x7f030008

    invoke-static {p2, v0, p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    .line 114
    iget-object v0, p1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    new-instance v1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$1;-><init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->useCountrcode:Landroid/widget/CheckBox;

    .line 139
    iget-object v0, p1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->useCountrcode:Landroid/widget/CheckBox;

    new-instance v1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;

    invoke-direct {v1, p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;-><init>(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    invoke-virtual {p0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->checkExamples()V

    .line 157
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)Lnitro/phonestats/settings/CountryCodeCorrectionPreference;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    return-object v0
.end method


# virtual methods
.method protected checkExamples()V
    .locals 3

    .prologue
    .line 162
    const v1, 0x7f0a0050

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, examples:Landroid/widget/TextView;
    iget-object v1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    iget-object v1, v1, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->useCountrcode:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "0176 12 34 56 -> 0176123456"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0176 12 34 56 -> +"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    iget-object v2, v2, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "176123456"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
