.class Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;
.super Ljava/lang/Object;
.source "CountryCodeCorrectionPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    #getter for: Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;
    invoke-static {v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->access$0(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    move-result-object v0

    iget-object v0, v0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 151
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    invoke-virtual {v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->checkExamples()V

    .line 152
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView$2;->this$1:Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;

    #getter for: Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->this$0:Lnitro/phonestats/settings/CountryCodeCorrectionPreference;
    invoke-static {v0}, Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;->access$0(Lnitro/phonestats/settings/CountryCodeCorrectionPreference$CountryCodeCorrectionView;)Lnitro/phonestats/settings/CountryCodeCorrectionPreference;

    move-result-object v0

    iget-object v0, v0, Lnitro/phonestats/settings/CountryCodeCorrectionPreference;->countrycode:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
