.class Lnitro/phonestats/core/watcher/PeriodicSmsChecker$1;
.super Ljava/lang/Object;
.source "PeriodicSmsChecker.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->registerSharedPreferencesListener(Landroid/content/Context;)V
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
    iput-object p1, p0, Lnitro/phonestats/core/watcher/PeriodicSmsChecker$1;->val$context:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 83
    const-string v0, "pref_update_intervall_sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnitro/phonestats/core/watcher/PeriodicSmsChecker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnitro/phonestats/core/watcher/PeriodicSmsChecker;->scheduleAutomaticUpdates(Landroid/content/Context;)V

    .line 85
    const-string v0, "update intervall changed"

    invoke-static {v0}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
