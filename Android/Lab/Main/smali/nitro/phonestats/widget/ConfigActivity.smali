.class public Lnitro/phonestats/widget/ConfigActivity;
.super Landroid/app/Activity;
.source "ConfigActivity.java"


# static fields
.field private static final WIDGET1x1:I = 0x1

.field private static final WIDGET1x2:I = 0x2

.field private static final WIDGET1x3:I = 0x3

.field private static final WIDGET1x4:I = 0x4


# instance fields
.field private flipper:Landroid/widget/ViewFlipper;

.field private mAppWidgetId:I

.field private previewFlipper:Landroid/widget/ViewFlipper;

.field private slot1:Landroid/widget/TextView;

.field private slot2:Landroid/widget/TextView;

.field private slot3:Landroid/widget/TextView;

.field private slot4:Landroid/widget/TextView;

.field private widgetType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/widget/ConfigActivity;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lnitro/phonestats/widget/ConfigActivity;->flipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1(Lnitro/phonestats/widget/ConfigActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    return v0
.end method

.method static synthetic access$2(Lnitro/phonestats/widget/ConfigActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lnitro/phonestats/widget/ConfigActivity;->mAppWidgetId:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x4

    .line 53
    const/4 v12, 0x4

    .line 52
    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 54
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 59
    const v10, 0x7f030030

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->setContentView(I)V

    .line 61
    const v10, 0x7f0a00eb

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    .line 62
    const v10, 0x7f0a00ed

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->slot2:Landroid/widget/TextView;

    .line 63
    const v10, 0x7f0a00f0

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->slot3:Landroid/widget/TextView;

    .line 64
    const v10, 0x7f0a00f2

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->slot4:Landroid/widget/TextView;

    .line 66
    const v10, 0x7f0a00e8

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewFlipper;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 67
    iget-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 69
    const v10, 0x7f0a00f3

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewFlipper;

    iput-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    .line 72
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lnitro/phonestats/widget/ConfigActivity$1;

    invoke-direct {v11, p0}, Lnitro/phonestats/widget/ConfigActivity$1;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 83
    const v10, 0x7f0a00f6

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 88
    .local v4, configureButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 89
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 90
    .local v5, extras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 92
    const-string v10, "appWidgetId"

    .line 93
    const/4 v11, 0x0

    .line 91
    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lnitro/phonestats/widget/ConfigActivity;->mAppWidgetId:I

    .line 95
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 100
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v9, 0x0

    .line 102
    .local v9, views:Landroid/widget/RemoteViews;
    iget v10, p0, Lnitro/phonestats/widget/ConfigActivity;->mAppWidgetId:I

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    iget-object v8, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 103
    .local v8, provider:Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 104
    const-class v10, Lnitro/phonestats/widget/WidgetProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lnitro/phonestats/widget/WidgetProvider;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 107
    const v10, 0x7f0a00ee

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const v10, 0x7f0a00f1

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->use1SlotWidget(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 110
    const v10, 0x7f0a00ec

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03002c

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 115
    .restart local v9       #views:Landroid/widget/RemoteViews;
    :goto_0
    const/4 v10, 0x1

    iput v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    .line 137
    :cond_0
    :goto_1
    iget v10, p0, Lnitro/phonestats/widget/ConfigActivity;->mAppWidgetId:I

    invoke-virtual {v1, v10, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 139
    const/4 v10, 0x0

    invoke-static {p0, v10}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v7

    .line 140
    .local v7, premium:Z
    const v10, 0x7f0a00f7

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 142
    .local v0, addWidgetButton:Landroid/widget/Button;
    iget v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    if-nez v7, :cond_7

    .line 144
    iget-object v10, p0, Lnitro/phonestats/widget/ConfigActivity;->flipper:Landroid/widget/ViewFlipper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 145
    const v10, 0x7f0a00f8

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 146
    .local v3, button:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$2;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$2;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .end local v3           #button:Landroid/widget/Button;
    :cond_1
    :goto_2
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$7;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$7;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .end local v0           #addWidgetButton:Landroid/widget/Button;
    .end local v1           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v7           #premium:Z
    .end local v8           #provider:Landroid/content/ComponentName;
    .end local v9           #views:Landroid/widget/RemoteViews;
    :cond_2
    return-void

    .line 113
    .restart local v1       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v8       #provider:Landroid/content/ComponentName;
    .restart local v9       #views:Landroid/widget/RemoteViews;
    :cond_3
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030028

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v9       #views:Landroid/widget/RemoteViews;
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lnitro/phonestats/widget/WidgetProvider2x1;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    const v10, 0x7f0a00ee

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v10, 0x7f0a00f1

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 121
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030029

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 122
    .restart local v9       #views:Landroid/widget/RemoteViews;
    const/4 v10, 0x2

    iput v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    goto/16 :goto_1

    .line 124
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lnitro/phonestats/widget/WidgetProvider3x1;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 126
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03002a

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 127
    .restart local v9       #views:Landroid/widget/RemoteViews;
    const v10, 0x7f0a00f1

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const/4 v10, 0x3

    iput v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    goto/16 :goto_1

    .line 130
    :cond_6
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lnitro/phonestats/widget/WidgetProvider4x1;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 132
    new-instance v9, Landroid/widget/RemoteViews;

    .end local v9           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03002b

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 133
    .restart local v9       #views:Landroid/widget/RemoteViews;
    const/4 v10, 0x4

    iput v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    goto/16 :goto_1

    .line 160
    .restart local v0       #addWidgetButton:Landroid/widget/Button;
    .restart local v7       #premium:Z
    :cond_7
    iget v10, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    if-nez v7, :cond_8

    .line 162
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$3;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$3;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v10, 0x7f0a00fb

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 173
    .restart local v3       #button:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$4;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$4;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v10, 0x7f0a00fa

    invoke-virtual {p0, v10}, Lnitro/phonestats/widget/ConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 186
    .local v2, backButton:Landroid/widget/Button;
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$5;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$5;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 195
    .end local v2           #backButton:Landroid/widget/Button;
    .end local v3           #button:Landroid/widget/Button;
    :cond_8
    if-eqz v7, :cond_1

    .line 196
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    new-instance v10, Lnitro/phonestats/widget/ConfigActivity$6;

    invoke-direct {v10, p0}, Lnitro/phonestats/widget/ConfigActivity$6;-><init>(Lnitro/phonestats/widget/ConfigActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const v12, 0x7f0a00ce

    const v11, 0x7f07003d

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v2

    .line 239
    .local v2, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, statNames:[Ljava/lang/String;
    invoke-virtual {p0}, Lnitro/phonestats/widget/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, statKeys:[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v3, statChoices:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-lt v1, v6, :cond_0

    .line 247
    iget v6, p0, Lnitro/phonestats/widget/ConfigActivity;->widgetType:I

    packed-switch v6, :pswitch_data_0

    .line 293
    invoke-static {p0}, Lnitro/phonestats/settings/core/SettingsWidget;->get4x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot2:Landroid/widget/TextView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot3:Landroid/widget/TextView;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot4:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 300
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00de

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00e7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00e6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    :goto_1
    return-void

    .line 244
    .end local v0           #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    aget-object v6, v4, v1

    aget-object v7, v5, v1

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 249
    :pswitch_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/SettingsWidget;->get1x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 251
    .restart local v0       #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->use1SlotWidget(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v8}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 254
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot2:Landroid/widget/TextView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v9}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 260
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 267
    .end local v0           #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {p0}, Lnitro/phonestats/settings/core/SettingsWidget;->get2x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 268
    .restart local v0       #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot2:Landroid/widget/TextView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v10}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 272
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 278
    .end local v0           #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {p0}, Lnitro/phonestats/settings/core/SettingsWidget;->get3x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 279
    .restart local v0       #configs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot1:Landroid/widget/TextView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot2:Landroid/widget/TextView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v7, p0, Lnitro/phonestats/widget/ConfigActivity;->slot3:Landroid/widget/TextView;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 284
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00de

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07003b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v6, p0, Lnitro/phonestats/widget/ConfigActivity;->previewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a00dd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v7

    invoke-virtual {v7}, Lnitro/phonestats/core/stat/Stat;->getIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
