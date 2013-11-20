.class public Lnitro/phonestats/view/quickaction/QuickInfo;
.super Landroid/widget/ImageView;
.source "QuickInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/view/quickaction/QuickInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/view/quickaction/QuickInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2}, Lnitro/phonestats/view/quickaction/QuickInfo;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 42
    const v1, 0x7f020051

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/quickaction/QuickInfo;->setImageResource(I)V

    .line 43
    invoke-virtual {p0, v3}, Lnitro/phonestats/view/quickaction/QuickInfo;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, v3}, Lnitro/phonestats/view/quickaction/QuickInfo;->setClickable(Z)V

    .line 46
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lnitro/phonestats/view/quickaction/QuickInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnitro/phonestats/R$styleable;->QuickInfo:[I

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/quickaction/QuickInfo;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 71
    new-instance v0, Lnitro/phonestats/view/quickaction/ActionItem;

    invoke-direct {v0}, Lnitro/phonestats/view/quickaction/ActionItem;-><init>()V

    .line 72
    .local v0, infoText:Lnitro/phonestats/view/quickaction/ActionItem;
    invoke-virtual {v0, p1}, Lnitro/phonestats/view/quickaction/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lnitro/phonestats/view/quickaction/QuickInfo$1;

    invoke-direct {v1, p0, v0}, Lnitro/phonestats/view/quickaction/QuickInfo$1;-><init>(Lnitro/phonestats/view/quickaction/QuickInfo;Lnitro/phonestats/view/quickaction/ActionItem;)V

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/quickaction/QuickInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public setView(ILjava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "view"
    .parameter
    .parameter "additionalOnClickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lnitro/phonestats/view/quickaction/AdvancedActionItem;

    invoke-direct {v0}, Lnitro/phonestats/view/quickaction/AdvancedActionItem;-><init>()V

    .line 88
    .local v0, item:Lnitro/phonestats/view/quickaction/AdvancedActionItem;
    invoke-virtual {v0, p1}, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->setView(I)V

    .line 89
    invoke-virtual {v0, p2}, Lnitro/phonestats/view/quickaction/AdvancedActionItem;->setData(Ljava/util/List;)V

    .line 91
    new-instance v1, Lnitro/phonestats/view/quickaction/QuickInfo$2;

    invoke-direct {v1, p0, p3, v0}, Lnitro/phonestats/view/quickaction/QuickInfo$2;-><init>(Lnitro/phonestats/view/quickaction/QuickInfo;Landroid/view/View$OnClickListener;Lnitro/phonestats/view/quickaction/AdvancedActionItem;)V

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/quickaction/QuickInfo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method
