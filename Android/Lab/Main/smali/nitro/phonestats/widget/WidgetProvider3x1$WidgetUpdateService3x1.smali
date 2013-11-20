.class public Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;
.super Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.source "WidgetProvider3x1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/WidgetProvider3x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetUpdateService3x1"
.end annotation


# static fields
.field private static final PROGRESS_ID_1:[I = null

.field private static final PROGRESS_ID_2:[I = null

.field private static final PROGRESS_ID_3:[I = null

.field private static final WIDGET_3x1_BUFFER_SLOT1:Ljava/lang/String; = "widget_3x1_buffer_slot1"

.field private static final WIDGET_3x1_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_3x1_buffer_slot1_icon"

.field private static final WIDGET_3x1_BUFFER_SLOT1_MAX:Ljava/lang/String; = "widget_3x1_buffer_slot1_max"

.field private static final WIDGET_3x1_BUFFER_SLOT1_PROGRESS:Ljava/lang/String; = "widget_3x1_buffer_slot1_progress"

.field private static final WIDGET_3x1_BUFFER_SLOT2:Ljava/lang/String; = "widget_3x1_buffer_slot2"

.field private static final WIDGET_3x1_BUFFER_SLOT2_ICON:Ljava/lang/String; = "widget_3x1_buffer_slot2_icon"

.field private static final WIDGET_3x1_BUFFER_SLOT2_MAX:Ljava/lang/String; = "widget_3x1_buffer_slot2_max"

.field private static final WIDGET_3x1_BUFFER_SLOT2_PROGRESS:Ljava/lang/String; = "widget_3x1_buffer_slot2_progress"

.field private static final WIDGET_3x1_BUFFER_SLOT3:Ljava/lang/String; = "widget_3x1_buffer_slot3"

.field private static final WIDGET_3x1_BUFFER_SLOT3_ICON:Ljava/lang/String; = "widget_3x1_buffer_slot3_icon"

.field private static final WIDGET_3x1_BUFFER_SLOT3_MAX:Ljava/lang/String; = "widget_3x1_buffer_slot3_max"

.field private static final WIDGET_3x1_BUFFER_SLOT3_PROGRESS:Ljava/lang/String; = "widget_3x1_buffer_slot3_progress"


# instance fields
.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_1:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_2:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_3:[I

    .line 20
    return-void

    .line 22
    nop

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

    .line 24
    :array_2
    .array-data 0x4
        0xe0t 0x0t 0xat 0x7ft
        0xe1t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;-><init>()V

    .line 49
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 50
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 51
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 53
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_1:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 54
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 55
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 56
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot1_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot1_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_2:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 62
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d1

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 63
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d0

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 64
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot2"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot2_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot2_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot2_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->PROGRESS_ID_3:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 70
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00de

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 71
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00dd

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 72
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot3"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot3_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot3_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_3x1_buffer_slot3_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 76
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
    .line 80
    const-string v3, "Widget Update 3x1"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->get3x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->unitsAdded3x1(Landroid/content/Context;)Z

    move-result v1

    .line 84
    .local v1, displayUnit:Z
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 87
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 90
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v2, slotConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v2
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f03002a

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
    .line 107
    const-class v0, Lnitro/phonestats/widget/WidgetProvider3x1;

    return-object v0
.end method

.method protected setOnClickIntents()V
    .locals 8

    .prologue
    .line 114
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 116
    .local v1, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/settings/core/SettingsWidget;->get3x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 119
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v3

    .line 120
    .local v3, stat2:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v4

    .line 122
    .local v4, stat3:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    iget-object v5, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v6, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 123
    iget-object v5, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v6, 0x7f0a00d7

    invoke-virtual {p0, v3}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 124
    iget-object v5, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v6, 0x7f0a00dc

    invoke-virtual {p0, v4}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 126
    return-void
.end method

.method protected setSimpleOnClickIntents()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d3

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 131
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d7

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 132
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00dc

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider3x1$WidgetUpdateService3x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    return-void
.end method
