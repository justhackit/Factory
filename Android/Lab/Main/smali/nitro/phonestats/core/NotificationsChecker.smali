.class public Lnitro/phonestats/core/NotificationsChecker;
.super Ljava/lang/Object;
.source "NotificationsChecker.java"


# static fields
.field private static final CALLLIMIT_NOTIFICATION:I = 0x2

.field private static final COSTLIMIT_NOTIFICATION:I = 0x5

.field public static final PERSISTENT_NOTIFICATION:I = 0x4

.field private static final SMSLIMIT_NOTIFICATION:I = 0x3

.field private static final UNITLIMIT_NOTIFICATION:I = 0x6

.field private static calltimelimit:I

.field private static instance:Lnitro/phonestats/core/NotificationsChecker;

.field private static smslimit:I

.field private static threshold:D

.field private static useLimit:Z

.field private static useSMSLimit:Z


# instance fields
.field private costlimit:D

.field private ctx:Landroid/content/Context;

.field private lock:Z

.field private model:Lnitro/phonestats/core/IStatManager;

.field private unitlimit:I

.field private useCallNotifications:Z

.field private useCostLimit:Z

.field private useCostsNotifications:Z

.field private useDataNotifications:Z

.field private useSmsNotifications:Z

.field private useUnitLimit:Z

.field private useUnitsNotifications:Z

.field private widgetNotification:Landroid/app/Notification;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v0

    iput-object v0, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    .line 53
    return-void
.end method

