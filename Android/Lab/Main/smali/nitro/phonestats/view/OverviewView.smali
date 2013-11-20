.class public Lnitro/phonestats/view/OverviewView;
.super Landroid/widget/LinearLayout;
.source "OverviewView.java"


# instance fields
.field private callLimitBox:Landroid/view/View;

.field private calllimitBar:Lnitro/phonestats/view/WarningProgressBar2;

.field private calltimeRemainsLabel:Landroid/widget/TextView;

.field private costLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

.field private costRemainsLabel:Landroid/widget/TextView;

.field private costsLimitBox:Landroid/view/View;

.field private infoBox:Landroid/view/View;

.field private model:Lnitro/phonestats/core/IStatManager;

.field private monthRemainingBar:Landroid/widget/ProgressBar;

.field private monthRemainingLabel:Landroid/widget/TextView;

.field private smsLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

.field private smsLimitBox:Landroid/view/View;

.field private smsRemainsLabel:Landroid/widget/TextView;

.field private trafficLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

.field private trafficLimitBox:Landroid/view/View;

.field private trafficRemainsLabel:Landroid/widget/TextView;

.field private unitLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

.field private unitsLimitBox:Landroid/view/View;

.field private unitsRemainsLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/view/OverviewView;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    invoke-direct {p0}, Lnitro/phonestats/view/OverviewView;->refreshUI()V

    return-void
.end method

.method private drawMonthRemainingBox()V
    .locals 7

    .prologue
    .line 250
    iget-object v3, p0, Lnitro/phonestats/view/OverviewView;->model:Lnitro/phonestats/core/IStatManager;

    const-string v4, "remaining_days"

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    check-cast v2, Lnitro/phonestats/core/stat/RemainingDaysStat;

    .line 251
    .local v2, remainingDays:Lnitro/phonestats/core/stat/RemainingDaysStat;
    invoke-virtual {v2}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getRemaining()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v0, v3

    .line 252
    .local v0, daysLeft:I
    invoke-virtual {v2}, Lnitro/phonestats/core/stat/RemainingDaysStat;->getMax()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v1, v3

    .line 253
    .local v1, daysThisMonth:I
    iget-object v3, p0, Lnitro/phonestats/view/OverviewView;->monthRemainingLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0700d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v3, p0, Lnitro/phonestats/view/OverviewView;->monthRemainingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 255
    iget-object v3, p0, Lnitro/phonestats/view/OverviewView;->monthRemainingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    return-void
.end method

