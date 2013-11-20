.class Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;
.super Landroid/database/ContentObserver;
.source "SmsWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnitro/phonestats/core/watcher/SmsWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/core/watcher/SmsWatchService;


# direct methods
.method public constructor <init>(Lnitro/phonestats/core/watcher/SmsWatchService;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 139
    iput-object p1, p0, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    .line 140
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    const-string v0, "SMS Observer created"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private notnotifiedBefore(J)Z
    .locals 4
    .parameter "now"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notnotifiedBefore difference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lnitro/phonestats/core/watcher/SmsWatchService;->access$1()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lnitro/phonestats/core/watcher/SmsWatchService;->access$1()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1f40

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 220
    invoke-static {p1, p2}, Lnitro/phonestats/core/watcher/SmsWatchService;->access$2(J)V

    .line 221
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-static {p1, p2}, Lnitro/phonestats/core/watcher/SmsWatchService;->access$2(J)V

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Notification on SMS observer (selfChange="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 162
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, uriSMSURI:Landroid/net/Uri;
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    invoke-virtual {v0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "protocol"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 177
    .local v10, protocol:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, body:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Body of SMS: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " protocol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 190
    .local v8, now:J
    if-nez v10, :cond_2

    invoke-direct {p0, v8, v9}, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;->notnotifiedBefore(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    #calls: Lnitro/phonestats/core/watcher/SmsWatchService;->onSMSSend()V
    invoke-static {v0}, Lnitro/phonestats/core/watcher/SmsWatchService;->access$0(Lnitro/phonestats/core/watcher/SmsWatchService;)V

    .line 201
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #now:J
    .end local v10           #protocol:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_1
    return-void

    .line 193
    .restart local v6       #body:Ljava/lang/String;
    .restart local v8       #now:J
    .restart local v10       #protocol:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lnitro/phonestats/core/watcher/SmsWatchService$SMSObserver;->this$0:Lnitro/phonestats/core/watcher/SmsWatchService;

    invoke-virtual {v0}, Lnitro/phonestats/core/watcher/SmsWatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    const-string v2, "It was an SMS received (or double notification)"

    .line 193
    invoke-static {v0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortDebugToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1           #uriSMSURI:Landroid/net/Uri;
    .end local v6           #body:Ljava/lang/String;
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v8           #now:J
    .end local v10           #protocol:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
