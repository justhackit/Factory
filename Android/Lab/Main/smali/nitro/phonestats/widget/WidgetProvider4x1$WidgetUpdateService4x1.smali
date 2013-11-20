.class public Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;
.super Lnitro/phonestats/widget/HomescreenWidgetUpdateService;
.source "WidgetProvider4x1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/WidgetProvider4x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetUpdateService4x1"
.end annotation


# static fields
.field private static final PROGRESS_ID_1:[I = null

.field private static final PROGRESS_ID_2:[I = null

.field private static final PROGRESS_ID_3:[I = null

.field private static final PROGRESS_ID_4:[I = null

.field private static final WIDGET_4x1_BUFFER_SLOT1:Ljava/lang/String; = "widget_4x1_buffer_slot1"

.field private static final WIDGET_4x1_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_4x1_buffer_slot1_icon"

.field private static final WIDGET_4x1_BUFFER_SLOT1_MAX:Ljava/lang/String; = "widget_4x1_buffer_slot1_max"

.field private static final WIDGET_4x1_BUFFER_SLOT1_PROGRESS:Ljava/lang/String; = "widget_4x1_buffer_slot1_progress"

.field private static final WIDGET_4x1_BUFFER_SLOT2:Ljava/lang/String; = "widget_4x1_buffer_slot2"

.field private static final WIDGET_4x1_BUFFER_SLOT2_ICON:Ljava/lang/String; = "widget_4x1_buffer_slot2_icon"

.field private static final WIDGET_4x1_BUFFER_SLOT2_MAX:Ljava/lang/String; = "widget_4x1_buffer_slot2_max"

.field private static final WIDGET_4x1_BUFFER_SLOT2_PROGRESS:Ljava/lang/String; = "widget_4x1_buffer_slot2_progress"

.field private static final WIDGET_4x1_BUFFER_SLOT3:Ljava/lang/String; = "widget_4x1_buffer_slot3"

.field private static final WIDGET_4x1_BUFFER_SLOT3_ICON:Ljava/lang/String; = "widget_4x1_buffer_slot3_icon"

.field private static final WIDGET_4x1_BUFFER_SLOT3_MAX:Ljava/lang/String; = "widget_4x1_buffer_slot3_max"

.field private static final WIDGET_4x1_BUFFER_SLOT3_PROGRESS:Ljava/lang/String; = "widget_4x1_buffer_slot3_progress"

.field private static final WIDGET_4x1_BUFFER_SLOT4:Ljava/lang/String; = "widget_4x1_buffer_slot4"

.field private static final WIDGET_4x1_BUFFER_SLOT4_ICON:Ljava/lang/String; = "widget_4x1_buffer_slot4_icon"

.field private static final WIDGET_4x1_BUFFER_SLOT4_MAX:Ljava/lang/String; = "widget_4x1_buffer_slot4_max"

.field private static final WIDGET_4x1_BUFFER_SLOT4_PROGRESS:Ljava/lang/String; = "widget_4x1_buffer_slot4_progress"


# instance fields
.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_1:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_2:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_3:[I

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_4:[I

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

    .line 24
    :array_2
    .array-data 0x4
        0xe3t 0x0t 0xat 0x7ft
        0xe4t 0x0t 0xat 0x7ft
    .end array-data

    .line 25
    :array_3
    .array-data 0x4
        0xe0t 0x0t 0xat 0x7ft
        0xe1t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lnitro/phonestats/widget/HomescreenWidgetUpdateService;-><init>()V

    .line 55
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 56
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 57
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 58
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 60
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_1:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 61
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 62
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 63
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot1_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot1_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_2:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 69
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d1

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 70
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d0

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 71
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot2"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot2_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot2_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot2_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_3:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 77
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00de

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 78
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00dd

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 79
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot3"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot3_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot3_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot3_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->PROGRESS_ID_4:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 85
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00e7

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 86
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00e6

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 87
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot4"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot4_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot4_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_4x1_buffer_slot4_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 91
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
    .line 95
    const-string v3, "Widget Update 4x1"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->get4x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/settings/core/SettingsWidget;->unitsAdded4x1(Landroid/content/Context;)Z

    move-result v1

    .line 99
    .local v1, displayUnit:Z
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 102
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 105
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 108
    iget-object v4, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v3, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, slotConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-object v2
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f03002b

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
    const-class v0, Lnitro/phonestats/widget/WidgetProvider4x1;

    return-object v0
.end method

.method protected setOnClickIntents()V
    .locals 9

    .prologue
    .line 133
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    .line 135
    .local v1, model:Lnitro/phonestats/core/IStatManager;
    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lnitro/phonestats/settings/core/SettingsWidget;->get4x1Configuration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    .line 138
    .local v2, stat:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v3

    .line 139
    .local v3, stat2:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v4

    .line 140
    .local v4, stat3:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v5

    .line 142
    .local v5, stat4:Lnitro/phonestats/core/stat/Stat;,"Lnitro/phonestats/core/stat/Stat<*>;"
    iget-object v6, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v7, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 143
    iget-object v6, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v7, 0x7f0a00d7

    invoke-virtual {p0, v3}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    iget-object v6, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v7, 0x7f0a00dc

    invoke-virtual {p0, v4}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    iget-object v6, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v7, 0x7f0a00e5

    invoke-virtual {p0, v5}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->decideIntent(Lnitro/phonestats/core/stat/Stat;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    return-void
.end method

.method protected setSimpleOnClickIntents()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d3

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 152
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00d7

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00dc

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 154
    iget-object v0, p0, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->views:Landroid/widget/RemoteViews;

    const v1, 0x7f0a00e5

    invoke-virtual {p0}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnitro/phonestats/widget/WidgetProvider4x1$WidgetUpdateService4x1;->createAppOpenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 156
    return-void
.end method