.method private checkCallNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 11
    .parameter "remainingMinutes"
    .parameter "notificationManager"
    .parameter "contentIntent"

    .prologue
    const v10, 0x108008a

    const/4 v9, 0x2

    .line 258
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 261
    new-instance v0, Landroid/app/Notification;

    .line 263
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f070134

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 266
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 267
    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 268
    const v4, 0x7f070131

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 288
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    long-to-double v1, p1

    sget v3, Lnitro/phonestats/core/NotificationsChecker;->calltimelimit:I

    int-to-double v3, v3

    sget-wide v5, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    .line 274
    sget v7, Lnitro/phonestats/core/NotificationsChecker;->calltimelimit:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 277
    new-instance v0, Landroid/app/Notification;

    .line 279
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f070133

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 277
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 281
    .restart local v0       #notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 282
    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 283
    const v4, 0x7f070132

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private checkCostNotifications(DLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "remainingCosts"
    .parameter "notificationManager"
    .parameter "contentIntent"

    .prologue
    const v8, 0x108008a

    const/4 v7, 0x5

    .line 194
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_1

    .line 197
    new-instance v0, Landroid/app/Notification;

    .line 199
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f070138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 197
    invoke-direct {v0, v8, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 201
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 202
    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 203
    const v4, 0x7f070135

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 205
    invoke-virtual {p3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 221
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-wide v1, p0, Lnitro/phonestats/core/NotificationsChecker;->costlimit:D

    sget-wide v3, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    iget-wide v5, p0, Lnitro/phonestats/core/NotificationsChecker;->costlimit:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    .line 210
    new-instance v0, Landroid/app/Notification;

    .line 212
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f070137

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    invoke-direct {v0, v8, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 214
    .restart local v0       #notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 215
    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 216
    const v4, 0x7f070136

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 218
    invoke-virtual {p3, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private checkSMSNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 11
    .parameter "remainingSms"
    .parameter "notificationManager"
    .parameter "contentIntent"

    .prologue
    const v10, 0x108008a

    const/4 v9, 0x3

    .line 226
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 229
    new-instance v0, Landroid/app/Notification;

    .line 231
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f07012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 233
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 234
    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 235
    const v4, 0x7f070130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 237
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 253
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    long-to-double v1, p1

    sget v3, Lnitro/phonestats/core/NotificationsChecker;->smslimit:I

    int-to-double v3, v3

    sget-wide v5, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    sget v7, Lnitro/phonestats/core/NotificationsChecker;->smslimit:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 242
    new-instance v0, Landroid/app/Notification;

    .line 244
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f07012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 242
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 246
    .restart local v0       #notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 247
    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 248
    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private checkUnitNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    .locals 11
    .parameter "remainingUnits"
    .parameter "notificationManager"
    .parameter "contentIntent"

    .prologue
    const v10, 0x108008a

    const/4 v9, 0x6

    .line 162
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 165
    new-instance v0, Landroid/app/Notification;

    .line 167
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 165
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 169
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 170
    const v3, 0x7f07012e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 171
    const v4, 0x7f070139

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 189
    .end local v0           #notification:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    long-to-double v1, p1

    iget v3, p0, Lnitro/phonestats/core/NotificationsChecker;->unitlimit:I

    int-to-double v3, v3

    sget-wide v5, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    iget v7, p0, Lnitro/phonestats/core/NotificationsChecker;->unitlimit:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 178
    new-instance v0, Landroid/app/Notification;

    .line 180
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const v2, 0x7f07013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    invoke-direct {v0, v10, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 182
    .restart local v0       #notification:Landroid/app/Notification;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 183
    const v3, 0x7f07012d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 184
    const v4, 0x7f07013a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 186
    invoke-virtual {p3, v9, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnitro/phonestats/core/NotificationsChecker;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 56
    sget-object v0, Lnitro/phonestats/core/NotificationsChecker;->instance:Lnitro/phonestats/core/NotificationsChecker;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lnitro/phonestats/core/NotificationsChecker;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/NotificationsChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnitro/phonestats/core/NotificationsChecker;->instance:Lnitro/phonestats/core/NotificationsChecker;

    .line 60
    :cond_0
    sget-object v0, Lnitro/phonestats/core/NotificationsChecker;->instance:Lnitro/phonestats/core/NotificationsChecker;

    return-object v0
.end method

.method private readSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const v5, 0x7f07012a

    const/4 v3, 0x0

    .line 292
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useCallNotifications(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useCallNotifications:Z

    .line 293
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useSmsNotifications(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useSmsNotifications:Z

    .line 294
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useDataNotifications(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useDataNotifications:Z

    .line 295
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useCostsNotifications(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useCostsNotifications:Z

    .line 296
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useUnitNotifications(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useUnitsNotifications:Z

    .line 298
    invoke-direct {p0}, Lnitro/phonestats/core/NotificationsChecker;->useAnyNotification()Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lnitro/phonestats/core/NotificationsChecker;->useLimit:Z

    .line 302
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lnitro/phonestats/core/NotificationsChecker;->useSMSLimit:Z

    .line 303
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useUnitLimit:Z

    .line 304
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lnitro/phonestats/core/NotificationsChecker;->useCostLimit:Z

    .line 305
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getWarningThreshold(Landroid/content/Context;)D

    move-result-wide v1

    sput-wide v1, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    .line 307
    sput v3, Lnitro/phonestats/core/NotificationsChecker;->calltimelimit:I

    .line 308
    sput v3, Lnitro/phonestats/core/NotificationsChecker;->smslimit:I

    .line 309
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnitro/phonestats/core/NotificationsChecker;->costlimit:D

    .line 310
    iput v3, p0, Lnitro/phonestats/core/NotificationsChecker;->unitlimit:I

    .line 313
    :try_start_0
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getCalltimeLimit(Landroid/content/Context;)I

    move-result v1

    sput v1, Lnitro/phonestats/core/NotificationsChecker;->calltimelimit:I

    .line 314
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getSMSLimit(Landroid/content/Context;)I

    move-result v1

    sput v1, Lnitro/phonestats/core/NotificationsChecker;->smslimit:I

    .line 315
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getCostlimit(Landroid/content/Context;)D

    move-result-wide v1

    iput-wide v1, p0, Lnitro/phonestats/core/NotificationsChecker;->costlimit:D

    .line 316
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getMinuteUnits(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lnitro/phonestats/core/NotificationsChecker;->unitlimit:I

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schwelle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 320
    sget-wide v1, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    const-wide v3, 0x3f847ae147ae147bL

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    sget-wide v1, Lnitro/phonestats/core/NotificationsChecker;->threshold:D

    const-wide v3, 0x3fefae147ae147aeL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 321
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private useAnyNotification()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->useCallNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->useCostsNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->useSmsNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->useDataNotifications:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->useUnitsNotifications:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkNotifications()V
    .locals 15

    .prologue
    .line 100
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    invoke-direct {p0, v10}, Lnitro/phonestats/core/NotificationsChecker;->readSettings(Landroid/content/Context;)V

    .line 103
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    check-cast v10, Lnitro/phonestats/core/StatManager;

    invoke-virtual {v10}, Lnitro/phonestats/core/StatManager;->getRemainingMinutes()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 104
    .local v4, remainingMinutes:J
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    check-cast v10, Lnitro/phonestats/core/StatManager;

    invoke-virtual {v10}, Lnitro/phonestats/core/StatManager;->getRemainingSMS()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 105
    .local v6, remainingSms:J
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    const-string v11, "free_costs"

    invoke-interface {v10, v11}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v10

    check-cast v10, Lnitro/phonestats/core/stat/CostLimitStat;

    invoke-virtual {v10}, Lnitro/phonestats/core/stat/CostLimitStat;->getRemainingDouble()D

    move-result-wide v2

    .line 106
    .local v2, remainingCosts:D
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->model:Lnitro/phonestats/core/IStatManager;

    const-string v11, "free_units"

    invoke-interface {v10, v11}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v10

    check-cast v10, Lnitro/phonestats/core/stat/UnitLimitStat;

    invoke-virtual {v10}, Lnitro/phonestats/core/stat/UnitLimitStat;->getRemaining()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 108
    .local v8, remainingUnits:J
    invoke-direct {p0}, Lnitro/phonestats/core/NotificationsChecker;->useAnyNotification()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->lock:Z

    if-nez v10, :cond_3

    .line 110
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    .line 111
    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    check-cast v1, Landroid/app/NotificationManager;

    .line 115
    .local v1, notificationManager:Landroid/app/NotificationManager;
    iget-object v10, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const/4 v11, 0x1

    .line 116
    new-instance v12, Landroid/content/Intent;

    iget-object v13, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const-class v14, Lnitro/phonestats/Main;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v13, 0x0

    .line 115
    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 122
    .local v0, contentIntent:Landroid/app/PendingIntent;
    sget-boolean v10, Lnitro/phonestats/core/NotificationsChecker;->useLimit:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useCallNotifications:Z

    if-eqz v10, :cond_0

    .line 124
    invoke-direct {p0, v4, v5, v1, v0}, Lnitro/phonestats/core/NotificationsChecker;->checkCallNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    .line 129
    :cond_0
    sget-boolean v10, Lnitro/phonestats/core/NotificationsChecker;->useSMSLimit:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useSmsNotifications:Z

    if-eqz v10, :cond_1

    .line 131
    invoke-direct {p0, v6, v7, v1, v0}, Lnitro/phonestats/core/NotificationsChecker;->checkSMSNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    .line 137
    :cond_1
    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useCostLimit:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useCostsNotifications:Z

    if-eqz v10, :cond_2

    .line 139
    invoke-direct {p0, v2, v3, v1, v0}, Lnitro/phonestats/core/NotificationsChecker;->checkCostNotifications(DLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    .line 143
    :cond_2
    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useUnitLimit:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lnitro/phonestats/core/NotificationsChecker;->useUnitsNotifications:Z

    if-eqz v10, :cond_3

    .line 145
    invoke-direct {p0, v8, v9, v1, v0}, Lnitro/phonestats/core/NotificationsChecker;->checkUnitNotifications(JLandroid/app/NotificationManager;Landroid/app/PendingIntent;)V

    .line 158
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_3
    return-void
.end method

.method public clearNotifications()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 92
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 93
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lnitro/phonestats/core/NotificationsChecker;->clearNotifications()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->lock:Z

    .line 80
    return-void
.end method

.method public notifiyStatusBarWidget()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->widgetNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lnitro/phonestats/core/NotificationsChecker;->ctx:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 68
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x4

    iget-object v2, p0, Lnitro/phonestats/core/NotificationsChecker;->widgetNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnitro/phonestats/core/NotificationsChecker;->lock:Z

    .line 85
    return-void
.end method
