.class public Lnitro/phonestats/activities/LogActivity;
.super Landroid/app/Activity;
.source "LogActivity.java"

# interfaces
.implements Lnitro/phonestats/view/StartUpdateTaskView;


# static fields
.field private static final EXPORT_ID:I


# instance fields
.field private mDataChangedHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ExpandableListView;

.field private mProgressOverlay:Landroid/widget/LinearLayout;

.field mSearchBox:Landroid/widget/AutoCompleteTextView;

.field mSearchOverlay:Landroid/view/View;

.field mStatManager:Lnitro/phonestats/core/IStatManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lnitro/phonestats/activities/LogActivity$1;

    invoke-direct {v0, p0}, Lnitro/phonestats/activities/LogActivity$1;-><init>(Lnitro/phonestats/activities/LogActivity;)V

    iput-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mDataChangedHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/activities/LogActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/activities/LogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lnitro/phonestats/activities/LogActivity;->showProgressOverlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lnitro/phonestats/activities/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lnitro/phonestats/activities/LogActivity;->dismissSearchOverlay()V

    return-void
.end method

.method static synthetic access$3(Lnitro/phonestats/activities/LogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    invoke-direct {p0}, Lnitro/phonestats/activities/LogActivity;->showSearchOverlay()V

    return-void
.end method

.method private dismissSearchOverlay()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 233
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 234
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    .line 236
    const v1, 0x7f040016

    .line 235
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_0
    return-void
.end method

.method private doStartupAnalysis()V
    .locals 3

    .prologue
    .line 162
    const-string v1, "2"

    const-string v2, "doStartupAnalysis"

    invoke-static {v1, v2}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v1}, Lnitro/phonestats/core/IStatManager;->firstSyncNeeded()Z

    move-result v0

    .line 165
    .local v0, firstSyncNeeded:Z
    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    const v1, 0x7f07010a

    invoke-virtual {p0, v1}, Lnitro/phonestats/activities/LogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/activities/LogActivity;->showProgressOverlay(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lnitro/phonestats/activities/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v1

    invoke-virtual {v1}, Lnitro/phonestats/core/NotificationsChecker;->lock()V

    .line 172
    new-instance v1, Lnitro/phonestats/StartupUpdateTask;

    invoke-direct {v1, p0, p0, v0}, Lnitro/phonestats/StartupUpdateTask;-><init>(Landroid/content/Context;Lnitro/phonestats/view/StartUpdateTaskView;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lnitro/phonestats/StartupUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private showProgressOverlay(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 176
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    .line 177
    const v1, 0x7f04000f

    .line 176
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 178
    invoke-virtual {p0, p1}, Lnitro/phonestats/activities/LogActivity;->setProgressOverlayText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-void
.end method

.method private showSearchOverlay()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    .line 226
    const v1, 0x7f040015

    .line 225
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissProgressOverlay()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    .line 191
    const v1, 0x7f040010

    .line 190
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v4}, Lnitro/phonestats/activities/LogActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lnitro/phonestats/activities/LogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 67
    const v3, 0x7f030013

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lnitro/phonestats/activities/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    iput-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    .line 70
    const v3, 0x7f0a006d

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    .line 72
    const v3, 0x7f0a006c

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    .line 73
    new-instance v0, Lnitro/phonestats/view/adapters/LogViewAdapter;

    .line 74
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v3}, Lnitro/phonestats/core/IStatManager;->getAnalyzer()Lnitro/phonestats/core/IEventAnalyzer;

    move-result-object v3

    invoke-interface {v3}, Lnitro/phonestats/core/IEventAnalyzer;->getEventlist()Ljava/util/List;

    move-result-object v3

    .line 73
    invoke-direct {v0, p0, v3}, Lnitro/phonestats/view/adapters/LogViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 75
    .local v0, adapter:Lnitro/phonestats/view/adapters/LogViewAdapter;
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 76
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 77
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    .line 78
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 80
    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    .line 81
    const v3, 0x7f0a0011

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    .line 82
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mSearchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lnitro/phonestats/activities/LogActivity$2;

    invoke-direct {v4, p0}, Lnitro/phonestats/activities/LogActivity$2;-><init>(Lnitro/phonestats/activities/LogActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    const v3, 0x7f0a0012

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 110
    .local v1, deletebutton:Landroid/widget/ImageButton;
    new-instance v3, Lnitro/phonestats/activities/LogActivity$3;

    invoke-direct {v3, p0}, Lnitro/phonestats/activities/LogActivity$3;-><init>(Lnitro/phonestats/activities/LogActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget-object v4, p0, Lnitro/phonestats/activities/LogActivity;->mDataChangedHandler:Landroid/os/Handler;

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->addHandler(Landroid/os/Handler;)V

    .line 119
    const v3, 0x7f0a000e

    invoke-virtual {p0, v3}, Lnitro/phonestats/activities/LogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 120
    .local v2, searchBtn:Landroid/widget/Button;
    new-instance v3, Lnitro/phonestats/activities/LogActivity$4;

    invoke-direct {v3, p0}, Lnitro/phonestats/activities/LogActivity$4;-><init>(Lnitro/phonestats/activities/LogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const v1, 0x7f070127

    .line 246
    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 248
    .local v0, item4:Landroid/view/SubMenu;
    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 252
    .end local v0           #item4:Landroid/view/SubMenu;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 209
    sparse-switch p1, :sswitch_data_0

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 211
    :sswitch_0
    invoke-direct {p0}, Lnitro/phonestats/activities/LogActivity;->showSearchOverlay()V

    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v1, p0, Lnitro/phonestats/activities/LogActivity;->mSearchOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-direct {p0}, Lnitro/phonestats/activities/LogActivity;->dismissSearchOverlay()V

    goto :goto_0

    .line 209
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 261
    :pswitch_0
    new-instance v0, Lnitro/phonestats/activities/LogActivity$5;

    invoke-direct {v0, p0, p0}, Lnitro/phonestats/activities/LogActivity$5;-><init>(Lnitro/phonestats/activities/LogActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 266
    invoke-virtual {v0, v1}, Lnitro/phonestats/activities/LogActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 156
    invoke-virtual {p0}, Lnitro/phonestats/activities/LogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/NotificationsChecker;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;

    move-result-object v0

    invoke-virtual {v0}, Lnitro/phonestats/core/NotificationsChecker;->unlock()V

    .line 157
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    iget-object v1, p0, Lnitro/phonestats/activities/LogActivity;->mDataChangedHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lnitro/phonestats/core/IStatManager;->removeHandler(Landroid/os/Handler;)V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lnitro/phonestats/backup/DroidStatsBackupManager;->setHandler(Landroid/os/Handler;)V

    .line 139
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getLastUpdated()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/StatsUtils;->needsUpdate(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "No update of data"

    invoke-static {p0, v0}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lnitro/phonestats/view/adapters/LogViewAdapter;

    .line 142
    iget-object v2, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v2}, Lnitro/phonestats/core/IStatManager;->getAnalyzer()Lnitro/phonestats/core/IEventAnalyzer;

    move-result-object v2

    invoke-interface {v2}, Lnitro/phonestats/core/IEventAnalyzer;->getEventlist()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnitro/phonestats/view/adapters/LogViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->resetStats()V

    .line 147
    invoke-direct {p0}, Lnitro/phonestats/activities/LogActivity;->doStartupAnalysis()V

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 205
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 197
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mStatManager:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0, p1, p2}, Lnitro/phonestats/core/IStatManager;->setLastUpdated(J)V

    .line 199
    return-void
.end method

.method public setProgressOverlayText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 184
    iget-object v0, p0, Lnitro/phonestats/activities/LogActivity;->mProgressOverlay:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
