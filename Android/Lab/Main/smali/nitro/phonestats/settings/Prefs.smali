.class public Lnitro/phonestats/settings/Prefs;
.super Landroid/preference/PreferenceActivity;
.source "Prefs.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final ACTION_WIDGET_SETTINGS:Ljava/lang/String; = "action_widget_settings"

.field private static final DISABLE_ANIMATION:Ljava/lang/String; = "pref_animations_off"

.field public static final EXTRA_WIDGET_SETTINGS_WHICH:Ljava/lang/String; = "extra_widget_settings_which"

.field private static final PREF_ACTIONS:Ljava/lang/String; = "pref_actions"

.field private static final PREF_ACTIONS_IMPORTEXPORT:Ljava/lang/String; = "pref_actions_importexport"

.field private static final PREF_EXPORT_CONFIG:Ljava/lang/String; = "pref_export_config"

.field private static final PREF_EXPORT_CSV:Ljava/lang/String; = "pref_export_csv"

.field private static final PREF_EXPORT_DATA:Ljava/lang/String; = "pref_export_data"

.field private static final PREF_IMPORT_CONFIG:Ljava/lang/String; = "pref_import_config"

.field private static final PREF_IMPORT_DATA:Ljava/lang/String; = "pref_import_data"

.field private static final RESET_DB:Ljava/lang/String; = "pref_reset_db"

.field public static final RESTART_APP:I = 0x2


# instance fields
.field private model:Lnitro/phonestats/core/IStatManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnitro/phonestats/settings/Prefs;)Lnitro/phonestats/core/IStatManager;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs;->model:Lnitro/phonestats/core/IStatManager;

    return-object v0
.end method

.method private createDataPickerDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 501
    new-instance v0, Lnitro/phonestats/settings/DataPickerDialog;

    invoke-static {p0}, Lnitro/phonestats/settings/core/Settings;->getDataLimit(Landroid/content/Context;)J

    move-result-wide v2

    .line 502
    new-instance v4, Lnitro/phonestats/settings/Prefs$21;

    invoke-direct {v4, p0}, Lnitro/phonestats/settings/Prefs$21;-><init>(Lnitro/phonestats/settings/Prefs;)V

    .line 508
    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 501
    invoke-direct/range {v0 .. v5}, Lnitro/phonestats/settings/DataPickerDialog;-><init>(Landroid/content/Context;JLnitro/phonestats/settings/DataPicker$OnBytesChangedListener;Ljava/lang/String;)V

    .line 510
    .local v0, result:Landroid/app/Dialog;
    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 511
    return-object v0
.end method

