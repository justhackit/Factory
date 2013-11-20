.class public Lnitro/phonestats/view/SmsView;
.super Lnitro/phonestats/view/StatView;
.source "SmsView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnitro/phonestats/view/StatView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lnitro/phonestats/view/StatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getMonthlyData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 3
    .parameter "mStatManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lnitro/phonestats/view/SmsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    .line 49
    .local v0, billIncomingSMS:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    const-string v2, "sms_sent_month"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v2, "sms_sent_paid_month"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v2, "sms_inbox_month"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    if-eqz v0, :cond_0

    const-string v2, "sms_inbox_paid_month"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-object v1
.end method

.method protected getTotalData(Lnitro/phonestats/core/IStatManager;)Ljava/util/List;
    .locals 3
    .parameter "mStatManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnitro/phonestats/core/IStatManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnitro/phonestats/core/stat/Stat",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lnitro/phonestats/view/SmsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnitro/phonestats/settings/core/Settings;->bilIncomingMessages(Landroid/content/Context;)Z

    move-result v0

    .line 34
    .local v0, billIncomingSMS:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, groupData:Ljava/util/List;,"Ljava/util/List<Lnitro/phonestats/core/stat/Stat<Ljava/lang/Long;>;>;"
    const-string v2, "sms_sent"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "sms_sent_paid"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v2, "sms_inbox"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    if-eqz v0, :cond_0

    const-string v2, "sms_inbox_paid"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    const-string v2, "sms_sent_month_average"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v2, "sms_sent_daily_average"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v2, "sms_sent_paid_average_characters"

    invoke-interface {p1, v2}, Lnitro/phonestats/core/IStatManager;->getStat(Ljava/lang/String;)Lnitro/phonestats/core/stat/Stat;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v1
.end method
