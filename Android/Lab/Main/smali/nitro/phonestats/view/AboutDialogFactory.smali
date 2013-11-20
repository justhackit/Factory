.class public Lnitro/phonestats/view/AboutDialogFactory;
.super Ljava/lang/Object;
.source "AboutDialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAboutDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 14
    .parameter "ctx"

    .prologue
    const/4 v11, 0x0

    .line 24
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v5, dialog:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f070062

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    const v10, 0x7f07013d

    invoke-virtual {v5, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 29
    .local v6, factory:Landroid/view/LayoutInflater;
    const/high16 v10, 0x7f03

    invoke-virtual {v6, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 34
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0a0002

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 36
    .local v8, tvMessage:Landroid/widget/TextView;
    const v10, 0x7f070129

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 37
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 39
    .local v7, spanText:Landroid/text/Spannable;
    const v10, -0x333334

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    const/16 v10, 0xf

    invoke-static {v7, v10}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 41
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v10, 0x7f0a0005

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, button:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/view/AboutDialogFactory$1;

    invoke-direct {v10, p0}, Lnitro/phonestats/view/AboutDialogFactory$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v10, 0x7f0a0004

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 59
    .local v2, button2:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/view/AboutDialogFactory$2;

    invoke-direct {v10, p0}, Lnitro/phonestats/view/AboutDialogFactory$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v10, 0x7f0a0006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 72
    .local v3, button3:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/view/AboutDialogFactory$3;

    invoke-direct {v10, p0}, Lnitro/phonestats/view/AboutDialogFactory$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v10, 0x7f0a0007

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 85
    .local v4, button4:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/view/AboutDialogFactory$4;

    invoke-direct {v10, p0}, Lnitro/phonestats/view/AboutDialogFactory$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const/16 v10, 0xe

    const/4 v11, 0x2

    const/16 v12, 0xa

    const/16 v13, 0xc

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 107
    .local v0, adialog:Landroid/app/AlertDialog;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 108
    return-object v0
.end method
