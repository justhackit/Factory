.class public abstract Lnitro/phonestats/view/StatView;
.super Landroid/widget/LinearLayout;
.source "StatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/StatView$CurrentDisplay;
    }
.end annotation


# instance fields
.field private mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

.field private mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;

.field private mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private mLastMonthlyPosition:I

.field private mLastMonthlyTop:I

.field private mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private mLastTotalPosition:I

.field private mLastTotalTop:I

.field private mStatList:Landroid/widget/ListView;

.field private mStatManager:Lnitro/phonestats/core/IStatManager;

.field protected mStatsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalPosition:I

    .line 43
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyPosition:I

    .line 44
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalTop:I

    .line 45
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyTop:I

    .line 47
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 48
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalPosition:I

    .line 43
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyPosition:I

    .line 44
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalTop:I

    .line 45
    iput v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyTop:I

    .line 47
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 48
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/StatView$CurrentDisplay;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method

.method static synthetic access$10(Lnitro/phonestats/view/StatView;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalTop:I

    return v0
.end method

.method static synthetic access$11(Lnitro/phonestats/view/StatView;Lnitro/phonestats/view/StatView$CurrentDisplay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lnitro/phonestats/view/StatView;->mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;

    return-void
.end method

.method static synthetic access$12(Lnitro/phonestats/view/StatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lnitro/phonestats/view/StatView;->mLastTotalPosition:I

    return-void
.end method

.method static synthetic access$13(Lnitro/phonestats/view/StatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lnitro/phonestats/view/StatView;->mLastTotalTop:I

    return-void
.end method

.method static synthetic access$14(Lnitro/phonestats/view/StatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-void
.end method

.method static synthetic access$15(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method static synthetic access$16(Lnitro/phonestats/view/StatView;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyPosition:I

    return v0
.end method

.method static synthetic access$17(Lnitro/phonestats/view/StatView;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyTop:I

    return v0
.end method

.method static synthetic access$2(Lnitro/phonestats/view/StatView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lnitro/phonestats/view/StatView;->initStats(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3(Lnitro/phonestats/view/StatView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/view/StatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyPosition:I

    return-void
.end method

.method static synthetic access$5(Lnitro/phonestats/view/StatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyTop:I

    return-void
.end method

.method static synthetic access$6(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lnitro/phonestats/view/StatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lnitro/phonestats/view/StatView;->mLastMonthlyMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-void
.end method

.method static synthetic access$8(Lnitro/phonestats/view/StatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method static synthetic access$9(Lnitro/phonestats/view/StatView;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lnitro/phonestats/view/StatView;->mLastTotalPosition:I

    return v0
.end method

.method private initStats(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 162
    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {p0}, Lnitro/phonestats/view/StatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnitro/phonestats/view/adapters/StatListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    .line 163
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 165
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/view/StatView;->mCallStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->getOnStatClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected abstract getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method protected abstract getTotalData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const v4, 0x7f0a001e

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lnitro/phonestats/view/StatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 77
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    new-instance v3, Lnitro/phonestats/view/StatView$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/view/StatView$1;-><init>(Lnitro/phonestats/view/StatView;)V

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 96
    invoke-virtual {p0}, Lnitro/phonestats/view/StatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030005

    invoke-static {v2, v3, p0}, Lnitro/phonestats/view/StatView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    .line 97
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    .line 98
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 99
    sget-object v2, Lnitro/phonestats/view/StatView$CurrentDisplay;->MONTHLY:Lnitro/phonestats/view/StatView$CurrentDisplay;

    iput-object v2, p0, Lnitro/phonestats/view/StatView;->mCurrentDisplay:Lnitro/phonestats/view/StatView$CurrentDisplay;

    .line 100
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p0, v2}, Lnitro/phonestats/view/StatView;->getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnitro/phonestats/view/StatView;->initStats(Ljava/util/List;)V

    .line 102
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 103
    .local v1, totalBtn:Landroid/widget/RadioButton;
    iget-object v2, p0, Lnitro/phonestats/view/StatView;->mStatsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 105
    .local v0, monthlyBtn:Landroid/widget/RadioButton;
    new-instance v2, Lnitro/phonestats/view/StatView$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/StatView$2;-><init>(Lnitro/phonestats/view/StatView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    new-instance v2, Lnitro/phonestats/view/StatView$3;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/StatView$3;-><init>(Lnitro/phonestats/view/StatView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iget-object v0, p0, Lnitro/phonestats/view/StatView;->mStatList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    return-void
.end method
