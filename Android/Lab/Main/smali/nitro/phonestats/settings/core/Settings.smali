.class public Lnitro/phonestats/settings/core/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final ALTERNATIVE_PATTERN:Ljava/lang/String; = "pref_alternativepattern"

.field public static final BG_SERVICES_ON:Ljava/lang/String; = "pref_services"

.field public static final CORECTION_STATE:Ljava/lang/String; = "pref_correction_state"

.field public static final COSTS_CURRENCY:Ljava/lang/String; = "pref_costs_currency"

.field public static final COUNTRY_CODE:Ljava/lang/String; = "pref_country_code"

.field public static final COUNTRY_CODE_CORRECTION:Ljava/lang/String; = "pref_use_countryCodeCorrecion"

.field public static final DATA_LIMIT:Ljava/lang/String; = "pref_traffic_free"

.field public static final DATA_PRICE:Ljava/lang/String; = "pref_data_price"

.field public static final DISABLE_ANIMATION:Ljava/lang/String; = "pref_animations_off"

.field public static final FORCE_ENGLISH:Ljava/lang/String; = "pref_forceEnglish"

.field public static final IN_FAVORITES_PREFIX:Ljava/lang/String; = "pref_favorites_"

.field public static final MESSAGE_PRICE:Ljava/lang/String; = "pref_message_price"

.field public static final MIGRATED_SETTINGS:Ljava/lang/String; = "pref_migrated_settings"

.field public static final MINUTE_PRICE:Ljava/lang/String; = "pref_minute_price"

.field public static final MONTH_BEGINNING:Ljava/lang/String; = "pref_month_beginning"

.field public static final NUMBERS_CLEANED:Ljava/lang/String; = "pref_numbersCleaned"

.field public static final PREF_BASIC_FEES:Ljava/lang/String; = "pref_basic_fees"

.field public static final PREF_BILL_INCOMING:Ljava/lang/String; = "pref_bill_incoming"

.field public static final PREF_BILL_INCOMING_SMS:Ljava/lang/String; = "pref_bill_incoming_sms"

.field public static final PREF_CONNECTION_FEES:Ljava/lang/String; = "pref_connection_fees"

.field public static final PREF_COSTLIMIT:Ljava/lang/String; = "pref_costs_free"

.field public static final PREF_EXPORT_CONFIG:Ljava/lang/String; = "pref_export_config"

.field public static final PREF_EXPORT_CSV:Ljava/lang/String; = "pref_export_csv"

.field public static final PREF_EXPORT_DATA:Ljava/lang/String; = "pref_export_data"

.field public static final PREF_IMPORT_CONFIG:Ljava/lang/String; = "pref_import_config"

.field public static final PREF_IMPORT_DATA:Ljava/lang/String; = "pref_import_data"

.field public static final PREF_MANUEL_CORRECTION:Ljava/lang/String; = "pref_manual_correction"

.field public static final PREF_OLD_DATA_COUNTING:Ljava/lang/String; = "pref_old_data_counting"

.field public static final PREF_UNIT_FREE:Ljava/lang/String; = "pref_units_free"

.field public static final PREF_UNIT_SMS_FREE:Ljava/lang/String; = "pref_units_sms_free"

.field public static final PREF_UPDATE_INTERVALL_SMS:Ljava/lang/String; = "pref_update_intervall_sms"

.field public static final PREF_UPDATE_INTERVALL_TRAFFIC:Ljava/lang/String; = "pref_update_intervall_traffic"

.field public static final PREF_USE1SLOTWIDGET:Ljava/lang/String; = "pref_use1SlotWidget"

.field public static final PREF_USECOSTLIMIT:Ljava/lang/String; = "pref_costs_limit"

.field public static final PREF_USEHOURSDISPLAY:Ljava/lang/String; = "pref_useHoursDisplay"

.field public static final PREF_USE_BASIC_FEES:Ljava/lang/String; = "pref_use_basic_fees"

.field public static final PREF_USE_CONNECTION_FEES:Ljava/lang/String; = "pref_use_connection_fees"

.field public static final PREF_USE_UNIT_LIMIT:Ljava/lang/String; = "pref_unit_limit"

.field public static final PREF_USE_UNIT_NOTIFICATIONS:Ljava/lang/String; = "pref_use_unit_notification"

.field public static final SMS_LIMIT:Ljava/lang/String; = "pref_sms_free"

.field public static final THRESHOLD:Ljava/lang/String; = "pref_threshold"

.field public static final TIME_LIMIT:Ljava/lang/String; = "pref_calltime_free"

