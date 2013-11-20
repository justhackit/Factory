.class Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "InterfaceStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/traffic/InterfaceStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 365
    const-string v0, "datacounters.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 366
    iput-object p1, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 367
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-wide/16 v4, 0x0

    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 376
    .local v0, valuesLoopback:Landroid/content/ContentValues;
    const-string v1, "CREATE TABLE InterfaceStats (_id INTEGER PRIMARY KEY,InterfaceName TEXT,InterfaceAlias TEXT,BytesReceived INTEGER,BytesReceivedSystem INTEGER,BytesSent INTEGER,BytesSentSystem INTEGER,BytesTransmissionLimit INTEGER,ResetCronExpression TEXT,ShowInList INTEGER,NotificationLevel INTEGER,LastUpdate INTEGER,LastReset INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    const-string v1, "InterfaceName"

    const-string v2, "lo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "InterfaceAlias"

    iget-object v2, p0, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 394
    const v3, 0x7f07017d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "ShowInList"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    const-string v1, "BytesTransmissionLimit"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 397
    #calls: Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->setDefaultInterfaceStatsValues(Landroid/content/ContentValues;)V
    invoke-static {v0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->access$0(Landroid/content/ContentValues;)V

    .line 398
    const-string v1, "InterfaceStats"

    .line 399
    const-string v2, "ResetCronExpression"

    .line 398
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 400
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 407
    const-string v0, "DROP TABLE IF EXISTS InterfaceStats"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 409
    return-void
.end method
