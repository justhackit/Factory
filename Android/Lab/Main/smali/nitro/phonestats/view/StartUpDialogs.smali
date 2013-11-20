.class public Lnitro/phonestats/view/StartUpDialogs;
.super Ljava/lang/Object;
.source "StartUpDialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildPremiumWhatsNew(Landroid/content/Context;)Landroid/widget/ViewFlipper;
    .locals 12
    .parameter "ctx"

    .prologue
    .line 75
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, factory:Landroid/view/LayoutInflater;
    const v10, 0x7f030027

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, viewFree:Landroid/view/View;
    const/high16 v10, 0x7f07

    invoke-static {p0, v10}, Lnitro/phonestats/view/StartUpDialogs;->buildScrollableSizedTextView(Landroid/content/Context;I)Landroid/widget/ScrollView;

    move-result-object v8

    .line 79
    .local v8, whatsNewContent:Landroid/view/View;
    const v10, 0x7f070001

    invoke-static {p0, v10}, Lnitro/phonestats/view/StartUpDialogs;->buildScrollableSizedTextView(Landroid/content/Context;I)Landroid/widget/ScrollView;

    move-result-object v9

    .line 81
    .local v9, whatsNewPremiumContent:Landroid/view/View;
    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, flipper:Landroid/widget/ViewFlipper;
    invoke-virtual {v1, v6}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 83
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, flipperFree:Landroid/view/View;
    const v10, 0x7f0a00ca

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    const v10, 0x7f030027

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 86
    .local v7, viewPremium:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 87
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, flipperPremium:Landroid/view/View;
    const v10, 0x7f0a00ca

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 92
    const v10, 0x7f0a00c7

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioGroup;

    const v11, 0x7f0a00c8

    invoke-virtual {v10, v11}, Landroid/widget/RadioGroup;->check(I)V

    .line 93
    const v10, 0x7f0a00c7

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioGroup;

    const v11, 0x7f0a00c9

    invoke-virtual {v10, v11}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    const v10, 0x7f0a00c8

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 96
    .local v5, premiumTitle:Landroid/widget/RadioButton;
    const v10, 0x7f0a00c9

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 97
    .local v4, freeTitle:Landroid/widget/RadioButton;
    new-instance v10, Lnitro/phonestats/view/StartUpDialogs$1;

    invoke-direct {v10, v3, v1}, Lnitro/phonestats/view/StartUpDialogs$1;-><init>(Landroid/view/View;Landroid/widget/ViewFlipper;)V

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v10, Lnitro/phonestats/view/StartUpDialogs$2;

    invoke-direct {v10, v2, v1}, Lnitro/phonestats/view/StartUpDialogs$2;-><init>(Landroid/view/View;Landroid/widget/ViewFlipper;)V

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object v1
.end method

.method private static buildScrollableSizedTextView(Landroid/content/Context;I)Landroid/widget/ScrollView;
    .locals 6
    .parameter "ctx"
    .parameter "resid"

    .prologue
    .line 137
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, svMessage:Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, tv:Landroid/widget/TextView;
    const/16 v2, 0xe

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/16 v5, 0xc

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    const/high16 v2, 0x4150

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    return-object v0
.end method

.method private static createWelcome(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 123
    const v3, 0x7f0700a7

    invoke-static {p0, v3}, Lnitro/phonestats/view/StartUpDialogs;->buildScrollableSizedTextView(Landroid/content/Context;I)Landroid/widget/ScrollView;

    move-result-object v2

    .line 125
    .local v2, svMessage:Landroid/widget/ScrollView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700a5

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 127
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 128
    const v4, 0x7f0700a4

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 133
    return-void
.end method

.method private static createWhatsNew(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 50
    invoke-static {p0}, Lnitro/phonestats/view/StartUpDialogs;->buildPremiumWhatsNew(Landroid/content/Context;)Landroid/widget/ViewFlipper;

    move-result-object v2

    .line 61
    .local v2, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700a6

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 65
    const v4, 0x7f07013d

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 71
    return-void
.end method

.method public static showDialogs(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2
    .parameter "ctx"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->isFreshInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->firstSyncNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "Show Welcome + Whats New integrated"

    invoke-static {p0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->setWhatsNewShown(Landroid/content/Context;)V

    .line 28
    invoke-static {p0, p1}, Lnitro/phonestats/view/StartUpDialogs;->createWelcome(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->wasWhatsNewShown(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    const-string v1, "Show Whats New"

    invoke-static {p0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->longDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->setWhatsNewShown(Landroid/content/Context;)V

    .line 38
    invoke-static {p0, p1}, Lnitro/phonestats/view/StartUpDialogs;->createWhatsNew(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
