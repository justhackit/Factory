.class public Lnitro/phonestats/widget/BaseWidgetUpdateService$WidgetSlotConfig;
.super Ljava/lang/Object;
.source "BaseWidgetUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/widget/BaseWidgetUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetSlotConfig"
.end annotation


# instance fields
.field public bufferIdIcon:Ljava/lang/String;

.field public bufferIdProgress:Ljava/lang/String;

.field public bufferIdProgressMax:Ljava/lang/String;

.field public bufferIdText:Ljava/lang/String;

.field public iconId:I

.field public iconLevel:I

.field public progressBarIds:[I

.field public statId:Ljava/lang/String;

.field public textId:I

.field public unitDisplayed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
