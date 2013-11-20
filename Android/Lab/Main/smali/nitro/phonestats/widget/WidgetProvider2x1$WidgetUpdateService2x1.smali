.class public Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;
.super Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.source "WidgetProvider2x1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/WidgetProvider2x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetUpdateService2x1"
.end annotation


# static fields
.field private static final PROGRESS_ID_1:[I = null

.field private static final PROGRESS_ID_2:[I = null

.field private static final WIDGET_2x1_BUFFER_SLOT1:Ljava/lang/String; = "widget_2x1_buffer_slot1"

.field private static final WIDGET_2x1_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_2x1_buffer_slot1_icon"

.field private static final WIDGET_2x1_BUFFER_SLOT1_MAX:Ljava/lang/String; = "widget_2x1_buffer_slot1_max"

.field private static final WIDGET_2x1_BUFFER_SLOT1_PROGRESS:Ljava/lang/String; = "widget_2x1_buffer_slot1_progress"

.field private static final WIDGET_2x1_BUFFER_SLOT2:Ljava/lang/String; = "widget_2x1_buffer_slot2"

.field private static final WIDGET_2x1_BUFFER_SLOT2_ICON:Ljava/lang/String; = "widget_2x1_buffer_slot2_icon"

.field private static final WIDGET_2x1_BUFFER_SLOT2_MAX:Ljava/lang/String; = "widget_2x1_buffer_slot2_max"

.field private static final WIDGET_2x1_BUFFER_SLOT2_PROGRESS:Ljava/lang/String; = "widget_2x1_buffer_slot2_progress"


# instance fields
.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->PROGRESS_ID_1:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->PROGRESS_ID_2:[I

    .line 20
    return-void

    .line 22
    :array_0
    .array-data 0x4
        0xd5t 0x0t 0xat 0x7ft
        0xd6t 0x0t 0xat 0x7ft
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0xd9t 0x0t 0xat 0x7ft
        0xdat 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;-><init>()V

    .line 43
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 44
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 46
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->PROGRESS_ID_1:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 47
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 48
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 49
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot1_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot1_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->PROGRESS_ID_2:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 55
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d1

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 56
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d0

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 57
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot2"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot2_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot2_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_2x1_buffer_slot2_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected getConfig()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-string v3, "Widget Update 2x1"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->get2x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->unitsAdded2x1(Landroid/content/Context;)Z

    move-result v1

    .line 69
    .local v1, displayUnit:Z
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 72
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, slotConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v2
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f030029

    return v0
.end method

.method protected getProvider()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    const-class v0, Lnitro/phonestats/widget/WidgetProvider2x1;

    return-object v0
.end method

.method protected setOnClickIntents()V
    .locals 7

    .prologue
    .line 94
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 96
    .local v1, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnitro/phonestats/settings/core/SettingsWidget;->get2x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 99
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v3

    .line 101
    .local v3, stat2:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->views:Landroid/widget/RemoteViews;

    const v5, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 102
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->views:Landroid/widget/RemoteViews;

    const v5, 0x7f0a00d7

    invoke-virtual {p0, v3}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 103
    return-void
.end method

.method protected setSimpleOnClickIntents()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d3

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d7

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider2x1$WidgetUpdateService2x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    return-void
.end method
