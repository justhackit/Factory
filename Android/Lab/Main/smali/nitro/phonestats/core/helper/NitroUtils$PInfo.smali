.class public Lnitro/phonestats/core/helper/NitroUtils$PInfo;
.super Ljava/lang/Object;
.source "NitroUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/helper/NitroUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PInfo"
.end annotation


# instance fields
.field public appname:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public pname:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->appname:Ljava/lang/String;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->pname:Ljava/lang/String;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->versionName:Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->versionCode:I

    .line 321
    return-void
.end method


# virtual methods
.method public prettyPrint()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->appname:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnitro/phonestats/core/helper/NitroUtils$PInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 329
    return-void
.end method
