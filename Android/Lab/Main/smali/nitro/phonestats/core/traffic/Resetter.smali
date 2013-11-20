.class public Lnitro/phonestats/core/traffic/Resetter;
.super Landroid/content/BroadcastReceiver;
.source "Resetter.java"


# static fields
.field public static final ACTION_RESET_COUNTERS:Ljava/lang/String; = "nitro.phonestats.ACTION_RESET_COUNTERS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static broadcastResetIntent(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "interfaceStatsUri"

    .prologue
    .line 112
    invoke-static {p1}, Lnitro/phonestats/core/traffic/Resetter;->createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public static createResetterIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "interfaceStatsUri"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "nitro.phonestats.ACTION_RESET_COUNTERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, resetIntent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "vnd.android.cursor.item/interfacestats"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "This receiver can only work on vnd.android.cursor.item/interfacestats data items."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 47
    .local v17, newResetTime:J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 50
    .local v3, interfaceStatsUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 51
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    const-string v2, "BytesReceived"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 53
    .local v8, bytesReceived:J
    const-string v2, "BytesSent"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 54
    .local v10, bytesSent:J
    const-string v2, "LastReset"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 55
    .local v19, oldResetTime:J
    const-string v2, "InterfaceName"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 56
    .local v21, period:Ljava/lang/String;
    const-string v2, "InterfaceName"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->getConnectionType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, connectionType:Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 62
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "BytesReceived"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v2, "BytesSent"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v2, "LastUpdate"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v2, "LastReset"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    const-string v2, "NotificationLevel"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v23, values2:Landroid/content/ContentValues;
    const-string v2, "bytesIn"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v2, "bytesOut"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v2, "type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "period"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "timeBegin"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v2, "timeEnd"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_TRAFFIC:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/settings/core/Settings;->useAPNDroid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 83
    .local v14, cursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    const-string v2, "InterfaceAlias"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, interfaceAlias:Ljava/lang/String;
    const v2, 0x7f07017b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static/range {p1 .. p1}, Lnitro/phonestats/core/traffic/JuiceDefenderIntegration;->allowMobileData(Landroid/content/Context;)V

    .line 96
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #interfaceAlias:Ljava/lang/String;
    :cond_1
    new-instance v15, Landroid/content/Intent;

    const-string v2, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v15, intent2:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