.method private createManualCorrectionDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    .line 428
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 429
    .local v3, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030017

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 430
    .local v5, textEntryView:Landroid/view/View;
    const v7, 0x7f0a0083

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 431
    .local v2, calls:Landroid/widget/TextView;
    const v7, 0x7f0a0084

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 432
    .local v4, sms:Landroid/widget/TextView;
    const v7, 0x7f0a0085

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 434
    .local v6, traffic:Landroid/widget/TextView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f070076

    invoke-virtual {p0, v7}, Lnitro/phonestats/settings/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 436
    const v8, 0x7f0700ba

    invoke-virtual {p0, v8}, Lnitro/phonestats/settings/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lnitro/phonestats/settings/Prefs$19;

    invoke-direct {v9, p0, v2, v4, v6}, Lnitro/phonestats/settings/Prefs$19;-><init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 460
    const v8, 0x7f0700b9

    new-instance v9, Lnitro/phonestats/settings/Prefs$20;

    invoke-direct {v9, p0}, Lnitro/phonestats/settings/Prefs$20;-><init>(Lnitro/phonestats/settings/Prefs;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 483
    .local v0, alert:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private createMonthPickerDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 515
    new-instance v0, Lnitro/phonestats/settings/DayOfMonthChooserDialog;

    .line 516
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lnitro/phonestats/settings/Prefs$22;

    invoke-direct {v2, p0}, Lnitro/phonestats/settings/Prefs$22;-><init>(Lnitro/phonestats/settings/Prefs;)V

    .line 515
    invoke-direct {v0, p0, v1, v2}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;-><init>(Landroid/content/Context;ILnitro/phonestats/settings/NumberPicker$OnChangedListener;)V

    .line 524
    .local v0, dialog:Lnitro/phonestats/settings/DayOfMonthChooserDialog;
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07013e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 525
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lnitro/phonestats/settings/core/Settings;->getMonthBeginning(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 524
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/DayOfMonthChooserDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    return-object v0
.end method

.method private createResetDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    .line 531
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 532
    .local v3, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030020

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 533
    .local v6, textEntryView:Landroid/view/View;
    const v7, 0x7f0a00b5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 534
    .local v2, dataCheck:Landroid/widget/CheckBox;
    const v7, 0x7f0a00b4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 535
    .local v5, standartCheck:Landroid/widget/CheckBox;
    const v7, 0x7f0a00b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 537
    .local v4, interfacesCheck:Landroid/widget/CheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0700b5

    invoke-virtual {p0, v7}, Lnitro/phonestats/settings/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 539
    const v8, 0x7f0700ba

    invoke-virtual {p0, v8}, Lnitro/phonestats/settings/Prefs;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lnitro/phonestats/settings/Prefs$23;

    invoke-direct {v9, p0, v5, v2, v4}, Lnitro/phonestats/settings/Prefs$23;-><init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    .line 538
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 553
    const v8, 0x7f0700b9

    new-instance v9, Lnitro/phonestats/settings/Prefs$24;

    invoke-direct {v9, p0}, Lnitro/phonestats/settings/Prefs$24;-><init>(Lnitro/phonestats/settings/Prefs;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 561
    .local v0, alert:Landroid/app/AlertDialog;
    new-instance v7, Lnitro/phonestats/settings/Prefs$25;

    invoke-direct {v7, p0, v5, v0, v4}, Lnitro/phonestats/settings/Prefs$25;-><init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/app/AlertDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 579
    new-instance v7, Lnitro/phonestats/settings/Prefs$26;

    invoke-direct {v7, p0, v2, v0}, Lnitro/phonestats/settings/Prefs$26;-><init>(Lnitro/phonestats/settings/Prefs;Landroid/widget/CheckBox;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 592
    return-object v0
.end method

.method private premiumalyzePreference(Landroid/preference/Preference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .local v1, title:Landroid/text/Spannable;
    new-instance v0, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[PRO ONLY] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    .local v0, summary:Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 127
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v2, Lnitro/phonestats/settings/Prefs$1;

    invoke-direct {v2, p0}, Lnitro/phonestats/settings/Prefs$1;-><init>(Lnitro/phonestats/settings/Prefs;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnitro/phonestats/Main;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method private setOnClickListener()V
    .locals 20

    .prologue
    .line 144
    const-string v19, "pref_reset_db"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 145
    .local v18, resetPreference:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$2;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$2;-><init>(Lnitro/phonestats/settings/Prefs;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    const-string v19, "pref_animations_off"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 154
    .local v2, animationsPreference:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$3;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$3;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    const-string v19, "pref_forceEnglish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 164
    .local v13, forceEnglishPreference:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$4;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$4;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v19, "pref_month_beginning"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 174
    .local v17, monthBeginning:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$5;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$5;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 182
    const-string v19, "pref_traffic_free"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 183
    .local v3, dataLimit:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$6;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$6;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    const-string v19, "pref_manual_correction"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 192
    .local v16, manuelCorrection:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$7;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$7;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 200
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 203
    const-string v19, "pref_import_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 204
    .local v15, importData:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$8;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$8;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    const-string v19, "pref_import_config"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 221
    .local v14, importConfig:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$9;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$9;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    const-string v19, "pref_export_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 237
    .local v12, exportData:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$10;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$10;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 252
    const-string v19, "pref_export_config"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 253
    .local v11, exportConfig:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$11;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$11;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 269
    const-string v19, "pref_export_csv"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 270
    .local v10, exportCSV:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$12;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$12;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 286
    .end local v10           #exportCSV:Landroid/preference/Preference;
    .end local v11           #exportConfig:Landroid/preference/Preference;
    .end local v12           #exportData:Landroid/preference/Preference;
    .end local v14           #importConfig:Landroid/preference/Preference;
    .end local v15           #importData:Landroid/preference/Preference;
    :cond_0
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 288
    const-string v19, "pref_debug_interfaces"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 289
    .local v7, debugInterfaces:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$13;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$13;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    const-string v19, "pref_debug_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 303
    .local v4, debugCalls:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$14;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$14;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    const-string v19, "pref_debug_sms"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 318
    .local v8, debugSMS:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$15;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$15;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 332
    const-string v19, "pref_debug_calls_native"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 333
    .local v5, debugCallsNative:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$16;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$16;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 346
    const-string v19, "pref_debug_sms_native"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 347
    .local v9, debugSmsNative:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$17;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$17;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 360
    const-string v19, "pref_debug_history"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 361
    .local v6, debugHistory:Landroid/preference/Preference;
    new-instance v19, Lnitro/phonestats/settings/Prefs$18;

    invoke-direct/range {v19 .. v20}, Lnitro/phonestats/settings/Prefs$18;-><init>(Lnitro/phonestats/settings/Prefs;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    .end local v4           #debugCalls:Landroid/preference/Preference;
    .end local v5           #debugCallsNative:Landroid/preference/Preference;
    .end local v6           #debugHistory:Landroid/preference/Preference;
    .end local v7           #debugInterfaces:Landroid/preference/Preference;
    .end local v8           #debugSMS:Landroid/preference/Preference;
    .end local v9           #debugSmsNative:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private setValueAsSummary(Landroid/preference/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 678
    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    :cond_0
    return-void
.end method

.method private switchToCorrectScreen()V
    .locals 6

    .prologue
    .line 379
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "action_widget_settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_widget_settings_which"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 382
    .local v2, which:I
    if-lez v2, :cond_0

    .line 383
    const-string v1, ""

    .line 385
    .local v1, postfix:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 400
    :goto_0
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pref_widget"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lnitro/phonestats/settings/Prefs;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 405
    .end local v1           #postfix:Ljava/lang/String;
    .end local v2           #which:I
    :cond_0
    return-void

    .line 387
    .restart local v1       #postfix:Ljava/lang/String;
    .restart local v2       #which:I
    :pswitch_0
    const-string v1, "_1x1"

    .line 388
    goto :goto_0

    .line 390
    :pswitch_1
    const-string v1, "_2x1"

    .line 391
    goto :goto_0

    .line 393
    :pswitch_2
    const-string v1, "_3x1"

    .line 394
    goto :goto_0

    .line 396
    :pswitch_3
    const-string v1, "_4x1"

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnitro/phonestats/core/StatManager;->getInstance(Landroid/content/Context;)Lnitro/phonestats/core/IStatManager;

    move-result-object v1

    iput-object v1, p0, Lnitro/phonestats/settings/Prefs;->model:Lnitro/phonestats/core/IStatManager;

    .line 83
    invoke-static {p0}, Lnitro/phonestats/core/helper/StatsUtils;->checkEnglishForce(Landroid/content/Context;)V

    .line 85
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->addPreferencesFromResource(I)V

    .line 87
    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "pref_export_csv"

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 93
    const-string v1, "pref_import_data"

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 94
    const-string v1, "pref_import_config"

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 95
    const-string v1, "pref_export_data"

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 96
    const-string v1, "pref_export_config"

    invoke-virtual {p0, v1}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 99
    :cond_0
    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->isPremium(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_widget"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 105
    .local v0, widgetPreference:Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->premiumalyzePreference(Landroid/preference/Preference;)V

    .line 110
    .end local v0           #widgetPreference:Landroid/preference/Preference;
    :cond_1
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_debug"

    invoke-virtual {p0, v2}, Lnitro/phonestats/settings/Prefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_2
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->setOnClickListener()V

    .line 117
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->switchToCorrectScreen()V

    .line 119
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 409
    packed-switch p1, :pswitch_data_0

    .line 423
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 411
    :pswitch_1
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->createResetDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->createMonthPickerDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 415
    :pswitch_3
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->createDataPickerDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 419
    :pswitch_4
    invoke-direct {p0}, Lnitro/phonestats/settings/Prefs;->createManualCorrectionDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 623
    const-string v3, "onPause"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    .line 626
    :try_start_0
    invoke-static {}, Lnitro/phonestats/backup/WrapBackupManager;->checkAvailable()V

    .line 627
    invoke-static {}, Lnitro/phonestats/core/helper/NitroUtils;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    new-instance v2, Lnitro/phonestats/backup/WrapBackupManager;

    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lnitro/phonestats/backup/WrapBackupManager;-><init>(Landroid/content/Context;)V

    .line 629
    .local v2, wrapBackupManager:Lnitro/phonestats/backup/WrapBackupManager;
    invoke-virtual {v2}, Lnitro/phonestats/backup/WrapBackupManager;->dataChanged()V

    .line 630
    const-string v3, "BAckupManager dataChanged"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v2           #wrapBackupManager:Lnitro/phonestats/backup/WrapBackupManager;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "nitro.phonestats.action.APPWIDGET_MANUEL_UPDATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnitro/phonestats/settings/Prefs;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 642
    return-void

    .line 633
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 634
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "No backup manager avaible"

    invoke-static {v3}, Lnitro/phonestats/core/helper/NitroUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 599
    iget-object v0, p0, Lnitro/phonestats/settings/Prefs;->model:Lnitro/phonestats/core/IStatManager;

    invoke-interface {v0}, Lnitro/phonestats/core/IStatManager;->getBackupManager()Lnitro/phonestats/backup/DroidStatsBackupManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lnitro/phonestats/backup/DroidStatsBackupManager;->setHandler(Landroid/os/Handler;)V

    .line 602
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_micro_stat1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 603
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_micro_stat2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 604
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_2x1_stat1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 605
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_2x1_stat2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 606
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_3x1_stat1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 607
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_3x1_stat2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 608
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_3x1_stat3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 609
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_4x1_stat1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 610
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_4x1_stat2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 611
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_4x1_stat3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 612
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_widget_4x1_stat4"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 613
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_status_bar_widget_stat1"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 614
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_status_bar_widget_stat2"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 615
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_status_bar_widget_stat3"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 616
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_status_bar_widget_stat4"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 617
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 618
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 646
    const-string v2, "pref_widget_micro_stat1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    const-string v2, "pref_widget_micro_stat2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 648
    const-string v2, "pref_widget_2x1_stat1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    const-string v2, "pref_widget_2x1_stat2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    const-string v2, "pref_widget_3x1_stat1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 651
    const-string v2, "pref_widget_3x1_stat2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 652
    const-string v2, "pref_widget_3x1_stat3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    const-string v2, "pref_widget_4x1_stat1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    const-string v2, "pref_widget_4x1_stat2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 655
    const-string v2, "pref_widget_4x1_stat3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    const-string v2, "pref_widget_4x1_stat4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    const-string v2, "pref_status_bar_widget_stat1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    const-string v2, "pref_status_bar_widget_stat2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 659
    const-string v2, "pref_status_bar_widget_stat3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    const-string v2, "pref_status_bar_widget_stat4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    :cond_0
    invoke-virtual {p0}, Lnitro/phonestats/settings/Prefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lnitro/phonestats/settings/Prefs;->setValueAsSummary(Landroid/preference/ListPreference;)V

    .line 664
    :cond_1
    const-string v2, "pref_sms_free"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 665
    const-string v2, "pref_calltime_free"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 666
    const-string v2, "pref_units_free"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    const-string v2, "pref_units_sms_free"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    :cond_2
    const-string v0, "^[1-9]+[0-9]*$"

    .line 670
    .local v0, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, value:Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 672
    const-string v2, "No valid input for value"

    invoke-static {p0, v2}, Lnitro/phonestats/core/helper/NitroUtils;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    .end local v0           #pattern:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method
