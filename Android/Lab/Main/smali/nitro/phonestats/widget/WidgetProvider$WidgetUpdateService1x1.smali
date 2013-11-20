.class public Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;
.super Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetUpdateService1x1"
.end annotation


# static fields
.field private static final WIDGET_1x1_BUFFER_SLOT1:Ljava/lang/String; = "widget_1x1_buffer_slot1"

.field private static final WIDGET_1x1_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_1x1_buffer_slot1_icon"

.field private static final WIDGET_1x1_BUFFER_SLOT2:Ljava/lang/String; = "widget_1x1_buffer_slot2"

.field private static final WIDGET_1x1_BUFFER_SLOT2_ICON:Ljava/lang/String; = "widget_1x1_buffer_slot2_icon"


# instance fields
.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;-><init>()V

    .line 33
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 34
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 36
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v3, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 37
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 38
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 39
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 40
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v3, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 46
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 47
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d1

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 48
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d0

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 49
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot2"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-object v2, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_1x1_buffer_slot2_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 53
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
    .line 57
    const-string v2, "Widget Update Microwidget"

    invoke-static {v2}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/SettingsWidget;->get1x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, slotConfigs:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v2, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v1
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f030028

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
    .line 70
    const-class v0, Lnitro/phonestats/widget/WidgetProvider;

    return-object v0
.end method

.method protected setOnClickIntents()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00cd

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 79
    return-void
.end method

.method protected setSimpleOnClickIntents()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider$WidgetUpdateService1x1;->setOnClickIntents()V

    .line 85
    return-void
.end method