.field public static final TIMING:Ljava/lang/String; = "pref_billing_increment"

.field public static final UNIT_PRICE:Ljava/lang/String; = "pref_unit_price"

.field public static final USE_CALL_COSTS:Ljava/lang/String; = "pref_use_call_costs"

.field public static final USE_CALL_NOTIFICATIONS:Ljava/lang/String; = "pref_use_call_notification"

.field public static final USE_COSTS_NOTIFICATIONS:Ljava/lang/String; = "pref_use_costs_notification"

.field public static final USE_COSTS_OLD:Ljava/lang/String; = "pref_use_costs"

.field public static final USE_DATA_COSTS:Ljava/lang/String; = "pref_use_datacosts"

.field public static final USE_DATA_LIMIT:Ljava/lang/String; = "pref_traffic_limit"

.field public static final USE_EXTRAPOLATE:Ljava/lang/String; = "pref_estimations"

.field public static final USE_MULTI_S_M_S:Ljava/lang/String; = "pref_split_sms"

.field public static final USE_NOTIFICATIONS_OLD:Ljava/lang/String; = "pref_notification"

.field public static final USE_SMS_COSTS:Ljava/lang/String; = "pref_use_sms_costs"

.field public static final USE_SMS_NOTIFICATIONS:Ljava/lang/String; = "pref_use_sms_notification"

.field public static final USE_S_M_S_LIMIT:Ljava/lang/String; = "pref_sms_limit"

.field public static final USE_TIME_LIMIT:Ljava/lang/String; = "pref_calltime_limit"

.field public static final USE_TRAFFIC_NOTIFICATIONS:Ljava/lang/String; = "pref_use_traffic_notification"

.field public static final USE_UNICODE_SMS_SPLIT:Ljava/lang/String; = "pref_use_unicode_sms_split"

.field public static final USE_UNITS_COSTS:Ljava/lang/String; = "pref_use_unit_costs"

.field public static final WHATS_NEW_SETTING:Ljava/lang/String; = "pref_whatsnew"

.field private static lock:Ljava/lang/Object;

