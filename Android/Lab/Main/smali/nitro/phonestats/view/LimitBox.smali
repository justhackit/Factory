.class abstract Lnitro/phonestats/view/LimitBox;
.super Ljava/lang/Object;
.source "LimitBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/LimitBox$EstimationState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$nitro$phonestats$view$LimitBox$EstimationState:[I

.field protected static final currency:Ljava/lang/String;

.field protected static final currencydigits:I


# instance fields
.field protected box:Landroid/view/View;

.field protected context:Landroid/content/Context;

.field protected label:Landroid/widget/TextView;

.field protected warningBar:Lnitro/phonestats/view/WarningProgressBar2;


# direct methods
.method static synthetic $SWITCH_TABLE$nitro$phonestats$view$LimitBox$EstimationState()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lnitro/phonestats/view/LimitBox;->$SWITCH_TABLE$nitro$phonestats$view$LimitBox$EstimationState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnitro/phonestats/view/LimitBox$EstimationState;->values()[Lnitro/phonestats/view/LimitBox$EstimationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->bad:Lnitro/phonestats/view/LimitBox$EstimationState;

    invoke-virtual {v1}, Lnitro/phonestats/view/LimitBox$EstimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->good:Lnitro/phonestats/view/LimitBox$EstimationState;

    invoke-virtual {v1}, Lnitro/phonestats/view/LimitBox$EstimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnitro/phonestats/view/LimitBox$EstimationState;->none:Lnitro/phonestats/view/LimitBox$EstimationState;

    invoke-virtual {v1}, Lnitro/phonestats/view/LimitBox$EstimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnitro/phonestats/view/LimitBox;->$SWITCH_TABLE$nitro$phonestats$view$LimitBox$EstimationState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrency()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/view/LimitBox;->currency:Ljava/lang/String;

    .line 35
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->getCurrencyDigits()I

    move-result v0

    sput v0, Lnitro/phonestats/view/LimitBox;->currencydigits:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .parameter "box"
    .parameter "warningBar"
    .parameter "label"
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lnitro/phonestats/view/LimitBox;->box:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lnitro/phonestats/view/LimitBox;->warningBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 44
    iput-object p3, p0, Lnitro/phonestats/view/LimitBox;->label:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lnitro/phonestats/view/LimitBox;->context:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lnitro/phonestats/view/LimitBox;->drawBar()V

    .line 51
    invoke-virtual {p0}, Lnitro/phonestats/view/LimitBox;->drawText()V

    .line 52
    invoke-virtual {p0}, Lnitro/phonestats/view/LimitBox;->setVisibility()V

    .line 53
    return-void
.end method

.method public abstract drawBar()V
.end method

.method protected drawEstimationIcon(Lnitro/phonestats/view/LimitBox$EstimationState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lnitro/phonestats/view/LimitBox;->$SWITCH_TABLE$nitro$phonestats$view$LimitBox$EstimationState()[I

    move-result-object v0

    invoke-virtual {p1}, Lnitro/phonestats/view/LimitBox$EstimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lnitro/phonestats/view/LimitBox;->label:Landroid/widget/TextView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lnitro/phonestats/view/LimitBox;->label:Landroid/widget/TextView;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lnitro/phonestats/view/LimitBox;->label:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract drawText()V
.end method

.method public setVisibility()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lnitro/phonestats/view/LimitBox;->wouldDraw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lnitro/phonestats/view/LimitBox;->box:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/LimitBox;->box:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract wouldDraw()Z
.end method
