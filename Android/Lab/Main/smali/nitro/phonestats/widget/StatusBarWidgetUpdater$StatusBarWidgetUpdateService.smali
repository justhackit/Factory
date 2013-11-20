.class public Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;
.super Lnitro/phonestats/widget/BaseWidgetUpdateService;
.source "StatusBarWidgetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/StatusBarWidgetUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusBarWidgetUpdateService"
.end annotation


# static fields
.field private static final PROGRESS_ID_1:[I = null

.field private static final PROGRESS_ID_2:[I = null

.field private static final PROGRESS_ID_3:[I = null

.field private static final PROGRESS_ID_4:[I = null

.field public static final THEME_DARK:I = 0x1

.field public static final THEME_LIGHT:I = 0x0

.field public static final THEME_SENSE:I = 0x2

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT1:Ljava/lang/String; = "widget_statusbar_buffer_slot1"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT1_ICON:Ljava/lang/String; = "widget_statusbar_buffer_slot1_icon"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT1_MAX:Ljava/lang/String; = "widget_statusbar_buffer_slot1_max"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT1_PROGRESS:Ljava/lang/String; = "widget_statusbar_buffer_slot1_progress"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT2:Ljava/lang/String; = "widget_statusbar_buffer_slot2"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT2_ICON:Ljava/lang/String; = "widget_statusbar_buffer_slot2_icon"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT2_MAX:Ljava/lang/String; = "widget_statusbar_buffer_slot2_max"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT2_PROGRESS:Ljava/lang/String; = "widget_statusbar_buffer_slot2_progress"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT3:Ljava/lang/String; = "widget_statusbar_buffer_slot3"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT3_ICON:Ljava/lang/String; = "widget_statusbar_buffer_slot3_icon"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT3_MAX:Ljava/lang/String; = "widget_statusbar_buffer_slot3_max"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT3_PROGRESS:Ljava/lang/String; = "widget_statusbar_buffer_slot3_progress"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT4:Ljava/lang/String; = "widget_statusbar_buffer_slot4"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT4_ICON:Ljava/lang/String; = "widget_statusbar_buffer_slot4_icon"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT4_MAX:Ljava/lang/String; = "widget_statusbar_buffer_slot4_max"

.field private static final WIDGET_STATUSBAR_BUFFER_SLOT4_PROGRESS:Ljava/lang/String; = "widget_statusbar_buffer_slot4_progress"


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;

.field private slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

.field private slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_1:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_2:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_3:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_4:[I

    .line 40
    return-void

    .line 46
    :array_0
    .array-data 0x4
        0xd5t 0x0t 0xat 0x7ft
        0xd6t 0x0t 0xat 0x7ft
    .end array-data

    .line 47
    :array_1
    .array-data 0x4
        0xd9t 0x0t 0xat 0x7ft
        0xdat 0x0t 0xat 0x7ft
    .end array-data

    .line 48
    :array_2
    .array-data 0x4
        0xe3t 0x0t 0xat 0x7ft
        0xe4t 0x0t 0xat 0x7ft
    .end array-data

    .line 49
    :array_3
    .array-data 0x4
        0xe0t 0x0t 0xat 0x7ft
        0xe1t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lnitro/phonestats/widget/BaseWidgetUpdateService;-><init>()V

    .line 81
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 82
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 83
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 84
    new-instance v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-direct {v0}, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;-><init>()V

    iput-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    .line 86
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_1:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 87
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00cf

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 88
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00ce

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 89
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot1"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot1_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot1_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot1_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_2:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 95
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d1

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 96
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00d0

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 97
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot2"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot2_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot2_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot2_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_3:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 103
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00de

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 104
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00dd

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 105
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot3"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot3_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot3_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot3_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    sget-object v1, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->PROGRESS_ID_4:[I

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->progressBarIds:[I

    .line 111
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00e7

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->textId:I

    .line 112
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const v1, 0x7f0a00e6

    iput v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconId:I

    .line 113
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot4"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdText:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot4_progress"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgress:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot4_max"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdProgressMax:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const-string v1, "widget_statusbar_buffer_slot4_icon"

    iput-object v1, v0, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->bufferIdIcon:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private updateWidget()V
    .locals 9

    .prologue
    .line 186
    const-string v4, "status bar update in Progress"

    invoke-static {v4}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 187
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 190
    .local v3, notification:Landroid/app/Notification;
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lnitro/phonestats/Main;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    .line 190
    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 192
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 193
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    const-wide v1, -0x7fffffffffffffffL

    .line 194
    .local v1, hiddenTime:J
    :goto_0
    iput-wide v1, v3, Landroid/app/Notification;->when:J

    .line 195
    const v4, 0x7f0200a2

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 197
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-static {}, Lnitro/phonestats/core/helper/StatsUtils;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getLayout()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    .line 210
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->setBufferedValues2()V

    .line 212
    iget-object v4, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->views:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 214
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 217
    iget-object v4, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 219
    return-void

    .line 193
    .end local v1           #hiddenTime:J
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0
.end method


# virtual methods
.method protected getConfig()Ljava/util/List;
    .locals 7
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
    .line 121
    const-string v5, "Update Status Bar Widget"

    invoke-static {v5}, Lnitro/phonestats/core/helper/NitroUtils;->debug(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/settings/core/SettingsWidget;->getStatusBarWidgetConfiguration(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/settings/core/SettingsWidget;->unitsAddedStatusBar(Landroid/content/Context;)Z

    move-result v1

    .line 124
    .local v1, displayUnit:Z
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/settings/core/SettingsWidget;->getStatusBarWidgetTheme(Landroid/content/Context;)I

    move-result v4

    .line 125
    .local v4, theme:I
    const/4 v2, 0x0

    .line 126
    .local v2, iconImgLvl:I
    packed-switch v4, :pswitch_data_0

    .line 136
    :goto_0
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput v2, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    .line 137
    iget-object v6, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 140
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput v2, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    .line 141
    iget-object v6, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 144
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput v2, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    .line 145
    iget-object v6, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 148
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput v2, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->iconLevel:I

    .line 149
    iget-object v6, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->statId:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    iput-boolean v1, v5, Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;->unitDisplayed:Z

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, slotConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot1Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot2Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot3Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v5, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->slot4Config:Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v3

    .line 128
    .end local v3           #slotConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;>;"
    :pswitch_0
    const/4 v2, 0x1

    .line 129
    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayout()I
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/SettingsWidget;->getStatusBarWidgetTheme(Landroid/content/Context;)I

    move-result v0

    .line 163
    .local v0, theme:I
    packed-switch v0, :pswitch_data_0

    .line 170
    const v1, 0x7f03002e

    :goto_0
    return v1

    .line 165
    :pswitch_0
    const v1, 0x7f03002d

    goto :goto_0

    .line 167
    :pswitch_1
    const v1, 0x7f03002f

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 177
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    const-string v1, "notification"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->notificationManager:Landroid/app/NotificationManager;

    .line 180
    invoke-direct {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->updateWidget()V

    .line 182
    invoke-virtual {p0}, Lnitro/phonestats/widget/StatusBarWidgetUpdater$StatusBarWidgetUpdateService;->stopSelf()V

    .line 183
    return-void
.end method