.field private static temp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnitro/phonestats/settings/core/Settings;->lock:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animationsDisabeled(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 521
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 522
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_animations_off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static backgroundServicesDisabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 527
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 528
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_services"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public static backupSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "path"

    .prologue
    .line 856
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/nitro.phonestats/shared_prefs/nitro.phonestats_preferences.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    .local v4, settingsFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 858
    .local v2, exportDir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, dir:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    .local v5, sgDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 861
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 863
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v6, "nitro.phonestats_preferences.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 867
    invoke-static {v4, v3}, Lnitro/phonestats/core/helper/NitroUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 868
    const-string v6, "settings backed up"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 871
    const-string v6, "settings backup error"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bilIncomingMessages(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 651
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 652
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_bill_incoming_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static billIncomingMinutes(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 645
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 646
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_bill_incoming"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static forceEnglishLanguage(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 617
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_forceEnglish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBasicFees(Landroid/content/Context;)F
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 800
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 802
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useBasicFees(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 805
    :goto_0
    return v1

    :cond_0
    const-string v2, "pref_basic_fees"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0
.end method

.method public static getCalltimeLimit(Landroid/content/Context;)I
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 230
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 232
    .local v0, calllimit:I
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useCalltimeLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    const/4 v3, 0x0

    .line 244
    :goto_0
    return v3

    .line 236
    :cond_0
    :try_start_0
    const-string v3, "pref_calltime_free"

    const-string v4, "100"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v3, v0

    .line 244
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    const v4, 0x7f07011c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getConnectionFees(Landroid/content/Context;)F
    .locals 3
    .parameter "ctx"

    .prologue
    .line 834
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 837
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_connection_fees"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getCorrectionState(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 639
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 640
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_correction_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCostlimit(Landroid/content/Context;)D
    .locals 6
    .parameter "ctx"

    .prologue
    .line 717
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 718
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-wide/16 v0, 0x0

    .line 719
    .local v0, costslimit:D
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useCostLimit(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 720
    const-wide/16 v4, 0x0

    .line 727
    :goto_0
    return-wide v4

    .line 722
    :cond_0
    :try_start_0
    const-string v4, "pref_costs_free"

    const-string v5, "20"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v4, v0

    .line 727
    goto :goto_0

    .line 723
    :catch_0
    move-exception v2

    .line 724
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v4

    const v5, 0x7f070121

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    .line 725
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "smsLimit - NumberFormatException"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getCostsCurrency(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_costs_currency"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCountryCode(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 605
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_country_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDataLimit(Landroid/content/Context;)J
    .locals 4
    .parameter "ctx"

    .prologue
    const-wide/16 v1, 0x0

    .line 576
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useDataLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 579
    :goto_0
    return-wide v1

    :cond_0
    const-string v3, "pref_traffic_free"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getDataPrice(Landroid/content/Context;)F
    .locals 7
    .parameter "ctx"

    .prologue
    .line 374
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 376
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "pref_data_price"

    const/high16 v4, 0x4000

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 381
    :goto_0
    return v3

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "pref_data_price"

    const/16 v4, 0xc8

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 380
    .local v2, price:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_data_price"

    int-to-float v5, v2

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getDataPrice(Landroid/content/Context;)F

    move-result v3

    goto :goto_0
.end method

.method public static getMessagePrice(Landroid/content/Context;)F
    .locals 7
    .parameter "ctx"

    .prologue
    .line 454
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 456
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "pref_message_price"

    const v4, 0x3e19999a

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 461
    :goto_0
    return v3

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "pref_message_price"

    const/16 v4, 0xf

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 460
    .local v2, price:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_message_price"

    int-to-float v5, v2

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMessagePrice(Landroid/content/Context;)F

    move-result v3

    goto :goto_0
.end method

.method public static getMinuteExchangeRatio(Landroid/content/Context;)D
    .locals 4
    .parameter "ctx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 750
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getCalltimeLimit(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSMSLimit(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getMinutePrice(Landroid/content/Context;)F
    .locals 7
    .parameter "ctx"

    .prologue
    .line 433
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "pref_minute_price"

    const v4, 0x3e19999a

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 440
    :goto_0
    return v3

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "pref_minute_price"

    const/16 v4, 0xf

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 439
    .local v2, price:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_minute_price"

    int-to-float v5, v2

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMinutePrice(Landroid/content/Context;)F

    move-result v3

    goto :goto_0
.end method

.method public static getMinuteUnits(Landroid/content/Context;)Ljava/lang/Long;
    .locals 6
    .parameter "ctx"

    .prologue
    .line 760
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 761
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    .line 762
    .local v2, unitlimit:J
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 763
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 772
    :goto_0
    return-object v4

    .line 765
    :cond_0
    :try_start_0
    const-string v4, "pref_units_free"

    const-string v5, "100"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 772
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v4

    const v5, 0x7f07011e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getMonthBeginning(Landroid/content/Context;)I
    .locals 3
    .parameter "ctx"

    .prologue
    .line 541
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 542
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_month_beginning"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSMSLimit(Landroid/content/Context;)I
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 209
    .local v2, smslimit:I
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useSmsLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 222
    :goto_0
    return v3

    .line 213
    :cond_0
    :try_start_0
    const-string v3, "pref_sms_free"

    const-string v4, "150"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 222
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v3

    const v4, 0x7f07011d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSMSUnits(Landroid/content/Context;)Ljava/lang/Long;
    .locals 6
    .parameter "ctx"

    .prologue
    .line 777
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 778
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    .line 779
    .local v2, unitlimit:J
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 780
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 789
    :goto_0
    return-object v4

    .line 782
    :cond_0
    :try_start_0
    const-string v4, "pref_units_sms_free"

    const-string v5, "100"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 789
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v4

    const v5, 0x7f07011f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    sget-object v1, Lnitro/phonestats/settings/core/Settings;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lnitro/phonestats/settings/core/Settings;->temp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lnitro/phonestats/settings/core/Settings;->temp:Landroid/content/SharedPreferences;

    .line 111
    :cond_0
    sget-object v0, Lnitro/phonestats/settings/core/Settings;->temp:Landroid/content/SharedPreferences;

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getUnitsCosts(Landroid/content/Context;)F
    .locals 3
    .parameter "ctx"

    .prologue
    .line 794
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 795
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_unit_price"

    const v2, 0x3e99999a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getUnitsRatio(Landroid/content/Context;)D
    .locals 4
    .parameter "ctx"

    .prologue
    .line 755
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getMinuteUnits(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSMSUnits(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getUpdateIntervallSMS(Landroid/content/Context;)J
    .locals 3
    .parameter "context"

    .prologue
    .line 677
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 678
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_update_intervall_sms"

    const-string v2, "90"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    return-wide v1
.end method

.method public static getUpdateIntervallTraffic(Landroid/content/Context;)J
    .locals 3
    .parameter "ctx"

    .prologue
    .line 671
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_update_intervall_traffic"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    return-wide v1
.end method

.method public static getWarningThreshold(Landroid/content/Context;)D
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/high16 v7, 0x4059

    .line 303
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 304
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-wide v3, 0x3fe999999999999aL

    .line 306
    .local v3, treshold:D
    :try_start_0
    const-string v5, "pref_threshold"

    const/16 v6, 0x55

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-double v5, v5

    div-double v3, v5, v7

    .line 316
    :goto_0
    return-wide v3

    .line 307
    :catch_0
    move-exception v1

    .line 311
    .local v1, e2:Ljava/lang/ClassCastException;
    :try_start_1
    const-string v5, "pref_threshold"

    const-string v6, "80"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    int-to-double v5, v5

    div-double v3, v5, v7

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v5

    const v6, 0x7f070120

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lnitro/phonestats/core/IStatManager;->postError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isDefaultFav(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 689
    const-string v0, "out_sec_payed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "out_calls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const-string v0, "in_sec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in_calls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    const-string v0, "out_sec_payed_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "out_calls_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const-string v0, "in_sec_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in_calls_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const-string v0, "sms_sent_paid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms_sent_paid_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "sms_inbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms_inbox_month"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    const/4 v0, 0x1

    .line 696
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledSettings(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .parameter "featureOnSettingsKey"
    .parameter "ctx"

    .prologue
    .line 657
    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    .local v0, prefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isFreshInstall(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 567
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 568
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 569
    .local v1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "pref_whatsnew"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    const/4 v2, 0x0

    .line 571
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isInFavorites(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "key"

    .prologue
    .line 683
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 684
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_favorites_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lnitro/phonestats/settings/core/Settings;->isDefaultFav(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static migrateSettings(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 116
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->migrateSettings3(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->migrateSettings4(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->migrateSettings5(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method private static migrateSettings3(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 177
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 180
    .local v2, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v5, "pref_use_costs"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    const-string v5, "pref_use_costs"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    .local v3, useCosts:Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 183
    const-string v6, "pref_use_sms_costs"

    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v5, "pref_use_call_costs"

    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #useCosts:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v5, "pref_use_costs"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    :cond_0
    const-string v5, "pref_notification"

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    const-string v5, "pref_notification"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    .local v4, useNotifications:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 192
    const-string v6, "pref_use_sms_notification"

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v6, "pref_use_call_notification"

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v6, "pref_use_traffic_notification"

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v5, "pref_use_costs_notification"

    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #useNotifications:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v5, "pref_notification"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method

.method private static migrateSettings4(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    .line 153
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 154
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 156
    .local v3, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void

    .line 156
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, setting:Ljava/lang/String;
    const-string v5, "pref_widget"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "pref_status"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "costs_combined"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    const-string v5, "costs_total"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static migrateSettings5(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 126
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 130
    .local v2, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "pref_old_data_counting"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->isFreshInstall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pref_whatsnew"

    const/16 v4, 0x270f

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x33

    if-lt v3, v4, :cond_1

    .line 133
    :cond_0
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 135
    :cond_1
    const-string v3, "pref_old_data_counting"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void

    .line 139
    :cond_3
    const-string v3, "pref_old_data_counting"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static restoreSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "path"

    .prologue
    .line 877
    const/4 v6, 0x0

    sput-object v6, Lnitro/phonestats/settings/core/Settings;->temp:Landroid/content/SharedPreferences;

    .line 878
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/nitro.phonestats/shared_prefs/nitro.phonestats_preferences.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 879
    .local v4, settingsFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 880
    .local v2, exportDir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, dir:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    .local v5, sgDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "nitro.phonestats_preferences.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 885
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 886
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 887
    invoke-static {v3, v4}, Lnitro/phonestats/core/helper/NitroUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 888
    const-string v6, "settings restored"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v1

    .line 890
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 891
    const-string v6, "settings restore error"

    invoke-static {v6}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setBasicFees(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "price"

    .prologue
    .line 483
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 484
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 485
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_basic_fees"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    return-void
.end method

.method public static setConnectionFees(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "price"

    .prologue
    .line 491
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 492
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_connection_fees"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method public static setCorrectionState(Landroid/content/Context;I)V
    .locals 3
    .parameter "ctx"
    .parameter "state"

    .prologue
    .line 631
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 632
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_correction_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 635
    return-void
.end method

.method public static setCostsCurrency(Landroid/content/Context;I)V
    .locals 3
    .parameter "ctx"
    .parameter "currency"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 501
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_costs_currency"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    return-void
.end method

.method public static setDataLimit(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 5
    .parameter "ctx"
    .parameter "limit"

    .prologue
    .line 590
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 591
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_traffic_free"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 594
    invoke-static {p0, p1}, Lnitro/phonestats/core/traffic/TrafficEngine;->setDataLimit(Landroid/content/Context;Ljava/lang/Long;)V

    .line 595
    return-void
.end method

.method public static setDataPrice(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "pricePerMB"

    .prologue
    .line 387
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 388
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_data_price"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    return-void
.end method

.method public static setInFavorites(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "ctx"
    .parameter "key"
    .parameter "inFavories"

    .prologue
    .line 663
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 664
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 665
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pref_favorites_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 666
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 667
    return-void
.end method

.method public static setMessagePrice(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "price"

    .prologue
    .line 467
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 468
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 469
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_message_price"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    return-void
.end method

.method public static setMinutePrice(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "price"

    .prologue
    .line 446
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_minute_price"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    return-void
.end method

.method public static setMonthBeginning(Landroid/content/Context;I)V
    .locals 3
    .parameter "ctx"
    .parameter "monthBeginning"

    .prologue
    .line 533
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 534
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_month_beginning"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    return-void
.end method

.method public static setUnitPrice(Landroid/content/Context;F)V
    .locals 3
    .parameter "ctx"
    .parameter "price"

    .prologue
    .line 475
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 476
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 477
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_unit_price"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    return-void
.end method

.method public static setUseBasicFeeFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 425
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 426
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_basic_fees"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 429
    return-void
.end method

.method public static setUseCallCostFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 358
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_call_costs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 362
    return-void
.end method

.method public static setUseConnectionFeeFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 417
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 418
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_connection_fees"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    return-void
.end method

.method public static setUseCountryCorrection(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "countryCorrection"

    .prologue
    .line 623
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 625
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_countryCodeCorrecion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    return-void
.end method

.method public static setUseDataCostFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 401
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 402
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_datacosts"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void
.end method

.method public static setUseSmsCostFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 366
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_sms_costs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    return-void
.end method

.method public static setUseUnitCostFeature(Landroid/content/Context;Z)V
    .locals 3
    .parameter "ctx"
    .parameter "useit"

    .prologue
    .line 409
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 410
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_use_unit_costs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    return-void
.end method

.method public static setWhatsNewShown(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 553
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 554
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 555
    .local v0, prefedit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_whatsnew"

    invoke-static {p0}, Lnitro/phonestats/core/helper/NitroUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    return-void
.end method

.method public static use1SlotWidget(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 707
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 708
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use1SlotWidget"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useAPNDroid(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 712
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v0

    return v0
.end method

.method public static useAlternativePatttern(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 611
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_alternativepattern"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useBasicFees(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 810
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 815
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_basic_fees"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useCallCostsFeature(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitCosts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    :goto_0
    return v1

    .line 345
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_use_call_costs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static useCallNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 257
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_call_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useCalltimeLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 296
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    :goto_0
    return v1

    :cond_0
    const-string v2, "pref_calltime_limit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static useConnectionFee(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 820
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 829
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_connection_fees"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useCostLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 732
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 733
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_costs_limit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useCostsNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 275
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_costs_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useCountryCodeCorrection(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 599
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_countryCodeCorrecion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useDataCostFeature(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 395
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_datacosts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useDataLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 584
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_traffic_limit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useDataNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 269
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_traffic_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useExtrapolateFeature(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 515
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 516
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_estimations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useHoursDisplay(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 701
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 702
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_useHoursDisplay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useMinuteExchange(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public static useMultiSMS(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 321
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_split_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useOldDataCountings(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 249
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_old_data_counting"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useSMSCostsFeature(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitCosts(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :goto_0
    return v1

    .line 352
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 353
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_use_sms_costs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static useSmsLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    :goto_0
    return v1

    :cond_0
    const-string v2, "pref_sms_limit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static useSmsNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 263
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 264
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_sms_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useUnitCosts(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useUnitLimit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 843
    :goto_0
    return v1

    .line 842
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 843
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_use_unit_costs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static useUnitLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 743
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 744
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_unit_limit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useUnitNotifications(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 281
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_use_unit_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static useUnnicodeSMSSplit(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 849
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->useMultiSMS(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 852
    :goto_0
    return v1

    .line 851
    :cond_0
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 852
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_use_unicode_sms_split"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static wasWhatsNewShown(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 548
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lnitro/phonestats/core/helper/NitroUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    const-string v3, "pref_whatsnew"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
