.class public Lnitro/phonestats/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Lnitro/phonestats/view/StartUpdateTaskView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnitro/phonestats/Main$FirstSyncService;,
        Lnitro/phonestats/Main$MainMsgHandler;
    }
.end annotation


# static fields
.field public static final CALLS:I = 0x1

.field public static final CHARTS:I = 0x5

.field private static final DATA_ID:I = 0x4

.field private static final DIALOG_HELP:I = 0x1

.field private static final EXIT_ID:I = 0x3

.field private static final EXTRAS_CLEARED_OUT:Ljava/lang/String; = "extras_cleared_out"

.field private static final HELP_ID:I = 0x2

.field public static final LOG:I = 0x4

.field private static final LOG_ID:I = 0x5

.field public static final MAIN_PACKAGE:Ljava/lang/String; = null

.field public static final OVERVIEW:I = 0x0

.field private static final SETTINGS_ID:I = 0x1

.field public static final SHOW_VIEW:Ljava/lang/String; = "nitro.phonestats.ShowView"

.field public static final SMS:I = 0x2

.field private static final SWIPE_MIN_DISTANCE:I = 0x50

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x1f4

.field public static final TRAFFIC:I = 0x3

.field private static final UPGRADE_ID:I = 0x6

.field static errorHandler:Landroid/os/Handler;

.field static fullSyncEnded:Z

.field private static isAnimating:Z


# instance fields
.field private extrasClearedOut:Z

.field private mAnimationFadeIn:Landroid/view/animation/Animation;

.field private mAnimationFadeOut:Landroid/view/animation/Animation;

.field private mBtnCalls:Landroid/widget/RadioButton;

.field private mBtnCharts:Landroid/widget/RadioButton;

.field private mBtnLog:Landroid/widget/RadioButton;

.field private mBtnOverview:Landroid/widget/RadioButton;

.field private mBtnSms:Landroid/widget/RadioButton;

.field private mBtnTraffic:Landroid/widget/RadioButton;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressOverlay:Landroid/widget/LinearLayout;

.field private mSlideLeftIn:Landroid/view/animation/Animation;

.field private mSlideLeftOut:Landroid/view/animation/Animation;

.field private mSlideRightIn:Landroid/view/animation/Animation;

.field private mSlideRightOut:Landroid/view/animation/Animation;

.field private mTabBtnBar:Landroid/widget/RadioGroup;

.field private mTabContent:Landroid/widget/ViewFlipper;

.field mTabScrollBar:Landroid/widget/HorizontalScrollView;

.field model:Lnitro/phonestats/core/IStatManager;

.field private whichView:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lnitro/phonestats/Main;->fullSyncEnded:Z

    .line 86
    const-class v0, Lnitro/phonestats/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/Main;->MAIN_PACKAGE:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lnitro/phonestats/Main;->isAnimating:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lnitro/phonestats/Main;->whichView:I

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/Main;->extrasClearedOut:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/Main;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lnitro/phonestats/Main;->resumeActivity()V

    return-void
.end method

