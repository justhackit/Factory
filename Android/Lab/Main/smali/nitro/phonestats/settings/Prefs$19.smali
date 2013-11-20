.class Lnitro/phonestats/settings/Prefs$19;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->createManualCorrectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;

.field private final synthetic val$calls:Landroid/widget/TextView;

.field private final synthetic val$sms:Landroid/widget/TextView;

.field private final synthetic val$traffic:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$19;->this$0:Lnitro/phonestats/settings/Prefs;

    iput-object p2, p0, Lnitro/phonestats/settings/Prefs$19;->val$calls:Landroid/widget/TextView;

    iput-object p3, p0, Lnitro/phonestats/settings/Prefs$19;->val$sms:Landroid/widget/TextView;

    iput-object p4, p0, Lnitro/phonestats/settings/Prefs$19;->val$traffic:Landroid/widget/TextView;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, addMinutes:I
    const/4 v2, 0x0

    .line 441
    .local v2, addSMS:I
    const/4 v0, 0x0

    .line 444
    .local v0, addMBdata:I
    :try_start_0
    iget-object v3, p0, Lnitro/phonestats/settings/Prefs$19;->val$calls:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 448
    :goto_0
    :try_start_1
    iget-object v3, p0, Lnitro/phonestats/settings/Prefs$19;->val$sms:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 452
    :goto_1
    :try_start_2
    iget-object v3, p0, Lnitro/phonestats/settings/Prefs$19;->val$traffic:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 456
    :goto_2
    iget-object v3, p0, Lnitro/phonestats/settings/Prefs$19;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v3}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lnitro/phonestats/core/IStatManager;->doManualCorrection(III)V

    .line 459
    return-void

    .line 453
    :catch_0
    move-exception v3

    goto :goto_2

    .line 449
    :catch_1
    move-exception v3

    goto :goto_1

    .line 445
    :catch_2
    move-exception v3

    goto :goto_0
.end method
