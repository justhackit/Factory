.class public Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;
.super Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetUpdateService1x1_1Slot"
.end annotation


# static fields
.field private static final PROGRESS_ID_1:[I = null

.field private static final WIDGET_1x1_BUFFER_SLOT1:Ljava/lang/String; = "widget_1x1_buffer_slot1"

.field private static final WIDGET_1x1_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_1x1_buffer_slot1_icon"

.field private static final WIDGET_1x1_BUFFER_SLOT1_MAX:Ljava/lang/String; = "widget_1x1_buffer_slot1_max"

.field private static final WIDGET_1x1_BUFFER_SLOT1_PROGRESS:Ljava/lang/String; = "widget_1x1_buffer_slot1_progress"


# instance fields
.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->PROGRESS_ID_1:[I

    .line 89
    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0xd5t 0x0t 0xat 0x7ft
        0xd6t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;-><init>()V

    .line 101
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 103
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->PROGRESS_ID_1:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 104
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 105
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 106
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method protected getConfig()Ljava/util/List;
    .locals 4
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
    .line 115
    const-string v2, "Widget Update Microwidget 1Slot"

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/SettingsWidget;->get1x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->unitsAdded1x1_OneSlot(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v2, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, slotConfigs:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v2, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-object v1
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f03002c

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
    .line 126
    const-class v0, Lnitro/phonestats/widget/WidgetProvider;

    return-object v0
.end method

.method protected setOnClickIntents()V
    .locals 6

    .prologue
    .line 134
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 136
    .local v1, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->get1x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 140
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->views:Landroid/widget/RemoteViews;

    const v4, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 141
    return-void
.end method

.method protected setSimpleOnClickIntents()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1_1Slot;->setOnClickIntents()V

    .line 147
    return-void
.end method