.method private getCurrencySymbol()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->getCostsCurrency(Landroid/content/Context;)I

    move-result v1

    .line 355
    .local v1, currencyID:I
    if-nez v1, :cond_0

    .line 356
    const-string v0, "\u00c4"

    .line 359
    .local v0, currency:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 358
    .end local v0           #currency:Ljava/lang/String;
    :cond_0
    const-string v0, "$"

    .restart local v0       #currency:Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshUI()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 175
    invoke-static {}, Lnitro/phonestats/core/StatManager;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    const-string v6, "2"

    const-string v7, "refreshOverviewUI"

    invoke-static {v6, v7}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 184
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 186
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 187
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useCallCostsFeature(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useSMSCostsFeature(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 189
    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->useDataCostFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    :cond_0
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->infoBox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_0
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->costsLimitBox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->callLimitBox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBox:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    new-instance v2, Lnitro/phonestats/view/CostsLimitBox;

    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->costsLimitBox:Landroid/view/View;

    iget-object v7, p0, Lnitro/phonestats/view/OverviewView;->costLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v8, p0, Lnitro/phonestats/view/OverviewView;->costRemainsLabel:Landroid/widget/TextView;

    invoke-direct {v2, v6, v7, v8, v1}, Lnitro/phonestats/view/CostsLimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 202
    .local v2, coststBox:Lnitro/phonestats/view/CostsLimitBox;
    new-instance v0, Lnitro/phonestats/view/CallLimitBox;

    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->callLimitBox:Landroid/view/View;

    iget-object v7, p0, Lnitro/phonestats/view/OverviewView;->calllimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v8, p0, Lnitro/phonestats/view/OverviewView;->calltimeRemainsLabel:Landroid/widget/TextView;

    invoke-direct {v0, v6, v7, v8, v1}, Lnitro/phonestats/view/CallLimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 203
    .local v0, callBox:Lnitro/phonestats/view/CallLimitBox;
    new-instance v3, Lnitro/phonestats/view/SmsLimitBox;

    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBox:Landroid/view/View;

    iget-object v7, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v8, p0, Lnitro/phonestats/view/OverviewView;->smsRemainsLabel:Landroid/widget/TextView;

    invoke-direct {v3, v6, v7, v8, v1}, Lnitro/phonestats/view/SmsLimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 204
    .local v3, smsBox:Lnitro/phonestats/view/SmsLimitBox;
    new-instance v4, Lnitro/phonestats/view/TrafficLimitBox;

    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBox:Landroid/view/View;

    iget-object v7, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v8, p0, Lnitro/phonestats/view/OverviewView;->trafficRemainsLabel:Landroid/widget/TextView;

    invoke-direct {v4, v6, v7, v8, v1}, Lnitro/phonestats/view/TrafficLimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 205
    .local v4, trafficBox:Lnitro/phonestats/view/TrafficLimitBox;
    new-instance v5, Lnitro/phonestats/view/UnitLimitBox;

    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->unitsLimitBox:Landroid/view/View;

    iget-object v7, p0, Lnitro/phonestats/view/OverviewView;->unitLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    iget-object v8, p0, Lnitro/phonestats/view/OverviewView;->unitsRemainsLabel:Landroid/widget/TextView;

    invoke-direct {v5, v6, v7, v8, v1}, Lnitro/phonestats/view/UnitLimitBox;-><init>(Landroid/view/View;Lnitro/phonestats/view/WarningProgressBar2;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 207
    .local v5, unitBox:Lnitro/phonestats/view/UnitLimitBox;
    invoke-virtual {v2}, Lnitro/phonestats/view/CostsLimitBox;->draw()V

    .line 209
    invoke-virtual {v0}, Lnitro/phonestats/view/CallLimitBox;->draw()V

    .line 210
    invoke-virtual {v3}, Lnitro/phonestats/view/SmsLimitBox;->draw()V

    .line 211
    invoke-virtual {v4}, Lnitro/phonestats/view/TrafficLimitBox;->draw()V

    .line 212
    invoke-virtual {v5}, Lnitro/phonestats/view/UnitLimitBox;->draw()V

    .line 238
    invoke-direct {p0}, Lnitro/phonestats/view/OverviewView;->drawMonthRemainingBox()V

    .line 241
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->invalidate()V

    .line 242
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->forceLayout()V

    .line 243
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->requestLayout()V

    .line 244
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->postInvalidate()V

    .line 245
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lnitro/phonestats/view/OverviewView;->setWillNotCacheDrawing(Z)V

    .line 247
    .end local v0           #callBox:Lnitro/phonestats/view/CallLimitBox;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #coststBox:Lnitro/phonestats/view/CostsLimitBox;
    .end local v3           #smsBox:Lnitro/phonestats/view/SmsLimitBox;
    .end local v4           #trafficBox:Lnitro/phonestats/view/TrafficLimitBox;
    .end local v5           #unitBox:Lnitro/phonestats/view/UnitLimitBox;
    :cond_1
    return-void

    .line 193
    .restart local v1       #context:Landroid/content/Context;
    :cond_2
    iget-object v6, p0, Lnitro/phonestats/view/OverviewView;->infoBox:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-static {v1, v2, p0}, Lnitro/phonestats/view/OverviewView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    move-object v0, p0

    .line 80
    .local v0, parent:Landroid/view/View;
    invoke-virtual {p0}, Lnitro/phonestats/view/OverviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->model:Lnitro/phonestats/core/IStatManager;

    .line 81
    const-string v1, "onFinishInflate adding Handler"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->model:Lnitro/phonestats/core/IStatManager;

    new-instance v2, Lnitro/phonestats/view/OverviewView$1;

    invoke-direct {v2, p0, v0}, Lnitro/phonestats/view/OverviewView$1;-><init>(Lnitro/phonestats/view/OverviewView;Landroid/view/View;)V

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 103
    const v1, 0x7f0a0091

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/WarningProgressBar2;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->calllimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 104
    const v1, 0x7f0a0095

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/WarningProgressBar2;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 105
    const v1, 0x7f0a0099

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/WarningProgressBar2;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 106
    const v1, 0x7f0a009d

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/WarningProgressBar2;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->costLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 107
    const v1, 0x7f0a00a1

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/WarningProgressBar2;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->unitLimitBar:Lnitro/phonestats/view/WarningProgressBar2;

    .line 109
    const v1, 0x7f0a0092

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->calltimeRemainsLabel:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0a0096

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->smsRemainsLabel:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0a009a

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->trafficRemainsLabel:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->costRemainsLabel:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0a00a2

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->unitsRemainsLabel:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0a00a6

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->monthRemainingLabel:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f0a00a7

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->monthRemainingBar:Landroid/widget/ProgressBar;

    .line 118
    const v1, 0x7f0a008f

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->callLimitBox:Landroid/view/View;

    .line 119
    const v1, 0x7f0a0093

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBox:Landroid/view/View;

    .line 120
    const v1, 0x7f0a0097

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBox:Landroid/view/View;

    .line 121
    const v1, 0x7f0a009b

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->costsLimitBox:Landroid/view/View;

    .line 122
    const v1, 0x7f0a009f

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->unitsLimitBox:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->callLimitBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->costsLimitBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->unitsLimitBox:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v1, 0x7f0a00a3

    invoke-virtual {p0, v1}, Lnitro/phonestats/view/OverviewView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/view/OverviewView;->infoBox:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->callLimitBox:Landroid/view/View;

    new-instance v2, Lnitro/phonestats/view/OverviewView$2;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/OverviewView$2;-><init>(Lnitro/phonestats/view/OverviewView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->smsLimitBox:Landroid/view/View;

    new-instance v2, Lnitro/phonestats/view/OverviewView$3;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/OverviewView$3;-><init>(Lnitro/phonestats/view/OverviewView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lnitro/phonestats/view/OverviewView;->trafficLimitBox:Landroid/view/View;

    new-instance v2, Lnitro/phonestats/view/OverviewView$4;

    invoke-direct {v2, p0}, Lnitro/phonestats/view/OverviewView$4;-><init>(Lnitro/phonestats/view/OverviewView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method
