.class Lnitro/phonestats/settings/Prefs$15;
.super Ljava/lang/Object;
.source "Prefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnitro/phonestats/settings/Prefs;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnitro/phonestats/settings/Prefs;


# direct methods
.method constructor <init>(Lnitro/phonestats/settings/Prefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnitro/phonestats/settings/Prefs$15;->this$0:Lnitro/phonestats/settings/Prefs;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v1, p0, Lnitro/phonestats/settings/Prefs$15;->this$0:Lnitro/phonestats/settings/Prefs;

    invoke-virtual {v1}, Lnitro/phonestats/settings/Prefs;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lnitro/phonestats/core/DataProvider;->CONTENT_URI_SMS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 326
    .local v6, c:Landroid/database/Cursor;
    iget-object v1, p0, Lnitro/phonestats/settings/Prefs$15;->this$0:Lnitro/phonestats/settings/Prefs;

    const-string v2, "Sms"

    invoke-static {v1, v6, v2}, Lnitro/phonestats/core/helper/NitroUtils;->cursorToInfoDialog(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x1

    return v1
.end method
