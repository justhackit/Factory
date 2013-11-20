.class public Lnitro/phonestats/settings/core/SettingsWidget;
.super Ljava/lang/Object;
.source "SettingsWidget.java"


# static fields
.field public static final PREF_STAUTS_BAR_WIDGET_SLOT1:Ljava/lang/String; = "pref_status_bar_widget_stat1"

.field public static final PREF_STAUTS_BAR_WIDGET_SLOT2:Ljava/lang/String; = "pref_status_bar_widget_stat2"

.field public static final PREF_STAUTS_BAR_WIDGET_SLOT3:Ljava/lang/String; = "pref_status_bar_widget_stat3"

.field public static final PREF_STAUTS_BAR_WIDGET_SLOT4:Ljava/lang/String; = "pref_status_bar_widget_stat4"

.field public static final PREF_STAUTS_BAR_WIDGET_THEME:Ljava/lang/String; = "pref_status_bar_widget_theme"

.field public static final PREF_STAUTS_BAR_WIDGET_UNITSADDED:Ljava/lang/String; = "pref_status_bar_widget_unitsadded"

.field public static final PREF_USE_STATUS_BAR_WIDGET:Ljava/lang/String; = "pref_widget_use_statusbarwidget"

.field public static final PREF_WIDGET_1X1_ONESLOT_UNITSADDED:Ljava/lang/String; = "pref_widget_1x1_oneslot_unitsadded"

.field public static final PREF_WIDGET_2X1_SLOT1:Ljava/lang/String; = "pref_widget_2x1_stat1"

.field public static final PREF_WIDGET_2X1_SLOT2:Ljava/lang/String; = "pref_widget_2x1_stat2"

.field public static final PREF_WIDGET_2X1_UNITSADDED:Ljava/lang/String; = "pref_widget_2x1_unitsadded"

.field public static final PREF_WIDGET_3X1_SLOT1:Ljava/lang/String; = "pref_widget_3x1_stat1"

.field public static final PREF_WIDGET_3X1_SLOT2:Ljava/lang/String; = "pref_widget_3x1_stat2"

.field public static final PREF_WIDGET_3X1_SLOT3:Ljava/lang/String; = "pref_widget_3x1_stat3"

.field public static final PREF_WIDGET_3X1_UNITSADDED:Ljava/lang/String; = "pref_widget_3x1_unitsadded"

.field public static final PREF_WIDGET_4X1_SLOT1:Ljava/lang/String; = "pref_widget_4x1_stat1"

.field public static final PREF_WIDGET_4X1_SLOT2:Ljava/lang/String; = "pref_widget_4x1_stat2"

.field public static final PREF_WIDGET_4X1_SLOT3:Ljava/lang/String; = "pref_widget_4x1_stat3"

.field public static final PREF_WIDGET_4X1_SLOT4:Ljava/lang/String; = "pref_widget_4x1_stat4"

.field public static final PREF_WIDGET_4X1_UNITSADDED:Ljava/lang/String; = "pref_widget_4x1_unitsadded"

.field public static final PREF_WIDGET_MICRO_SLOT1:Ljava/lang/String; = "pref_widget_micro_stat1"

.field public static final PREF_WIDGET_MICRO_SLOT2:Ljava/lang/String; = "pref_widget_micro_stat2"

.field public static final PREF_WIDGET_TRANSPARENCY:Ljava/lang/String; = "pref_widget_transparency"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get1x1Configuration(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "pref_widget_micro_stat1"

    const-string v3, "free_min"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v2, "pref_widget_micro_stat2"

    const-string v3, "free_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const-string v2, "free_min"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v2, "free_sms"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static get2x1Configuration(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "pref_widget_2x1_stat1"

    const-string v3, "free_min"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v2, "pref_widget_2x1_stat2"

    const-string v3, "free_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_0
    return-object v1

    .line 72
    :cond_0
    const-string v2, "free_min"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v2, "free_sms"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static get3x1Configuration(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "pref_widget_3x1_stat1"

    const-string v3, "free_min"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "pref_widget_3x1_stat2"

    const-string v3, "free_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v2, "pref_widget_3x1_stat3"

    const-string v3, "free_mobile_data"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    return-object v1

    .line 91
    :cond_0
    const-string v2, "free_min"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v2, "free_sms"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v2, "free_mobile_data"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static get4x1Configuration(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "pref_widget_4x1_stat1"

    const-string v3, "free_min"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v2, "pref_widget_4x1_stat2"

    const-string v3, "free_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v2, "pref_widget_4x1_stat3"

    const-string v3, "free_mobile_data"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v2, "pref_widget_4x1_stat4"

    const-string v3, "costs_total"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v1
.end method

.method public static getStatusBarWidgetConfiguration(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "pref_status_bar_widget_stat1"

    const-string v3, "free_min"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v2, "pref_status_bar_widget_stat2"

    const-string v3, "free_sms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v2, "pref_status_bar_widget_stat3"

    const-string v3, "free_mobile_data"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v2, "pref_status_bar_widget_stat4"

    const-string v3, "costs_total"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v1
.end method

.method public static getStatusBarWidgetTheme(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 160
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_status_bar_widget_theme"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getWidgetAlpha(Landroid/content/Context;)I
    .locals 5
    .parameter "applicationContext"

    .prologue
    const/16 v2, 0x64

    .line 131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "pref_widget_transparency"

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static unitsAdded1x1_OneSlot(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_widget_1x1_oneslot_unitsadded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static unitsAdded2x1(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_widget_2x1_unitsadded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static unitsAdded3x1(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_widget_3x1_unitsadded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static unitsAdded4x1(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 150
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_widget_4x1_unitsadded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static unitsAddedStatusBar(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_status_bar_widget_unitsadded"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useStatusbarWidget(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_widget_use_statusbarwidget"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
