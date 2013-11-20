.class public Lnitro/phonestats/settings/DataPicker;
.super Landroid/widget/FrameLayout;
.source "DataPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;,
        Lnitro/phonestats/settings/DataPicker$SavedState;
    }
.end annotation


# static fields
.field private static final UNITS:[Ljava/lang/String; = null

.field public static final UNIT_B:I = 0x0

.field public static final UNIT_GB:I = 0x3

.field public static final UNIT_KB:I = 0x1

.field public static final UNIT_MB:I = 0x2

.field public static final UNIT_TB:I = 0x4


# instance fields
.field private final mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

.field private mBytes:J

.field private mOnBytesChangedListener:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

.field private final mPickerListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

.field private final mUnitPicker:Lnitro/phonestats/settings/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    sput-object v0, Lnitro/phonestats/settings/DataPicker;->UNITS:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnitro/phonestats/settings/DataPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnitro/phonestats/settings/DataPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnitro/phonestats/settings/DataPicker;->mBytes:J

    .line 59
    new-instance v1, Lnitro/phonestats/settings/DataPicker$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/settings/DataPicker$1;-><init>(Lnitro/phonestats/settings/DataPicker;)V

    iput-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mPickerListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    .line 112
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000a

    .line 114
    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/DataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/settings/NumberPicker;

    iput-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    .line 117
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lnitro/phonestats/settings/NumberPicker;->setSpeed(J)V

    .line 118
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    const/16 v2, 0x1fff

    invoke-virtual {v1, v4, v2}, Lnitro/phonestats/settings/NumberPicker;->setRange(II)V

    .line 119
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    iget-object v2, p0, Lnitro/phonestats/settings/DataPicker;->mPickerListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    invoke-virtual {v1, v2}, Lnitro/phonestats/settings/NumberPicker;->setOnChangeListener(Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V

    .line 121
    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/DataPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/settings/NumberPicker;

    iput-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    .line 123
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lnitro/phonestats/settings/NumberPicker;->setSpeed(J)V

    .line 124
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    sget-object v2, Lnitro/phonestats/settings/DataPicker;->UNITS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lnitro/phonestats/settings/DataPicker;->UNITS:[Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Lnitro/phonestats/settings/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    iget-object v2, p0, Lnitro/phonestats/settings/DataPicker;->mPickerListener:Lnitro/phonestats/settings/NumberPicker$OnChangedListener;

    invoke-virtual {v1, v2}, Lnitro/phonestats/settings/NumberPicker;->setOnChangeListener(Lnitro/phonestats/settings/NumberPicker$OnChangedListener;)V

    .line 127
    invoke-virtual {p0}, Lnitro/phonestats/settings/DataPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0, v4}, Lnitro/phonestats/settings/DataPicker;->setEnabled(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/DataPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lnitro/phonestats/settings/DataPicker;->mBytes:J

    return-wide v0
.end method

.method static synthetic access$1(Lnitro/phonestats/settings/DataPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Lnitro/phonestats/settings/DataPicker;->updateBytes()V

    return-void
.end method

.method static synthetic access$2(Lnitro/phonestats/settings/DataPicker;)Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker;->mOnBytesChangedListener:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    return-object v0
.end method

.method private updateBytes()V
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v2}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v2

    int-to-long v0, v2

    .line 147
    .local v0, currentAmount:J
    iget-object v2, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v2}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    shl-long v2, v0, v2

    iput-wide v2, p0, Lnitro/phonestats/settings/DataPicker;->mBytes:J

    .line 148
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lnitro/phonestats/settings/DataPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 212
    return-void
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v0

    return v0
.end method

.method public getBytes()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lnitro/phonestats/settings/DataPicker;->mBytes:J

    return-wide v0
.end method

.method public init(JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;)V
    .locals 9
    .parameter "bytes"
    .parameter "callBack"

    .prologue
    const-wide/16 v7, 0x400

    .line 192
    move-wide v0, p1

    .line 193
    .local v0, amount:J
    const/4 v2, 0x0

    .line 196
    .local v2, unit:I
    :goto_0
    cmp-long v3, v0, v7

    if-lez v3, :cond_0

    rem-long v3, v0, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 201
    :cond_0
    iget-object v3, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 202
    iget-object v3, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v3, v2}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 203
    iput-object p3, p0, Lnitro/phonestats/settings/DataPicker;->mOnBytesChangedListener:Lnitro/phonestats/settings/DataPicker$OnBytesChangedListener;

    .line 204
    return-void

    .line 197
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 198
    const/16 v3, 0xa

    shr-long/2addr v0, v3

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 223
    move-object v0, p1

    check-cast v0, Lnitro/phonestats/settings/DataPicker$SavedState;

    .line 224
    .local v0, savedSate:Lnitro/phonestats/settings/DataPicker$SavedState;
    invoke-virtual {v0}, Lnitro/phonestats/settings/DataPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/DataPicker$SavedState;->getAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 226
    iget-object v1, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0}, Lnitro/phonestats/settings/DataPicker$SavedState;->getUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 227
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 218
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lnitro/phonestats/settings/DataPicker$SavedState;

    iget-object v2, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v2}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v2

    iget-object v3, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v3}, Lnitro/phonestats/settings/NumberPicker;->getCurrent()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lnitro/phonestats/settings/DataPicker$SavedState;-><init>(Landroid/os/Parcelable;IILnitro/phonestats/settings/DataPicker$SavedState;)V

    return-object v1
.end method

.method public setData(II)V
    .locals 1
    .parameter "amount"
    .parameter "unit"

    .prologue
    .line 175
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPicker;->setCurrent(I)V

    .line 176
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker;->mAmountPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPicker;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lnitro/phonestats/settings/DataPicker;->mUnitPicker:Lnitro/phonestats/settings/NumberPicker;

    invoke-virtual {v0, p1}, Lnitro/phonestats/settings/NumberPicker;->setEnabled(Z)V

    .line 137
    return-void
.end method
