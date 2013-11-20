.class public Lnitro/phonestats/settings/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/settings/NumberPicker$Formatter;,
        Lnitro/phonestats/settings/NumberPicker$NumberPickerInputFilter;,
        Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;,
        Lnitro/phonestats/settings/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C = null

.field public static final TWO_DIGIT_FORMATTER:Lnitro/phonestats/settings/NumberPicker$Formatter; = null

.field public static final TYPE_CLASS_NUMBER:I = 0x2


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Lnitro/phonestats/settings/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInputFilter:Landroid/text/InputFilter;

.field private mListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mSlideDownInAnimation:Landroid/view/animation/Animation;

.field private final mSlideDownOutAnimation:Landroid/view/animation/Animation;

.field private final mSlideUpInAnimation:Landroid/view/animation/Animation;

.field private final mSlideUpOutAnimation:Landroid/view/animation/Animation;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lnitro/phonestats/settings/NumberPicker$1;

    invoke-direct {v0}, Lnitro/phonestats/settings/NumberPicker$1;-><init>()V

    sput-object v0, Lnitro/phonestats/settings/NumberPicker;->TWO_DIGIT_FORMATTER:Lnitro/phonestats/settings/NumberPicker$Formatter;

    .line 335
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/settings/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 37
    return-void

    .line 335
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/settings/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/settings/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lnitro/phonestats/settings/NumberPicker$2;

    invoke-direct {v0, p0}, Lnitro/phonestats/settings/NumberPicker$2;-><init>(Lnitro/phonestats/settings/NumberPicker;)V

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 99
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSpeed:J

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->setOrientation(I)V

    .line 115
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030019

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lnitro/phonestats/settings/NumberPicker$NumberPickerInputFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/settings/NumberPicker$NumberPickerInputFilter;-><init>(Lnitro/phonestats/settings/NumberPicker;Lnitro/phonestats/settings/NumberPicker$NumberPickerInputFilter;)V

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mInputFilter:Landroid/text/InputFilter;

    .line 119
    new-instance v0, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;-><init>(Lnitro/phonestats/settings/NumberPicker;Lnitro/phonestats/settings/NumberPicker$NumberRangeKeyListener;)V

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 120
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/settings/NumberPickerButton;

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    .line 121
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setNumberPicker(Lnitro/phonestats/settings/NumberPicker;)V

    .line 124
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/settings/NumberPickerButton;

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    .line 125
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p0}, Lnitro/phonestats/settings/NumberPickerButton;->setNumberPicker(Lnitro/phonestats/settings/NumberPicker;)V

    .line 129
    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lnitro/phonestats/settings/NumberPicker;->mInputFilter:Landroid/text/InputFilter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 135
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 137
    const/4 v7, 0x1

    const/high16 v8, -0x3d38

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 135
    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpOutAnimation:Landroid/view/animation/Animation;

    .line 138
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 139
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x42c8

    .line 141
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 139
    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpInAnimation:Landroid/view/animation/Animation;

    .line 142
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 143
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x1

    const/high16 v8, 0x42c8

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 143
    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownOutAnimation:Landroid/view/animation/Animation;

    .line 146
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 147
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x3d38

    .line 149
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 147
    iput-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownInAnimation:Landroid/view/animation/Animation;

    .line 150
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 152
    invoke-virtual {p0}, Lnitro/phonestats/settings/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->setEnabled(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1(Lnitro/phonestats/settings/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$10(Lnitro/phonestats/settings/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lnitro/phonestats/settings/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$12()[C
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lnitro/phonestats/settings/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$13(Lnitro/phonestats/settings/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lnitro/phonestats/settings/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lnitro/phonestats/settings/NumberPicker;)I
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$2(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/settings/NumberPicker;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/settings/NumberPicker;->changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$5(Lnitro/phonestats/settings/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lnitro/phonestats/settings/NumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-wide v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$7(Lnitro/phonestats/settings/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$8(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$9(Lnitro/phonestats/settings/NumberPicker;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "current"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 245
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 246
    iget p1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    .line 250
    :cond_0
    :goto_0
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    iput v0, p0, Lnitro/phonestats/settings/NumberPicker;->mPrevious:I

    .line 251
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    .line 252
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->notifyChange()V

    .line 253
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 254
    return-void

    .line 247
    :cond_1
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 248
    iget p1, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mFormatter:Lnitro/phonestats/settings/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mFormatter:Lnitro/phonestats/settings/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lnitro/phonestats/settings/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 405
    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 428
    :goto_0
    return v1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 422
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 412
    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 408
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    :catch_0
    move-exception v1

    .line 428
    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mPrevious:I

    iget v2, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lnitro/phonestats/settings/NumberPicker$OnChangedListener;->onChanged(Lnitro/phonestats/settings/NumberPicker;II)V

    .line 260
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    iget v3, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 277
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, val:I
    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 279
    iget v1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    iput v1, p0, Lnitro/phonestats/settings/NumberPicker;->mPrevious:I

    .line 280
    iput v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    .line 281
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->notifyChange()V

    .line 283
    :cond_0
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 284
    return-void
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrement:Z

    .line 333
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrement:Z

    .line 329
    return-void
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 228
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 231
    const v0, 0x7f0a0089

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 232
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpInAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideUpOutAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/settings/NumberPicker;->changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const v0, 0x7f0a008b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 234
    iget v0, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownInAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lnitro/phonestats/settings/NumberPicker;->mSlideDownOutAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v0, v1, v2}, Lnitro/phonestats/settings/NumberPicker;->changeCurrent(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 291
    if-nez p2, :cond_0

    .line 292
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 303
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v0       #str:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lnitro/phonestats/settings/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 317
    const v0, 0x7f0a0089

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 318
    iput-boolean v2, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrement:Z

    .line 319
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    const v0, 0x7f0a008b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 321
    iput-boolean v2, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrement:Z

    .line 322
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnitro/phonestats/settings/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 210
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    .line 211
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 212
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mIncrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPickerButton;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mDecrementButton:Lnitro/phonestats/settings/NumberPickerButton;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPickerButton;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lnitro/phonestats/settings/NumberPicker;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    return-void
.end method

.method public setFormatter(Lnitro/phonestats/settings/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 170
    iput-object p1, p0, Lnitro/phonestats/settings/NumberPicker;->mFormatter:Lnitro/phonestats/settings/NumberPicker$Formatter;

    .line 171
    return-void
.end method

.method public setOnChangeListener(Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lnitro/phonestats/settings/NumberPicker;->mListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    .line 167
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 183
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    .line 184
    iput p2, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    .line 185
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    .line 186
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 187
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 202
    iput-object p3, p0, Lnitro/phonestats/settings/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 203
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mStart:I

    .line 204
    iput p2, p0, Lnitro/phonestats/settings/NumberPicker;->mEnd:I

    .line 205
    iput p1, p0, Lnitro/phonestats/settings/NumberPicker;->mCurrent:I

    .line 206
    invoke-direct {p0}, Lnitro/phonestats/settings/NumberPicker;->updateView()V

    .line 207
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 219
    iput-wide p1, p0, Lnitro/phonestats/settings/NumberPicker;->mSpeed:J

    .line 220
    return-void
.end method
