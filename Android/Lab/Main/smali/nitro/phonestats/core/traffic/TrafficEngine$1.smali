.class Lnitro/phonestats/core/traffic/TrafficEngine$1;
.super Ljava/lang/Object;
.source "TrafficEngine.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/traffic/TrafficEngine;->registerSharedPreferencesListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/core/traffic/TrafficEngine$1;->val$context:Landroid/content/Context;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 230
    const-string v1, "pref_update_intervall_traffic"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lnitro/phonestats/core/traffic/TrafficEngine$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lnitro/phonestats/core/traffic/TrafficEngine;->scheduleAutomaticUpdates(Landroid/content/Context;)V

    .line 232
    const-string v1, "update intervall changed"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v1, "traffic_usage_threshold_medium"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    const-string v1, "traffic_usage_threshold_high"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :cond_2
    iget-object v1, p0, Lnitro/phonestats/core/traffic/TrafficEngine$1;->val$context:Landroid/content/Context;

    .line 241
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 240
    check-cast v7, Landroid/app/NotificationManager;

    .line 242
    .local v7, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 245
    iget-object v1, p0, Lnitro/phonestats/core/traffic/TrafficEngine$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lnitro/phonestats/core/traffic/TrafficEngine;->access$0()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 249
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 251
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 253
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "NotificationLevel"

    .line 255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 254
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    sget-object v1, Lnitro/phonestats/core/traffic/InterfaceStatsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method
