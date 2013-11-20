.class public Lnitro/phonestats/activities/AppList;
.super Landroid/app/Activity;
.source "AppList.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/activities/AppList$AppTrafficValue;,
        Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;
    }
.end annotation


# instance fields
.field adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;"
        }
    .end annotation
.end field

.field private items_filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/activities/AppList$AppTrafficValue;",
            ">;"
        }
    .end annotation
.end field

.field private mDbCursor:Landroid/database/Cursor;

.field private mDbHelper:Lnitro/phonestats/core/ExcludedNumbersManager;

.field private mHeaderView:Landroid/view/View;

.field private mSearchBox:Landroid/widget/AutoCompleteTextView;

.field private mSearchOverlay:Landroid/view/View;

.field private mStatList:Landroid/widget/ListView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private toggle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/activities/AppList;->toggle:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/activities/AppList;->items_filter:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/AppList;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/activities/AppList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->items_filter:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lnitro/phonestats/activities/AppList;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Lnitro/phonestats/activities/AppList;->dismissSearchOverlay()V

    return-void
.end method

.method static synthetic access$3(Lnitro/phonestats/activities/AppList;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lnitro/phonestats/activities/AppList;->toggle:Z

    return v0
.end method

.method static synthetic access$4(Lnitro/phonestats/activities/AppList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lnitro/phonestats/activities/AppList;->toggle:Z

    return-void
.end method

.method static synthetic access$5(Lnitro/phonestats/activities/AppList;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lnitro/phonestats/activities/AppList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lnitro/phonestats/activities/AppList;->createAppStats(Z)V

    return-void
.end method

.method static synthetic access$7(Lnitro/phonestats/activities/AppList;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Lnitro/phonestats/activities/AppList;->showSearchOverlay()V

    return-void
.end method

.method static synthetic access$8(Lnitro/phonestats/activities/AppList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$9(Lnitro/phonestats/activities/AppList;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private createAppStats(Z)V
    .locals 21
    .parameter "systemApps"

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 198
    new-instance v15, Lnitro/phonestats/activities/AppList$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lnitro/phonestats/activities/AppList$6;-><init>(Lnitro/phonestats/activities/AppList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnitro/phonestats/activities/AppList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v14, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lnitro/phonestats/activities/AppList$AppTrafficValue;>;"
    invoke-virtual/range {p0 .. p0}, Lnitro/phonestats/activities/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 211
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    .line 212
    .local v3, featureUnsupported:Z
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 246
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    .local v13, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/activities/AppList$AppTrafficValue;>;"
    new-instance v15, Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;

    invoke-direct {v15}, Lnitro/phonestats/activities/AppList$AppTrafficValueSorter;-><init>()V

    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    move v12, v3

    .line 251
    .local v12, showAlertDialog:Z
    new-instance v15, Lnitro/phonestats/activities/AppList$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lnitro/phonestats/activities/AppList$7;-><init>(Lnitro/phonestats/activities/AppList;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnitro/phonestats/activities/AppList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void

    .line 212
    .end local v12           #showAlertDialog:Z
    .end local v13           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/activities/AppList$AppTrafficValue;>;"
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 213
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 214
    .local v10, sentBytes:J
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 216
    .local v8, receivedBytes:J
    const-wide/16 v17, -0x1

    cmp-long v15, v10, v17

    if-nez v15, :cond_2

    const-wide/16 v17, -0x1

    cmp-long v15, v8, v17

    if-eqz v15, :cond_0

    .line 217
    :cond_2
    const/4 v3, 0x0

    .line 221
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, nameForUid:Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, appLabel:Ljava/lang/String;
    if-eqz p1, :cond_3

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lnitro/phonestats/activities/AppList;->isFlagSet(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 227
    :cond_3
    if-nez p1, :cond_4

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lnitro/phonestats/activities/AppList;->isFlagSet(II)Z

    move-result v15

    if-nez v15, :cond_0

    .line 230
    :cond_4
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 231
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    iget-object v0, v15, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :cond_5
    new-instance v5, Lnitro/phonestats/activities/AppList$AppTrafficValue;

    invoke-direct {v5}, Lnitro/phonestats/activities/AppList$AppTrafficValue;-><init>()V

    .line 234
    .local v5, item:Lnitro/phonestats/activities/AppList$AppTrafficValue;
    iput-object v2, v5, Lnitro/phonestats/activities/AppList$AppTrafficValue;->appName:Ljava/lang/String;

    .line 235
    iput-wide v8, v5, Lnitro/phonestats/activities/AppList$AppTrafficValue;->incomingBytes:J

    .line 236
    iput-wide v10, v5, Lnitro/phonestats/activities/AppList$AppTrafficValue;->outgoingBytes:J

    .line 237
    invoke-virtual {v4, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v5, Lnitro/phonestats/activities/AppList$AppTrafficValue;->icon:Landroid/graphics/drawable/Drawable;

    .line 240
    add-long v17, v10, v8

    const-wide/16 v19, 0x400

    cmp-long v15, v17, v19

    if-lez v15, :cond_0

    .line 241
    iget v15, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private dismissSearchOverlay()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 305
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 306
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    const v1, 0x7f040016

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_0
    return-void
.end method

.method private isFlagSet(II)Z
    .locals 1
    .parameter "flags"
    .parameter "flagToCheck"

    .prologue
    .line 276
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSearchOverlay()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    const v1, 0x7f040015

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v0, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f030002

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->requestWindowFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lnitro/phonestats/activities/AppList;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0, v6}, Lnitro/phonestats/activities/AppList;->setContentView(I)V

    .line 79
    const v4, 0x7f0a0013

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnitro/phonestats/activities/AppList;->mHeaderView:Landroid/view/View;

    .line 80
    const v4, 0x7f0a0010

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    .line 82
    const v4, 0x7f0a0011

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    iput-object v4, p0, Lnitro/phonestats/activities/AppList;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    .line 83
    iget-object v4, p0, Lnitro/phonestats/activities/AppList;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v5, Lnitro/phonestats/activities/AppList$1;

    invoke-direct {v5, p0}, Lnitro/phonestats/activities/AppList$1;-><init>(Lnitro/phonestats/activities/AppList;)V

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    const v4, 0x7f0a0012

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 113
    .local v0, deletebutton:Landroid/widget/ImageButton;
    new-instance v4, Lnitro/phonestats/activities/AppList$2;

    invoke-direct {v4, p0}, Lnitro/phonestats/activities/AppList$2;-><init>(Lnitro/phonestats/activities/AppList;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v4, 0x7f0a000f

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 121
    .local v3, switchButton:Landroid/widget/Button;
    new-instance v4, Lnitro/phonestats/activities/AppList$3;

    invoke-direct {v4, p0, v3}, Lnitro/phonestats/activities/AppList$3;-><init>(Lnitro/phonestats/activities/AppList;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v4, 0x7f0a000e

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 149
    .local v2, searchBtn:Landroid/widget/Button;
    new-instance v4, Lnitro/phonestats/activities/AppList$4;

    invoke-direct {v4, p0}, Lnitro/phonestats/activities/AppList$4;-><init>(Lnitro/phonestats/activities/AppList;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v4, p0, Lnitro/phonestats/activities/AppList;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnitro/phonestats/view/quickaction/QuickInfo;

    .line 157
    .local v1, quickInfo:Lnitro/phonestats/view/quickaction/QuickInfo;
    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnitro/phonestats/view/quickaction/QuickInfo;->setText(Ljava/lang/String;)V

    .line 165
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lnitro/phonestats/activities/AppList$5;

    invoke-direct {v5, p0}, Lnitro/phonestats/activities/AppList$5;-><init>(Lnitro/phonestats/activities/AppList;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 172
    new-instance v4, Lnitro/phonestats/view/adapters/AppStatsAdapter;

    iget-object v5, p0, Lnitro/phonestats/activities/AppList;->items:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v6, v5}, Lnitro/phonestats/view/adapters/AppStatsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lnitro/phonestats/activities/AppList;->adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

    .line 174
    const v4, 0x7f0a000d

    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/AppList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;

    .line 176
    iget-object v4, p0, Lnitro/phonestats/activities/AppList;->mStatList:Landroid/widget/ListView;

    iget-object v5, p0, Lnitro/phonestats/activities/AppList;->adapter_no_filter:Lnitro/phonestats/view/adapters/AppStatsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 182
    sparse-switch p1, :sswitch_data_0

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :sswitch_0
    invoke-direct {p0}, Lnitro/phonestats/activities/AppList;->showSearchOverlay()V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v1, p0, Lnitro/phonestats/activities/AppList;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-direct {p0}, Lnitro/phonestats/activities/AppList;->dismissSearchOverlay()V

    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
