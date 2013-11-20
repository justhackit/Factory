.class public Lnitro/phonestats/core/traffic/CronScheduler;
.super Landroid/content/BroadcastReceiver;
.source "CronScheduler.java"


# static fields
.field public static final ACTION_EXECUTE_SCHEDULED_ACTION:Ljava/lang/String; = "nitro.phonestats.ACTION_EXECUTE_SCHEDULED_ACTION"

.field public static final EXTRA_FIELD_CRON_EXPRESSION:Ljava/lang/String; = "cron.expression"

.field public static final EXTRA_FIELD_TARGET_INTENT:Ljava/lang/String; = "target.intent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static createCronScheduledIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "targetIntent"
    .parameter "cronExpression"

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, result:Landroid/content/Intent;
    const-string v1, "nitro.phonestats.ACTION_EXECUTE_SCHEDULED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "target.intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    const-string v1, "cron.expression"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    return-object v0
.end method

.method private static getNextExecutionTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "cronExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lnitro/phonestats/core/traffic/CronExpression;

    invoke-direct {v0, p0}, Lnitro/phonestats/core/traffic/CronExpression;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lnitro/phonestats/core/traffic/CronExpression;->getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "targetIntent"
    .parameter "cronExpression"

    .prologue
    .line 139
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 141
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string v2, " with data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for execution at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2}, Lnitro/phonestats/core/traffic/CronScheduler;->getNextExecutionTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 148
    const/4 v4, 0x0

    invoke-static {p1, p2}, Lnitro/phonestats/core/traffic/CronScheduler;->createCronScheduledIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 149
    const/high16 v6, 0x1000

    .line 148
    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 147
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static stopScheduledJob(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "targetIntent"

    .prologue
    .line 169
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 175
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 176
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lnitro/phonestats/core/traffic/CronScheduler;->createCronScheduledIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    .line 175
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 177
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v3, "nitro.phonestats.ACTION_EXECUTE_SCHEDULED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "target.intent"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 64
    .local v2, targetIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 66
    const-string v3, "cron.expression"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, cronExpression:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Executing scheduled job "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    invoke-static {p1, v2, v1}, Lnitro/phonestats/core/traffic/CronScheduler;->scheduleJob(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 79
    .end local v1           #cronExpression:Ljava/lang/String;
    .end local v2           #targetIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
