.class public Lnitro/phonestats/view/HistoryStatView;
.super Landroid/widget/LinearLayout;
.source "HistoryStatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
    }
.end annotation


# instance fields
.field private leftData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

.field private mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private mLastLeftPosition:I

.field private mLastLeftTop:I

.field private mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

.field private mLastRightPosition:I

.field private mLastRightTop:I

.field private mStatList:Landroid/widget/ListView;

.field private mStatManager:Lnitro/phonestats/core/IStatManager;

.field private mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

.field private mStatsView:Landroid/view/View;

.field private monthShift:I

.field private rightData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightPosition:I

    .line 39
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I

    .line 40
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightTop:I

    .line 41
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I

    .line 43
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 44
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->leftData:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->rightData:Ljava/util/List;

    .line 57
    invoke-direct {p0}, Lnitro/phonestats/view/HistoryStatView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightPosition:I

    .line 39
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I

    .line 40
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightTop:I

    .line 41
    iput v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I

    .line 43
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 44
    sget-object v0, Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;->FAVORITES:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->leftData:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->rightData:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method

.method static synthetic access$10(Lnitro/phonestats/view/HistoryStatView;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightTop:I

    return v0
.end method

.method static synthetic access$11(Lnitro/phonestats/view/HistoryStatView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lnitro/phonestats/view/HistoryStatView;Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    return-void
.end method

.method static synthetic access$13(Lnitro/phonestats/view/HistoryStatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightPosition:I

    return-void
.end method

.method static synthetic access$14(Lnitro/phonestats/view/HistoryStatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightTop:I

    return-void
.end method

.method static synthetic access$15(Lnitro/phonestats/view/HistoryStatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-void
.end method

.method static synthetic access$16(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method static synthetic access$17(Lnitro/phonestats/view/HistoryStatView;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I

    return v0
.end method

.method static synthetic access$18(Lnitro/phonestats/view/HistoryStatView;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I

    return v0
.end method

.method static synthetic access$2(Lnitro/phonestats/view/HistoryStatView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lnitro/phonestats/view/HistoryStatView;->initStats(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3(Lnitro/phonestats/view/HistoryStatView;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lnitro/phonestats/view/HistoryStatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftPosition:I

    return-void
.end method

.method static synthetic access$5(Lnitro/phonestats/view/HistoryStatView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftTop:I

    return-void
.end method

.method static synthetic access$6(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lnitro/phonestats/view/HistoryStatView;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-void
.end method

.method static synthetic access$8(Lnitro/phonestats/view/HistoryStatView;)Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    return-object v0
.end method

.method static synthetic access$9(Lnitro/phonestats/view/HistoryStatView;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightPosition:I

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x7f0a0066

    .line 85
    invoke-virtual {p0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 86
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    new-instance v3, Lnitro/phonestats/view/HistoryStatView$1;

    invoke-direct {v3, p0}, Lnitro/phonestats/view/HistoryStatView$1;-><init>(Lnitro/phonestats/view/HistoryStatView;)V

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 105
    invoke-virtual {p0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030011

    invoke-static {v2, v3, p0}, Lnitro/phonestats/view/HistoryStatView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    .line 106
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    .line 107
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 108
    sget-object v2, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    iput-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    .line 109
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p0, v2}, Lnitro/phonestats/view/HistoryStatView;->getLeftData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnitro/phonestats/view/HistoryStatView;->initStats(Ljava/util/List;)V

    .line 111
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 112
    .local v1, rightBtn:Landroid/widget/RadioButton;
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 114
    .local v0, leftBtn:Landroid/widget/RadioButton;
    new-instance v2, Lnitro/phonestats/view/HistoryStatView$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/HistoryStatView$2;-><init>(Lnitro/phonestats/view/HistoryStatView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    new-instance v2, Lnitro/phonestats/view/HistoryStatView$3;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/HistoryStatView$3;-><init>(Lnitro/phonestats/view/HistoryStatView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    return-void
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
    .line 169
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 170
    new-instance v0, Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {p0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnitro/phonestats/view/adapters/StatListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    .line 171
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 173
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->getOnStatClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected getLeftData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 4
    .parameter "statManager"
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

    .prologue
    .line 220
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget v2, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->isHistoricalStatsAvalaible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v0, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "out_sec_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "out_sec_payed_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "out_calls_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "calls_failed_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "in_sec_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->billIncomingMinutes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "in_sec_payed_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "in_calls_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v2, "calls_missed_month"

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v1, v2, v3}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0           #groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected getRightData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 5
    .parameter "statManager"
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

    .prologue
    .line 188
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget v3, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v2, v3}, Lnitro/phonestats/core/IStatManager;->isHistoricalStatsAvalaible(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lnitro/phonestats/view/HistoryStatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    .line 193
    .local v0, billIncomingSMS:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v3, "sms_sent_month"

    iget v4, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v2, v3, v4}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v3, "sms_sent_paid_month"

    iget v4, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v2, v3, v4}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v3, "sms_inbox_month"

    iget v4, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v2, v3, v4}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    if-eqz v0, :cond_0

    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    const-string v3, "sms_inbox_paid_month"

    iget v4, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    invoke-interface {v2, v3, v4}, Lnitro/phonestats/core/IStatManager;->getHistoricalStat(Ljava/lang/String;I)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v0           #billIncomingSMS:Z
    .end local v1           #groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    invoke-direct {p0}, Lnitro/phonestats/view/HistoryStatView;->init()V

    .line 82
    return-void
.end method

.method public refreshList()V
    .locals 4

    .prologue
    .line 262
    iget-object v2, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    sget-object v1, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/HistoryStatView;->getLeftData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mCurrentDisplay:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    sget-object v3, Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;->LEFT:Lnitro/phonestats/view/HistoryStatView$CurrentDisplay;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastLeftMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    :goto_1
    invoke-virtual {v2, v0, v1}, Lnitro/phonestats/view/adapters/StatListAdapter;->setNewData(Ljava/util/List;Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;)V

    .line 263
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 264
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p0, v0}, Lnitro/phonestats/view/HistoryStatView;->getRightData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnitro/phonestats/view/HistoryStatView;->mLastRightMode:Lnitro/phonestats/view/adapters/StatListAdapter$DisplayMode;

    goto :goto_1
.end method

.method public setData(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, leftData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    .local p2, rightData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    iput-object p1, p0, Lnitro/phonestats/view/HistoryStatView;->leftData:Ljava/util/List;

    .line 180
    iput-object p2, p0, Lnitro/phonestats/view/HistoryStatView;->rightData:Ljava/util/List;

    .line 181
    return-void
.end method

.method public setMonthShift(I)V
    .locals 1
    .parameter "shift"

    .prologue
    .line 255
    iput p1, p0, Lnitro/phonestats/view/HistoryStatView;->monthShift:I

    .line 256
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatsAdapter:Lnitro/phonestats/view/adapters/StatListAdapter;

    invoke-virtual {v0, p1}, Lnitro/phonestats/view/adapters/StatListAdapter;->setMonthShift(I)V

    .line 257
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-object v0, p0, Lnitro/phonestats/view/HistoryStatView;->mStatList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    return-void
.end method
