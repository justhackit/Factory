.class public Lnitro/phonestats/settings/CostSettings;
.super Landroid/app/Activity;
.source "CostSettings.java"


# instance fields
.field private basePrice:Landroid/widget/EditText;

.field private connectionPrice:Landroid/widget/EditText;

.field private costsCurrency:Landroid/widget/Spinner;

.field private dataPrice:Landroid/widget/EditText;

.field private messagePrice:Landroid/widget/EditText;

.field private minutePrice:Landroid/widget/EditText;

.field private unitPrice:Landroid/widget/EditText;

.field private useBasicCosts:Landroid/widget/CheckBox;

.field private useCallCosts:Landroid/widget/CheckBox;

.field private useConnectionCosts:Landroid/widget/CheckBox;

.field private useDataCosts:Landroid/widget/CheckBox;

.field private useSmsCosts:Landroid/widget/CheckBox;

.field private useUnitCosts:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->minutePrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->messagePrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->dataPrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->connectionPrice:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lnitro/phonestats/settings/CostSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->basePrice:Landroid/widget/EditText;

    return-object v0
.end method

.method private checkUnitCostFeature()V
    .locals 6

    .prologue
    const v5, 0x7f0a0032

    const v4, 0x7f0a0028

    const v3, 0x7f0a0026

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 262
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0, v5}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0, v5}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0a003d

    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->setContentView(I)V

    .line 43
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->costsCurrency:Landroid/widget/Spinner;

    .line 46
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, saveButton:Landroid/widget/Button;
    new-instance v2, Lnitro/phonestats/settings/CostSettings$1;

    invoke-direct {v2, p0}, Lnitro/phonestats/settings/CostSettings$1;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->minutePrice:Landroid/widget/EditText;

    .line 62
    const v2, 0x7f0a0035

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->messagePrice:Landroid/widget/EditText;

    .line 64
    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->dataPrice:Landroid/widget/EditText;

    .line 66
    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    .line 70
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->basePrice:Landroid/widget/EditText;

    .line 72
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->connectionPrice:Landroid/widget/EditText;

    .line 76
    const v2, 0x7f0a0023

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    .line 78
    const v2, 0x7f0a0030

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    .line 80
    const v2, 0x7f0a0038

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    .line 82
    const v2, 0x7f0a003f

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useDataCosts:Landroid/widget/CheckBox;

    .line 84
    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useBasicCosts:Landroid/widget/CheckBox;

    .line 86
    const v2, 0x7f0a0024

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useConnectionCosts:Landroid/widget/CheckBox;

    .line 88
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, currency:Ljava/lang/String;
    const v2, 0x7f0a002a

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0a0036

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v2, 0x7f0a003e

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/CostSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->costsCurrency:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 105
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useCallCostsFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->minutePrice:Landroid/widget/EditText;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMinutePrice(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useSMSCostsFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->messagePrice:Landroid/widget/EditText;

    .line 115
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMessagePrice(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useDataCostFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useDataCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->dataPrice:Landroid/widget/EditText;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getDataPrice(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_2
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitCosts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getUnitsCosts(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_3
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useConnectionFee(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useConnectionCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->connectionPrice:Landroid/widget/EditText;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getConnectionFees(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_4
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useBasicFees(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useBasicCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->basePrice:Landroid/widget/EditText;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getBasicFees(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_5
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->minutePrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    :cond_6
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->messagePrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    :cond_7
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useDataCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->dataPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 156
    :cond_8
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 157
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 159
    :cond_9
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useConnectionCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 160
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->connectionPrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 162
    :cond_a
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useBasicCosts:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 163
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->basePrice:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 167
    :cond_b
    invoke-direct {p0}, Lnitro/phonestats/settings/CostSettings;->checkUnitCostFeature()V

    .line 169
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$2;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$2;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$3;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$3;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$4;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$4;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useDataCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$5;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$5;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useConnectionCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$6;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$6;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    iget-object v2, p0, Lnitro/phonestats/settings/CostSettings;->useBasicCosts:Landroid/widget/CheckBox;

    new-instance v3, Lnitro/phonestats/settings/CostSettings$7;

    invoke-direct {v3, p0}, Lnitro/phonestats/settings/CostSettings$7;-><init>(Lnitro/phonestats/settings/CostSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Lnitro/phonestats/settings/CostSettings;->save()V

    .line 356
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 357
    return-void
.end method

.method protected save()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v1, "Save data"

    invoke-static {p0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useCallCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseCallCostFeature(Landroid/content/Context;Z)V

    .line 311
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useSmsCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseSmsCostFeature(Landroid/content/Context;Z)V

    .line 312
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useDataCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseDataCostFeature(Landroid/content/Context;Z)V

    .line 313
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useUnitCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseUnitCostFeature(Landroid/content/Context;Z)V

    .line 314
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useBasicCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseBasicFeeFeature(Landroid/content/Context;Z)V

    .line 315
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->useConnectionCosts:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUseConnectionFeeFeature(Landroid/content/Context;Z)V

    .line 318
    :try_start_0
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->minutePrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 319
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setMinutePrice(Landroid/content/Context;F)V

    .line 320
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->messagePrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 321
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setMessagePrice(Landroid/content/Context;F)V

    .line 322
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->dataPrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 323
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setDataPrice(Landroid/content/Context;F)V

    .line 324
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->unitPrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setUnitPrice(Landroid/content/Context;F)V

    .line 326
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->basePrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 327
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setBasicFees(Landroid/content/Context;F)V

    .line 328
    iget-object v1, p0, Lnitro/phonestats/settings/CostSettings;->connectionPrice:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0, v1}, Lnitro/phonestats/settings/core/Settings;->setConnectionFees(Landroid/content/Context;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/settings/CostSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    const-string v2, "costs settings"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->firePreferenceChange(Ljava/lang/String;)V

    .line 349
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setMinutePrice(Landroid/content/Context;F)V

    .line 333
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setMessagePrice(Landroid/content/Context;F)V

    .line 334
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setDataPrice(Landroid/content/Context;F)V

    .line 335
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setUnitPrice(Landroid/content/Context;F)V

    .line 336
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setBasicFees(Landroid/content/Context;F)V

    .line 337
    invoke-static {p0, v2}, Lnitro/phonestats/settings/core/Settings;->setConnectionFees(Landroid/content/Context;F)V

    .line 339
    invoke-virtual {p0}, Lnitro/phonestats/settings/CostSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    const-string v2, "Wrong cost setting format"

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_0
.end method