.method static synthetic access$2(Lnitro/phonestats/Main;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3(Lnitro/phonestats/Main;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lnitro/phonestats/Main;->whichView:I

    return v0
.end method

.method static synthetic access$4(Lnitro/phonestats/Main;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lnitro/phonestats/Main;->getTabBtnIdByIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lnitro/phonestats/Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lnitro/phonestats/Main;->refreshData(Z)V

    return-void
.end method

.method static synthetic access$6(Lnitro/phonestats/Main;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-direct {p0, p1, p2, p3}, Lnitro/phonestats/Main;->dispatchTabButtonClick(IIZ)V

    return-void
.end method

.method static synthetic access$7(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    sput-boolean p0, Lnitro/phonestats/Main;->isAnimating:Z

    return-void
.end method

.method static synthetic access$8(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 988
    invoke-direct {p0}, Lnitro/phonestats/Main;->flingRight()V

    return-void
.end method

.method static synthetic access$9(Lnitro/phonestats/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    invoke-direct {p0}, Lnitro/phonestats/Main;->flingLeft()V

    return-void
.end method

.method private dispatchTabButtonClick(IIZ)V
    .locals 4
    .parameter "id"
    .parameter "scrollFling"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 798
    if-eqz p3, :cond_0

    .line 801
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabScrollBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 802
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 804
    const/4 v0, 0x1

    sput-boolean v0, Lnitro/phonestats/Main;->isAnimating:Z

    .line 805
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->animationsDisabeled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lnitro/phonestats/Main;->mAnimationFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 810
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lnitro/phonestats/Main;->mAnimationFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 818
    :goto_0
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 819
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 820
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 823
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/settings/core/Settings;->animationsDisabeled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    new-instance v1, Lnitro/phonestats/Main$9;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$9;-><init>(Lnitro/phonestats/Main;)V

    .line 831
    const-wide/16 v2, 0x1f4

    .line 825
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 835
    :cond_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 814
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private doStartupAnalysis()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    const-string v2, "2"

    const-string v3, "doStartupAnalysis"

    invoke-static {v2, v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->firstSyncNeeded()Z

    move-result v0

    .line 318
    .local v0, firstSyncNeeded:Z
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lnitro/phonestats/settings/core/Settings;->setCorrectionState(Landroid/content/Context;I)V

    .line 323
    :cond_0
    if-nez v0, :cond_1

    sget-boolean v2, Lnitro/phonestats/Main$FirstSyncService;->running:Z

    if-eqz v2, :cond_3

    .line 325
    :cond_1
    const v2, 0x7f07010b

    invoke-virtual {p0, v2}, Lnitro/phonestats/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, text:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnitro/phonestats/Main;->setKeepScreenOn(Z)V

    .line 333
    invoke-direct {p0, v1}, Lnitro/phonestats/Main;->showProgressOverlay(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v2

    invoke-virtual {v2}, Lnitro/phonestats/core/NotificationsChecker;->lock()V

    .line 339
    if-nez v0, :cond_2

    sget-boolean v2, Lnitro/phonestats/Main$FirstSyncService;->running:Z

    if-eqz v2, :cond_4

    .line 341
    :cond_2
    invoke-direct {p0}, Lnitro/phonestats/Main;->initiateFirstSync()V

    .line 347
    :goto_1
    invoke-direct {p0}, Lnitro/phonestats/Main;->startTrafficRefresher()V

    .line 350
    return-void

    .line 328
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    const v2, 0x7f07010a

    invoke-virtual {p0, v2}, Lnitro/phonestats/Main;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 344
    :cond_4
    invoke-direct {p0, v4}, Lnitro/phonestats/Main;->refreshData(Z)V

    goto :goto_1
.end method

.method private flingLeft()V
    .locals 3

    .prologue
    .line 976
    const/4 v1, 0x1

    sput-boolean v1, Lnitro/phonestats/Main;->isAnimating:Z

    .line 977
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 978
    .local v0, mCurrentViewId:I
    if-nez v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 980
    :cond_0
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lnitro/phonestats/Main;->mSlideRightIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 981
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lnitro/phonestats/Main;->mSlideRightOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 982
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0
.end method

.method private flingRight()V
    .locals 3

    .prologue
    .line 990
    const/4 v1, 0x1

    sput-boolean v1, Lnitro/phonestats/Main;->isAnimating:Z

    .line 991
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 992
    .local v0, mCuttentViewId:I
    iget-object v1, p0, Lnitro/phonestats/Main;->mBtnTraffic:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 998
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lnitro/phonestats/Main;->mSlideLeftIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 999
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lnitro/phonestats/Main;->mSlideLeftOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0
.end method

.method private getTabBtnIdByIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const v0, 0x7f0a007a

    .line 1031
    packed-switch p1, :pswitch_data_0

    .line 1044
    :goto_0
    :pswitch_0
    return v0

    .line 1036
    :pswitch_1
    const v0, 0x7f0a007b

    goto :goto_0

    .line 1038
    :pswitch_2
    const v0, 0x7f0a007c

    goto :goto_0

    .line 1040
    :pswitch_3
    const v0, 0x7f0a007d

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleShowViewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 1065
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1066
    .local v0, extras:Landroid/os/Bundle;
    iput v2, p0, Lnitro/phonestats/Main;->whichView:I

    .line 1067
    if-eqz v0, :cond_0

    .line 1069
    const-string v1, "nitro.phonestats.ShowView"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnitro/phonestats/Main;->whichView:I

    .line 1074
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleShowViewIntent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnitro/phonestats/Main;->whichView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private initiateFirstSync()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lnitro/phonestats/Main$3;

    invoke-direct {v0, p0}, Lnitro/phonestats/Main$3;-><init>(Lnitro/phonestats/Main;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 498
    invoke-virtual {v0, v1}, Lnitro/phonestats/Main$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    return-void
.end method

.method public static isAnimating()Z
    .locals 1

    .prologue
    .line 1133
    sget-boolean v0, Lnitro/phonestats/Main;->isAnimating:Z

    return v0
.end method

.method private loadXmlRessources()V
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lnitro/phonestats/Main;->mTabScrollBar:Landroid/widget/HorizontalScrollView;

    .line 197
    const v0, 0x7f0a0079

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    .line 198
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lnitro/phonestats/Main;->mBtnOverview:Landroid/widget/RadioButton;

    .line 199
    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lnitro/phonestats/Main;->mBtnCalls:Landroid/widget/RadioButton;

    .line 200
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lnitro/phonestats/Main;->mBtnSms:Landroid/widget/RadioButton;

    .line 201
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lnitro/phonestats/Main;->mBtnTraffic:Landroid/widget/RadioButton;

    .line 204
    const v0, 0x7f0a006d

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    .line 211
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    .line 213
    const v0, 0x7f040011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mSlideLeftIn:Landroid/view/animation/Animation;

    .line 215
    const v0, 0x7f040012

    .line 214
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mSlideLeftOut:Landroid/view/animation/Animation;

    .line 217
    const v0, 0x7f040013

    .line 216
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mSlideRightIn:Landroid/view/animation/Animation;

    .line 219
    const v0, 0x7f040014

    .line 218
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mSlideRightOut:Landroid/view/animation/Animation;

    .line 222
    const/high16 v0, 0x10a

    .line 221
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mAnimationFadeIn:Landroid/view/animation/Animation;

    .line 225
    const v0, 0x10a0001

    .line 224
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->mAnimationFadeOut:Landroid/view/animation/Animation;

    .line 227
    return-void
.end method

.method private refreshData(Z)V
    .locals 2
    .parameter "firstSyncNeeded"

    .prologue
    .line 503
    new-instance v0, Lnitro/phonestats/StartupUpdateTask;

    invoke-direct {v0, p0, p0, p1}, Lnitro/phonestats/StartupUpdateTask;-><init>(Landroid/content/Context;Lnitro/phonestats/view/StartUpdateTaskView;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnitro/phonestats/StartupUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 504
    return-void
.end method

.method private registerAnimationListener()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lnitro/phonestats/Main;->mSlideLeftOut:Landroid/view/animation/Animation;

    new-instance v1, Lnitro/phonestats/Main$10;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$10;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 862
    iget-object v0, p0, Lnitro/phonestats/Main;->mSlideRightOut:Landroid/view/animation/Animation;

    new-instance v1, Lnitro/phonestats/Main$11;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$11;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 887
    iget-object v0, p0, Lnitro/phonestats/Main;->mAnimationFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Lnitro/phonestats/Main$12;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$12;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 907
    return-void
.end method

.method private registerGestureDetector()V
    .locals 5

    .prologue
    .line 911
    new-instance v1, Landroid/view/GestureDetector;

    .line 912
    new-instance v3, Lnitro/phonestats/Main$13;

    invoke-direct {v3, p0}, Lnitro/phonestats/Main$13;-><init>(Lnitro/phonestats/Main;)V

    .line 911
    invoke-direct {v1, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 936
    .local v1, mFlingDetector:Landroid/view/GestureDetector;
    iget-object v3, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    new-instance v4, Lnitro/phonestats/Main$14;

    invoke-direct {v4, p0, v1}, Lnitro/phonestats/Main$14;-><init>(Lnitro/phonestats/Main;Landroid/view/GestureDetector;)V

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 946
    new-instance v2, Lnitro/phonestats/Main$15;

    invoke-direct {v2, p0, v1}, Lnitro/phonestats/Main$15;-><init>(Lnitro/phonestats/Main;Landroid/view/GestureDetector;)V

    .line 955
    .local v2, mFlingListener:Landroid/view/View$OnTouchListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 960
    return-void

    .line 957
    :cond_0
    iget-object v3, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnOverview:Landroid/widget/RadioButton;

    new-instance v1, Lnitro/phonestats/Main$4;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$4;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 732
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnCalls:Landroid/widget/RadioButton;

    new-instance v1, Lnitro/phonestats/Main$5;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$5;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 741
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnSms:Landroid/widget/RadioButton;

    new-instance v1, Lnitro/phonestats/Main$6;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$6;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 750
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnTraffic:Landroid/widget/RadioButton;

    new-instance v1, Lnitro/phonestats/Main$7;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$7;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 759
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnLog:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lnitro/phonestats/Main;->mBtnLog:Landroid/widget/RadioButton;

    new-instance v1, Lnitro/phonestats/Main$8;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$8;-><init>(Lnitro/phonestats/Main;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 792
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 793
    return-void
.end method

.method private resumeActivity()V
    .locals 4

    .prologue
    .line 268
    const-string v0, "2"

    const-string v1, "resumeActivity"

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->debugSomething()V

    .line 271
    invoke-direct {p0}, Lnitro/phonestats/Main;->uiDebugSomething()V

    .line 276
    iget v0, p0, Lnitro/phonestats/Main;->whichView:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    new-instance v1, Lnitro/phonestats/Main$2;

    invoke-direct {v1, p0}, Lnitro/phonestats/Main$2;-><init>(Lnitro/phonestats/Main;)V

    .line 286
    const-wide/16 v2, 0xc8

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadioGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getLastUpdated()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/StatsUtils;->needsUpdate(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "No update of data"

    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/StatsUtils;->checkServiceConnection(Landroid/content/Context;)V

    .line 299
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->resetStats()V

    .line 302
    invoke-direct {p0}, Lnitro/phonestats/Main;->doStartupAnalysis()V

    goto :goto_0
.end method

.method public static setAnimating(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1139
    sput-boolean p0, Lnitro/phonestats/Main;->isAnimating:Z

    .line 1141
    return-void
.end method

.method private setExceptionHandler()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lnitro/phonestats/core/helper/TopExceptionHandler;

    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnitro/phonestats/core/helper/TopExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 236
    :cond_0
    return-void
.end method

.method private showProgressOverlay(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 509
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const v1, 0x7f04000f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 510
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    return-void
.end method

.method private startTrafficRefresher()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v0}, Lnitro/phonestats/view/TrafficView;->startTrafficRefresher()V

    .line 442
    return-void
.end method

.method private stopTrafficRefresher()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnitro/phonestats/view/TrafficView;

    invoke-virtual {v0}, Lnitro/phonestats/view/TrafficView;->stopTrafficRefresher()V

    .line 448
    return-void
.end method

.method private uiDebugSomething()V
    .locals 0

    .prologue
    .line 355
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    .line 435
    return-void
.end method


# virtual methods
.method public dismissProgressOverlay()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const v1, 0x7f040010

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 522
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 710
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 712
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 713
    const-string v0, "Settings exited and restart"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnitro/phonestats/core/helper/StatsUtils;->restartApp(ZLandroid/app/Activity;)V

    .line 717
    :cond_0
    return-void
.end method

.method public onClickLimitInfo(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnitro/phonestats/settings/Prefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnitro/phonestats/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 680
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 151
    const-string v0, "2"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lnitro/phonestats/Main;->setExceptionHandler()V

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->requestWindowFeature(I)Z

    .line 158
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 161
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->setContentView(I)V

    .line 163
    invoke-direct {p0}, Lnitro/phonestats/Main;->loadXmlRessources()V

    .line 166
    invoke-direct {p0}, Lnitro/phonestats/Main;->registerListener()V

    .line 167
    invoke-direct {p0}, Lnitro/phonestats/Main;->registerAnimationListener()V

    .line 168
    invoke-direct {p0}, Lnitro/phonestats/Main;->registerGestureDetector()V

    .line 170
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    .line 172
    new-instance v0, Lnitro/phonestats/Main$MainMsgHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnitro/phonestats/Main$MainMsgHandler;-><init>(Lnitro/phonestats/Main;Lnitro/phonestats/Main$MainMsgHandler;)V

    sput-object v0, Lnitro/phonestats/Main;->errorHandler:Landroid/os/Handler;

    .line 173
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    sget-object v1, Lnitro/phonestats/Main;->errorHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 188
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lnitro/phonestats/Main;->handleShowViewIntent(Landroid/content/Intent;)V

    .line 190
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 191
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 685
    packed-switch p1, :pswitch_data_0

    .line 699
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 689
    :pswitch_0
    invoke-static {p0}, Lnitro/phonestats/view/AboutDialogFactory;->createAboutDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 696
    .local v0, adialog:Landroid/app/Dialog;
    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 571
    const v5, 0x7f070124

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 572
    .local v0, item:Landroid/view/MenuItem;
    const v5, 0x1080049

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 574
    const/4 v5, 0x2

    const v6, 0x7f070123

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 575
    .local v2, item3:Landroid/view/MenuItem;
    const v5, 0x1080041

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 577
    const/4 v5, 0x3

    const v6, 0x7f070122

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 578
    .local v1, item2:Landroid/view/MenuItem;
    const v5, 0x1080038

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 581
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    const/4 v5, 0x5

    const v6, 0x7f070125

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 583
    .local v3, item5:Landroid/view/MenuItem;
    const v5, 0x108004a

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    .end local v3           #item5:Landroid/view/MenuItem;
    :goto_0
    return v8

    .line 587
    :cond_0
    const/4 v5, 0x6

    const v6, 0x7f070128

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 588
    .local v4, item6:Landroid/view/MenuItem;
    const v5, 0x7f02009e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v2, 0x7f0a007a

    const/4 v0, 0x1

    .line 1006
    sparse-switch p1, :sswitch_data_0

    .line 1026
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 1009
    :sswitch_0
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1010
    invoke-direct {p0}, Lnitro/phonestats/Main;->flingLeft()V

    goto :goto_0

    .line 1013
    :sswitch_1
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a007d

    if-eq v1, v2, :cond_1

    .line 1014
    invoke-direct {p0}, Lnitro/phonestats/Main;->flingRight()V

    goto :goto_0

    .line 1019
    :sswitch_2
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabContent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    iget-object v1, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 1006
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1052
    iget-boolean v0, p0, Lnitro/phonestats/Main;->extrasClearedOut:Z

    if-nez v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lnitro/phonestats/Main;->handleShowViewIntent(Landroid/content/Intent;)V

    .line 1058
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1059
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 600
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 672
    :goto_0
    :pswitch_0
    return v6

    .line 602
    :pswitch_1
    iget-object v3, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 603
    invoke-virtual {p0}, Lnitro/phonestats/Main;->finish()V

    goto :goto_0

    .line 606
    :pswitch_2
    invoke-virtual {p0, v6}, Lnitro/phonestats/Main;->showDialog(I)V

    goto :goto_0

    .line 609
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/settings/Prefs;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .local v0, i:Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lnitro/phonestats/Main;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 613
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/activities/PremiumAdActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .local v2, intentAd:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lnitro/phonestats/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 617
    .end local v2           #intentAd:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/activities/LogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v1, intend:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lnitro/phonestats/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 529
    const-string v1, "onPause"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 532
    iget-object v1, p0, Lnitro/phonestats/Main;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lnitro/phonestats/Main;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 535
    :cond_0
    invoke-direct {p0}, Lnitro/phonestats/Main;->stopTrafficRefresher()V

    .line 537
    invoke-virtual {p0}, Lnitro/phonestats/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/NotificationsChecker;->unlock()V

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnitro/phonestats/Main;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 565
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lnitro/phonestats/Main;->extrasClearedOut:Z

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lnitro/phonestats/Main;->whichView:I

    .line 246
    :cond_0
    const-string v0, "2"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    new-instance v0, Lnitro/phonestats/Main$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/Main$1;-><init>(Lnitro/phonestats/Main;)V

    invoke-static {p0, v0}, Lnitro/phonestats/view/StartUpDialogs;->showDialogs(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-direct {p0}, Lnitro/phonestats/Main;->resumeActivity()V

    .line 264
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 553
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 559
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1127
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabScrollBar:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setKeepScreenOn(Z)V

    .line 1128
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1119
    iget-object v0, p0, Lnitro/phonestats/Main;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0, p1, p2}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 1121
    return-void
.end method

.method public setProgressOverlayText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 516
    iget-object v0, p0, Lnitro/phonestats/Main;->mProgressOverlay:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method public showView(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 968
    iget-object v0, p0, Lnitro/phonestats/Main;->mTabBtnBar:Landroid/widget/RadioGroup;

    invoke-direct {p0, p1}, Lnitro/phonestats/Main;->getTabBtnIdByIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 969
    return-void
.end method
