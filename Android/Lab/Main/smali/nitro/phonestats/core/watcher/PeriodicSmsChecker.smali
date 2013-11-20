.class public Lnitro/phonestats/core/watcher/PeriodicSmsChecker;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicSmsChecker.java"


# static fields
.field private static sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    sget-object v2, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->sInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v1, "Initializing PeriodicSmsChecker.."

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->scheduleAutomaticUpdates(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->registerSharedPreferencesListener(Landroid/content/Context;)V

    .line 47
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static registerSharedPreferencesListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    sget-object v1, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v1, :cond_0

    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lnitro/phonestats/core/watcher/PeriodicSmsChecker$1;

    invoke-direct {v1, p0}, Lnitro/phonestats/core/watcher/PeriodicSmsChecker$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 94
    sget-object v1, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->sPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 96
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static scheduleAutomaticUpdates(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->backgroundServicesDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "Automatic sms checks scheduled"

    invoke-static {v1}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getUpdateIntervallSMS(Landroid/content/Context;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/high16 v8, 0x1000

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 72
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/core/helper/Updater;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v2, intentUpdate:Landroid/content/Intent;
    const-string v3, "NITRO_PHONESTATS_UPDATE_SMS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v3, "PeriodicSMSCheck delayed"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    .local v1, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    const/16 v3, 0xd

    const/16 v4, 0x3c

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 115
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 116
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {p1, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 120
    return-void
.end method
